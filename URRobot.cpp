#include "URRobot.hpp"

#include <cstdlib>

std::string to_string(float x)
{
    return std::to_string(x);
}

template <typename T>
std::string to_string(const std::vector<T> &values)
{
    std::string s;
    for (auto i = values.begin(); i != values.end(); ++i)
    {
        s += std::to_string(*i);
        s += (i == values.end() - 1) ? ']' : ',';
    }
    return s;
}

const std::string script_file = "../resources/external_control.urscript";
const std::string output_recipe = "../resources/rtde_output_recipe.txt";
const std::string input_recipe = "../resources/rtde_input_recipe.txt";
const std::string calibration_checksum = "calib_9273388566118883250";
const std::string program("program.urp");
const std::string installation("installation.urp");

void programStateHandler(bool program_running)
{
    // Print the text in green so we see it better
    std::cout << "\033[1;32mProgram running: " << std::boolalpha
              << program_running << "\033[0m\n"
              << std::endl;
}

URRobot::URRobot(const std::string &ip) : m_ip(ip)
{

    urcl::setLogLevel(urcl::LogLevel::INFO);

    // Making the robot ready for the program by:
    // Connect the robot Dashboard
    m_dashboard.reset(new urcl::DashboardClient(m_ip));
    if (!m_dashboard->connect())
    {
        URCL_LOG_ERROR("Could not connect to dashboard");
        std::exit(EXIT_FAILURE);
    }

    // Now the robot is ready to receive a program
    m_driver.reset(new urcl::UrDriver(m_ip, script_file, output_recipe, input_recipe, &programStateHandler, true,
                                      std::move(m_tool_comm_setup), calibration_checksum));
}

void URRobot::powerOn()
{
    // Power it on
    if (!m_dashboard->commandPowerOn())
    {
        URCL_LOG_ERROR("Could not send Power on command");
        std::exit(EXIT_FAILURE);
    }
}

void URRobot::powerOff()
{
    // Power it off
    if (!m_dashboard->commandPowerOff())
    {
        URCL_LOG_ERROR("Could not send Power off command");
        std::exit(EXIT_FAILURE);
    }
}

void URRobot::releaseBreaks()
{
    // Release the brakes
    if (!m_dashboard->commandBrakeRelease())
    {
        URCL_LOG_ERROR("Could not send BrakeRelease command");
        std::exit(EXIT_FAILURE);
    }
}

void URRobot::closeSafetyPopUp()
{
    // close safety pop up
    if (!m_dashboard->commandCloseSafetyPopup())
    {
        URCL_LOG_ERROR("Could not send closesafetyPopUp command");
        std::exit(EXIT_FAILURE);
    }
}

void URRobot::closePopUp()
{
    // close pop up
    if (!m_dashboard->commandClosePopup())
    {
        URCL_LOG_ERROR("Could not send closePopUp command");
        std::exit(EXIT_FAILURE);
    }
}

void URRobot::loadProgram()
{
    // load existing program
    if (!m_dashboard->commandLoadProgram(program))
    {
        URCL_LOG_ERROR("Could not send loadProgram command");
        std::exit(EXIT_FAILURE);
    }
}

void URRobot::playProgram()
{
    // Play loaded program
    if (!m_dashboard->commandPlay())
    {
        URCL_LOG_ERROR("Could not play program");
    }
}

void URRobot::pauseProgram()
{
    // Pause running program
    if (!m_dashboard->commandPause())
    {
        URCL_LOG_ERROR("Could not pause program");
    }
}

void URRobot::stopProgram()
{
    // stop running program
    if (!m_dashboard->commandStop())
    {
        URCL_LOG_ERROR("Could not stop program");
    }
}

void URRobot::connect()
{
    // connect to dashboard
    if (!m_dashboard->connect())
    {
        URCL_LOG_ERROR("Could not connect to dashboard");
    }
}

void URRobot::saveLog()
{
    // save log
    if (!m_dashboard->commandSaveLog())
    {
        URCL_LOG_ERROR("Could not save log");
    }
}

void URRobot::unlockProtectiveStop()
{
    // unlock protective stop
    if (!m_dashboard->commandUnlockProtectiveStop())
    {
        URCL_LOG_ERROR("Could not unlock protective stop");
    }
}

void URRobot::loadInstallation()
{
    // load installation
    if (!m_dashboard->commandLoadInstallation(installation))
    {
        URCL_LOG_ERROR("Could not load installation");
    }
}

void URRobot::shutdown()
{
    // shutdown teachpendant
    if (!m_dashboard->commandShutdown())
    {
        URCL_LOG_ERROR("Could not shutdown");
    }
}

void URRobot::isInRemoteControl()
{
    // check if it is in remote control
    if (!m_dashboard->commandIsInRemoteControl())
    {
        URCL_LOG_ERROR("Robot is not in remote control, please check");
    }
}

void URRobot::execute(const std::string &command)
{
    m_driver->sendScript(command);
}

void URRobot::reset()
{
    stopProgram();
    powerOff();
    powerOn();
    releaseBreaks();
    isInRemoteControl();
    std::cout << "Robot has reset, ready for operation." << std::endl;
}

void URRobot::initialize()
{
    connect();
    powerOn();
    releaseBreaks();
    isInRemoteControl();
    std::cout << "Robot has initialized, ready for operation." << std::endl;
}

void URRobot::close()
{
    stopProgram();
    powerOff();
    shutdown();
    std::cout << "Robot has turned off" << std::endl;
}

void URRobot::movej(const std::vector<float> &radians, float acceleration, float velocity)
{
    std::string command = "\"movej(";
    command += to_string(radians);
    command += ", a=";
    command += std::to_string(acceleration);
    command += ", v=";
    command += std::to_string(velocity);
    command += ")\"";
    // std::cout << command << std::endl;
    execute(command);
}

void URRobot::movel(const std::vector<float> &cartesian_coordinates, float acceleration, float velocity)
{
    std::string command = "\"movel(p";
    command += to_string(cartesian_coordinates);
    command += ", a=";
    command += std::to_string(acceleration);
    command += ", v=";
    command += std::to_string(velocity);
    command += ")\"";
    // std::cout << command << std::endl;
    execute(command);
}

void URRobot::movep(const std::vector<float> &cartesian_coordinates, float acceleration, float velocity)
{
    std::string command = "\"movep(p";
    command += to_string(cartesian_coordinates);
    command += ", a=";
    command += std::to_string(acceleration);
    command += ", v=";
    command += std::to_string(velocity);
    command += ")\"";
    // std::cout << command << std::endl;
    execute(command);
}

URRobot::~URRobot()
{
    m_dashboard->disconnect();
}