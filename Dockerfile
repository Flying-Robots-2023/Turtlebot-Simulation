# Use an official ROS environment as a parent image
FROM osrf/ros:humble-desktop

# Install Turtlebot, Turtlesim, and Gazebo packages
RUN apt-get update && apt-get install -y \
    ros-humble-turtlebot3 \
    ros-humble-turtlesim \
    ros-humble-turtlebot3-gazebo \
    ros-humble-turtlebot3-simulations \
    ros-humble-turtlebot3-teleop \
    ros-humble-turtlebot3-bringup \
    ros-humble-gazebo-ros-pkgs \
    && rm -rf /var/lib/apt/lists/*

# Set up the environment
ENV TURTLEBOT3_MODEL=burger 
# You can change the turtlebot3_model for your preference

ENV DISPLAY :0
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
SHELL ["/bin/bash", "-c"]

# Set the default command to execute
# when creating a new container
CMD ["bash"]
