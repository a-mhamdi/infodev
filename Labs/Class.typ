// This function gets your whole document as its `body` and formats
// it as an article in the style of the IEEE.

#import "@preview/octique:0.1.0": *

#let ieee(

  // The paper's title.
  title: [Paper Title],

  // An array of authors. For each author you can specify a name,
  // department, organization, location, and email. Everything but
  // but the name is optional.
  authors: (),

  // The paper's abstract. Can be omitted if you don't have one.
  abstract: none,

  // A list of index terms to display after the abstract.
  index-terms: (),

  // The article's paper size. Also affects the margins.
  paper-size: "us-letter",

  // The path to a bibliography file if you want to cite some external
  // works.
  bibliography-file: none,

  // The paper's content.
  body
) = {
  // Set document metadata.
  set document(title: title, author: authors.map(author => author.name))

  // Set the body font.
  set text(font: "TeX Gyre Pagella", size: 10pt)

  // Configure the page.
  set page(
    paper: paper-size,
    // The margins depend on the paper size.
    margin: if paper-size == "a4" {
      (x: 41.5pt, top: 80.51pt, bottom: 89.51pt)
    } else {
      (
        x: (50pt / 216mm) * 100%,
        top: (55pt / 279mm) * 100%,
        bottom: (64pt / 279mm) * 100%,
      )
    }
  )

  // Configure equation numbering and spacing.
  set math.equation(numbering: "(1)")
  show math.equation: set block(spacing: 0.65em)

  // Configure appearance of equation references
  show ref: it => {
    if it.element != none and it.element.func() == math.equation {
      // Override equation references.
      link(it.element.location(), numbering(
        it.element.numbering,
        ..counter(math.equation).at(it.element.location())
      ))
    } else {
      // Other references as usual.
      it
    }
  }

  // Configure floats
  show figure.where(
   kind: table
  ): set figure.caption(position: top)

  // RAW THEME
  set raw(theme: "Themes/Dracula.tmTheme")
  show raw: it => block(
 	fill: rgb("#1d2433"),
  	inset: 8pt,
  	radius: 5pt,
  	text(fill: rgb("#a2aabc"), it)
  )

  // Configure lists.
  set enum(indent: 10pt, body-indent: 9pt)
  set list(indent: 10pt, body-indent: 9pt)

  set page(footer: [
  *ISET Bizerte*
  #h(1fr)
  #context counter(page).display(
    "— 1/1 —",
    both: true,
  )
])

  // Configure headings.
  set heading(numbering: "I.A.1.")
  show heading: it => context {
    // Find out the final number of the heading counter.
    let levels = counter(heading).at(here())
    let deepest = if levels != () {
      levels.last()
    } else {
      1
    }

    set text(10pt, weight: 400)
    if it.level == 1 [
      // First-level headings are centered smallcaps.
      // We don't want to number of the acknowledgment section.
      #let is-ack = it.body in ([Acknowledgment], [Acknowledgement])
      #set align(center)
      #set text(if is-ack { 10pt } else { 12pt })
      #show: smallcaps
      #v(20pt, weak: true)
      #if it.numbering != none and not is-ack {
        numbering("I.", deepest)
        h(7pt, weak: true)
      }
      #it.body
      #v(13.75pt, weak: true)
    ] else if it.level == 2 [
      // Second-level headings are run-ins.
      #set par(first-line-indent: 0pt)
      #set text(style: "italic")
      #v(10pt, weak: true)
      #if it.numbering != none {
        numbering("A.", deepest)
        h(7pt, weak: true)
      }
      #it.body
      #v(10pt, weak: true)
    ] else [
      // Third level headings are run-ins too, but different.
      #if it.level == 3 {
        numbering("1)", deepest)
        [ ]
      }
      _#(it.body):_
    ]
  }

  // Display the paper's title.
  //set page(columns: 1)
  v(3pt, weak: true)
  align(center, text(18pt, title))
  v(8.35mm, weak: true)

  // Display the authors list.
  for i in range(calc.ceil(authors.len() / 3)) {
    let end = calc.min((i + 1) * 3, authors.len())
    let is-last = authors.len() == end
    let slice = authors.slice(i * 3, end)
    grid(
      columns: slice.len() * (1fr,),
      gutter: 12pt,
      ..slice.map(author => align(center, {
        text(12pt, author.name)
        if "department" in author [
          \ #emph(author.department)
        ]
        if "organization" in author [
          \ #emph(author.organization)
        ]
        if "email" in author [
          \ #link("mailto:" + author.email)[#emph(author.email)]
        ]
        if "profile" in author [ 
          \ #link("https://www.github.com/" + author.profile)[#octique-inline("mark-github") #emph(author.profile)]
        ]
      }))
    )

    if not is-last {
      v(16pt, weak: true)
    }
  }
  v(40pt, weak: true)

	
	

  // Start two column mode and configure paragraph properties.

  show: columns.with(2, gutter: 12pt)
  //set page(columns: 2)
  

  
  set par(justify: true, spacing: 0.65em)

  // Display abstract and index terms.
  if abstract != none [
    #set text(weight: 700)
    #h(1em) _Abstract_ --- #abstract

    #if index-terms != () [
      #h(1em)_Index terms_ --- #index-terms.join(", ")
    ]
    #v(2pt)
  ]

  // Display the paper s contents.
  body


  // Display bibliography.
  if bibliography-file != none {
    show bibliography: set text(8pt)
    bibliography(bibliography-file, title: text(10pt)[References], style: "ieee")
  }

}

// EXO
#set page(height: 100pt)
#let c = counter("exo")
#let exo(tlt, txt) = block[
  #c.step()
  #rect(fill: red, radius: 5pt)[*Task #context c.display(): #tlt *] 
  #rect(fill: luma(221))[#txt]
]

// SOLUTION
#let solution(sol) = block[
  #rect(fill: olive)[#sol]
]

// PERSONALIZE FIGURE
/*
#let fig(imgLoc, imgCap) = figure(
  image(#str(<imgLoc>), width: 100%),
  caption: [#imgCap],
)
*/
//#fig["<< IMAGE_NAME.EXT >>"][<< CAPTION >>]

// TEST SCENARIO
#let test(tst) = [
#box(
	height: 25pt,
	image("Images/attention.png", width: 10%)
)
#tst
]

// REMINDER
#let reminder = align(center + bottom)[
	#image("Images/reminder.png")
	#rect[*#text(smallcaps("In each document, you have to insert well annotated screenshots of your code after being executed."))*]
	]
	
/* TEMPLATE 
#exo[Title][Content.]

```julia
# WRITE YOUR CODE HERE
```

#test[Some test]
*/
