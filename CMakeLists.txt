cmake_minimum_required(VERSION 3.5.1)
project(subt_ign_resources)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

find_package(catkin REQUIRED
  COMPONENTS
)

find_package(ignition-gazebo4 REQUIRED)
set(IGN_GAZEBO_VER ${ignition-gazebo4_VERSION_MAJOR})

find_package(sdformat10 REQUIRED)
find_package(yaml-cpp REQUIRED)

###########
## Build ##
###########

catkin_package()

# Install all the world files
install(DIRECTORY worlds/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/../subt_ign/worlds)

# Install all the models
install(DIRECTORY models/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/../subt_ign/worlds)
