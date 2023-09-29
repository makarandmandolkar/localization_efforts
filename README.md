# localization_efforts

git clone --recursive https://github.com/makarandmandolkar/localization_efforts.git

move to the selected branch

git submodule init

git submodule update

colcon build --symlink-install

colcon build --packages-select <name-of-pkg>


. /usr/share/gazebo/setup.sh

source /usr/share/bash-completion/completions/git


Set the turtlebot environmental variable:

Install the Turtlebot 3 packages (Humble and older):


sudo apt install ros-humble-turtlebot3-gazebo


source /opt/ros/humble/setup.bash


export TURTLEBOT3_MODEL=waffle


export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/humble/share/turtlebot3_gazebo/models


source install/setup.bash



ros2 launch nav2_bringup tb3_simulation_launch.py headless:=False
