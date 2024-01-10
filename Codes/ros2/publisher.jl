using PyCall
# Import the rclpy module from ROS2 Python
rclpy = pyimport("rclpy")
str = pyimport("std_msgs.msg")

# Initialize ROS2 runtime 
rclpy.init()

# Create node
node = rclpy.create_node("my_publisher")
rclpy.spin_once(node, timeout_sec=1)

# Create a publisher, specify the message type and the topic name
pub = node.create_publisher(str.String, "infodev", 10)

# Publish the message `txt`
for i in range(1, 100)
    msg = str.String(data="Hello, ROS2 from Julia! ($(string(i)))")
    pub.publish(msg)
    txt = "[TALKER] " * msg.data 
    @info txt
    sleep(1)
end

# Cleanup
rclpy.shutdown()
node.destroy_node()

