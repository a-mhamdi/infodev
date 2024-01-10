#import "Class.typ": *


#show: ieee.with(
  title: [#text(smallcaps("Lab #4: ROS2 using RCLPY in Julia"))],
  /*
  abstract: [
    #lorem(10).
  ],
  */
  authors:
  (
    (
      name: "Abdelbacet Mhamdi",
      department: [Senior-lecturer, Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "a-mhamdi",
    ),

    /*
    (
      name: "Student 1",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "abc",
    ),
    (
      name: "Student 2",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "abc",
    ),
    (
      name: "Student 3",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "abc",
    )
  */

  )
  // index-terms: (""),
  // bibliography-file: "Biblio.bib",
)

You are required to carry out this lab using the REPL as in @fig:repl.

#figure(
	image("Images/REPL.png", width: 100%, fit: "contain"),
	caption: "Julia REPL"
	) <fig:repl>
	
#exo[Minimal Publisher/Subscriber Setup][The combination of Julia and rclpy opens up opportunities for developing efficient and performant robotics applications with the benefits of ROS2s ecosystem.]

#test[Make sure to read the instructions thoroughly, follow each step precisely, and ask for clarification if needed.]

We begin first of all by sourcing our ROS2 installation as follows:
```zsh
source /opt/ros/humble/setup.zsh
```

#solution[Always start by sourcing ROS2 installation in any newly opened terminal.]

Open a _tmux_ session and write the instructions provided at your Julia REPL.

#let publisher=read("../Codes/ros2/publisher.jl")
#let subscriber=read("../Codes/ros2/subscriber.jl")

#raw(publisher, lang: "julia")

In a newly opened terminal, we need to setup a subscriber that listens to the messages being broadcasted by our previous publisher#footnote[Remember to source ROS2 installation before using it with Julia].

#raw(subscriber, lang: "julia")

The graphical tool *rqt_graph* of @fig:rqt_graph displays the flow of data between our nodes: #emph[my_publisher] and #emph[my_subscriber], through the topic we designed _infodev_. //It can be launched using the following commands:

```zsh
source /opt/ros/humble/setup.zsh
rqt_graph
```

#figure(
	image("Images/rqt_graph.png", width: 100%),
	caption: "rqt_graph",
) <fig:rqt_graph>

@fig:pub-sub depicts the publication and reception of the message _"Hello, ROS2 from Julia!"_ in a terminal. The left part of the terminal showcases the message being published, while the right part demonstrates how the message is being received and heard.

#figure(
	image("Images/pub-sub.png", width: 100%),
	caption: "Minimal publisher/subscriber in ROS2",
) <fig:pub-sub>

@fig:topic-list shows the current active topics, along their corresponding interfaces.

/*
```zsh
source /opt/ros/humble/setup.zsh
ros2 topic list -t
```
*/

#figure(
	image("Images/topic-list.png", width: 100%),
	caption: "List of topics",
) <fig:topic-list>

//#test[Some test]

