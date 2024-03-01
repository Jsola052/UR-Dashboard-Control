#include <iostream>

#include "URRobot.hpp"

const std::string ip = "172.16.3.114";

int main(int argc, char* argv[]) {

  URRobot robot(ip);

  // std::string command = "movel(p[-0.17438, -0.579, 0.350, 0.001, 3.14, -0.001], a=0.5, v=0.5)";

  // robot.execute(command);
  robot.reset();
  robot.close();
  
  // robot.movej({-1.57, -1.57, -1.57, -1.57, 1.57, 0}, 0.5, 0.5);
  // robot.movel({-0.17438, -0.579, 0.400, 0.001, 3.14, -0.001}, 0.5, 0.5);
  // robot.movep({-0.073, -0.579, 0.400, 0.001, 3.14, -0.001}, 0.5, 0.5);
  
  return 0;
}