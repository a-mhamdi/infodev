#set heading(numbering: "1.")
#import "Class.typ": *
#show: ieee.with(
  title: [#text(smallcaps("Lab #3: Web Application with Genie"))],
  /*
  abstract: [
    #lorem(10).
  ],
  */
  authors:
  ( 
    (
      name: "Amdouni Aziz",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "Amdouni Aziz",
      email: "azizamdouni007@gmail.com",
    ),
     )
 // index-terms: (""),
  // bibliography-file: "Biblio.bib",
)

= Introduction
In this report, I will explain what i had done to add to the previous basic web application two extra sliders to change the phase and the offset which also modify the behaviour of the sine wave graph.
= Sine Wave Control
== Julia coding
To the previous app.jl file , i had add two inputs *phase* and *offset*. There types are Float64 and Float32 and default values are 0. Also,i had added their names after  *onchange* so we can control them as we wish.
This work is shown in code below : 
#let code=read("app.jl")
#raw(code, lang: "julia")
== HTML coding
For app.jl.html file, i had add two sliders :

=== The phase 
- Firstly , i had linked the slider's value to a variable named *ph*.
- Secondly , i had set the minimum value of the slider to $-pi$.
- Thridly , i had set the maximum value of the slider to $pi$.
- Fourthly , i had set the step increment of the slider to $pi/100$.
- In the end ,we specified that labels should be displayed on the slider.
=== The offset
- Firstly , i had linked the slider's value to a variable named *off*.
- Secondly , i had set the minimum value of the slider to $-0.5$.
- Thridly , i had set the maximum value of the slider to $1$.
- Fourthly , i had set the step increment of the slider to $0.1$.
- In the end ,i specified that labels should be displayed on the slider.
This is shown in the html code below :
#let code=read("app.jl.html")
#raw(code, lang: "html")
== Graphical interface
After checking the app.jl and app.jl.html codes ,
i had opened the terminal of vs code and opened julia 
and taped the commands below to use the GenieFramework to develop a web application.
```julia
julia> using GenieFramework
julia> cd
julia> Genie.loadapp()
julia> up() 
```
`using GenieFramework`This line imports the GenieFramework module into the Julia environment, allowing you to access the functionality provided by the Genie web framework.
`cd(`This choose the current working directory in Julia to the specified path where your web application is located.
`Genie.loadapp()`This command loads the web application defined in the current directory into the Genie framework. It sets up the necessary configurations and initializes the application.
`up()`This command starts the web server, allowing our web application to be accessible through a web browser. Once the server is up and running,we can navigate to the specified URL to interact with our web application and control any parameters .

We can now open the browser and navigate to the link #highlight[#link("http://127.0.0.1:8000")[http://127.0.0.1:8000]]. We will get the updated graphical interface where we can control now plus the amplitude and frequency of the sine wave the phase and the offset as in @fig:genie-updated.

#figure(
	image("Genie-sinewave.png", width: 100%, fit: "cover"),
	caption: "Genie -> Old Sine Wave",
) <fig:genie-webapp>

#figure(
	image("Update sine wave.png", width: 100%),
	caption: "Genie -> Updated Sine wave",
) <fig:genie-updated>

