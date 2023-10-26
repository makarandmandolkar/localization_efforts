#!/bin/bash

# Define your repository URL and branch
REPO_URL="https://github.com/makarandmandolkar/localization_efforts.git"
BRANCH="sorla_localization_humble"

# Clone the repository and its submodules recursively
git clone --recursive $REPO_URL
cd localization_efforts
git checkout $BRANCH

# Initialize and update submodules
git submodule init
git submodule update

# Build the workspace using colcon
colcon build --symlink-install
# colcon build --packages-select

# Source Gazebo setup script
source /usr/share/gazebo/setup.sh

# Source git setup script
source /usr/share/bash-completion/completions/git

# Set the turtlebot environmental variable
export TURTLEBOT3_MODEL=waffle
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/humble/share/turtlebot3_gazebo/models

# Source the ROS 2 workspace setup script
source install/setup.bash

# Launch the ROS 2 launch file
ros2 launch nav2_bringup tb3_simulation_launch.py headless:=False
