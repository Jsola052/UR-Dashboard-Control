#ifndef __URROBOT_HPP__
#define __URROBOT_HPP__

#include <ur_client_library/ur/dashboard_client.h>
#include <ur_client_library/ur/ur_driver.h>
#include <ur_client_library/types.h>

class URRobot {
public:
    URRobot(const std::string &ip);
    ~URRobot();
    void execute(const std::string &command);
    // Commands
    void movej(const std::vector<float> &radians, float acceleration, float velocity);
    void movel(const std::vector<float> &cartesian_coordinates, float acceleration, float velocity);
    void movep(const std::vector<float> &cartesian_coordinates, float acceleration, float velocity);
    void powerOn();
    void powerOff();
    void releaseBreaks();
    void closeSafetyPopUp();
    void closePopUp();
    void loadProgram();
    void playProgram();
    void pauseProgram();
    void connect();
    void stopProgram();
    void saveLog();
    void unlockProtectiveStop();
    void loadInstallation();
    void shutdown();
    void isInRemoteControl();
    void reset();
    void initialize();
    void close();


private:
    std::string m_ip;
    std::unique_ptr<urcl::DashboardClient> m_dashboard;
    std::unique_ptr<urcl::UrDriver> m_driver;
    std::unique_ptr<urcl::ToolCommSetup> m_tool_comm_setup;
};

#endif