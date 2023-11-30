# Turtlebot Simulation in Docker

This guide provides instructions for running a Turtlebot simulation inside a Docker container. The simulation uses ROS2 Humble.

## Prerequisites

- Docker installed on your system


## Setup Instructions

### 1. Clone the GitHub Repository

First, clone the repository containing the necessary Dockerfile and other resources:

```bash
git clone <repository-url>
```

Replace `<repository-url>` with the actual URL of the GitHub repository.

### 2. Build the Docker Image

Navigate to the directory containing the Dockerfile and build the Docker image:

```bash
docker build -t ros2-humble-turtlebot .
```

This command creates a Docker image named `ros2-humble-turtlebot`.

### 3. Running the Docker Container

To run the Docker container, use the provided shell script `run.sh`. This script sets up the necessary environment for the GUI to display correctly.

Open two terminal windows. In each terminal, navigate to the directory containing `run.sh` and execute:

```bash
./run.sh
```

If the script does not execute, you may need to make it executable. Run the following command:

```bash
chmod +x run.sh
```

Then, try running `./run.sh` again.

### 4. Launch the Simulation

Once the Docker containers are running, use the two terminals to start the Turtlesim nodes.

#### In the First Terminal:

Start the Turtlesim node:

```bash
ros2 run turtlesim turtlesim_node
```

This command launches the Turtlesim GUI.

#### In the Second Terminal:

Start the Turtlesim teleoperation node:

```bash
ros2 run turtlesim turtle_teleop_key
```

This node allows you to control the Turtlebot using your keyboard. Ensure this terminal window is active to capture your keypresses.

## Troubleshooting

- Ensure that Docker is properly installed and running on your system.
- If the Turtlesim GUI does not display, check your Docker and X server configurations.
- For keyboard control, make sure the terminal running `turtle_teleop_key` is in focus.

