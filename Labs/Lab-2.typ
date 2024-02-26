#import "Class.typ": *


#show: ieee.with(
  title: [#text(smallcaps("Lab #2: Graph Control in Makie"))],
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

= Topic
The main topic of this lab is to manipulate the sine wave parameters, namely: amplitude, frequency and phase, in *Makie*, which is an interactive graphics library that allows for the creation and manipulation of high-quality visualizations. 

#exo[Case of Sine Wave][Consider the code shown hereafter, in which we cant to control and dynamically update the _amplitude_, _frequency_ and _phase_ of a sine wave. Those settings are represented by reactive variables, called *#text(smallcaps("Observables"))*. The resulting interactive graph is shown in @fig:makie-sinewave. By changing each slider, we automatically update and trigger some actions _(e.g., y-limits)_ in response to changes in its value.]


#let code=read("../Codes/anim-graphs.jl")
#raw(code, lang: "julia")

#figure(
	image("Images/Makie-sinewave.png", width: 100%),
	caption: "Makie -> Sine wave",
) <fig:makie-sinewave>



#test[You are asked to add formatted annotations to the:
	+ amplitude slider:
		- The word _Amplitude_ to the left
		- The corresponding value to the right.
	+ frequency slider
		- The word _Frequency_ to the left
		- The corresponding value to the right, along with the unit of measure.
	+ phase slider
		- The word _Phase_ to the left
		- The corresponding value to the right, along with the unit of measure.
]
