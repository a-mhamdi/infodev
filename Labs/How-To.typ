#import "Class.typ": *
#import "Timeline.typ": tml

#set document(keywords: ("Julia", "Typst"), date: auto) 

#show: ieee.with(
  title: [#text(smallcaps("Tips for Delivering an Effective Lab Report"))],
  abstract: [
   We present some guidelines to follow in order to prepare well your labs. The main programming language you are going to use to implement some general purpose applications is Julia. The codes you will develop run on top of a Docker image, ensuring a consistent and reproducible environment. You will use one these two interactive tools: Jupyter Lab or Pluto. It is preferable to write your lab reports in Typst, given the provided files. 
  ],
  authors:
  (
    (
      name: "Abdelbacet Mhamdi",
      department: [Senior-lecturer, Dept. of EE],
      organization: [Institute of Technological Studies of Bizerte --- Tunisia],
      email: "abdelbacet.mhamdi@bizerte.r-iset.tn",
      profile: "a-mhamdi"
    ),
  ),
  index-terms: ("Julia", "Typst", "GitHub", "Docker", "Lab Report"),
  bibliography-file: "Biblio.bib",
)

= Julia
The programming language we are going to learn through this module is Julia. @fig:julia shows its logo. It is chosen for:
	- its high-performance computing capabilities,
	- expressive syntax, and 
	- extensive ecosystem.
Julia is an ideal language for scientific computing, data analysis, and numerical simulations @Nagar2017 @SenGupta2020 @Lauwens2019. A quick reference guide for key concepts, syntax, and formulas is available at #highlight[#link("cheatsheet.juliadocs.org")[cheatsheet.juliadocs.org]].

#figure(
	image("Images/Julia.png", width: 30%),
	caption: [Julia logo],
) <fig:julia>

Insert your code in each lab report. The detailed explanation of the functions, along the packages you have used is a must. After each code snippet, add a screenshot that showcases your running work when applying the test provided in each exercise. 

= Typst
Consider using Typst to write your lab reports. The provided templates allow you to focus on the content and seamlessly create a professional-looking report.

Typst supports Markdown syntax, which provides a range of formatting options @Mailund2019. Here are some points to help you write your report:

+	Formatting Text:
	-	Surround a text with single asterisks '(\*)' to make it bold
	-	Use single underscores '(\_)' around your text to emphasize it
	-	To create headings, use equal signs '(=)' followed by a space at the begining of a line. The number of '(=)' symbols determines the heading level.
+	Inserting Objects:
	-	Use this syntax if you need to insert an image:
	```typ
	#figure(
		image("IMAGE_NAME.EXT", width: 100%),
		caption: [IMAGE_CAPTION],
	) <fig:LABEL>

	@fig:LABEL shows an image.
	```
	-	Use this syntax if you need to draw a table:
	```typ
	#figure(
		table(
			columns: 4,
			[Row 1], [a], [b], [c],
			[Row 2], [1], [2], [3],
  	),
  	caption: [Results],
	) <tab:LABEL>

	@tab:LABEL displays some results.
	```

+	Creating lists:
	-	Unordered list: use a hyphen '(-)' followed by a space for each list item
	-	Ordered list: use a plus sign '(+)' followed by a space for each list item
+	Code snippets:
	-	Inline code: enclose the code within backticks (\`)
	-	Block of code: use triple backticks followed by the word 'julia' to enable syntax highlighting
	#raw("```julia
using Pkg
Pkg.update()
```")

#reminder

You can leverage those features using the app's intuitive interface at the url #highlight[#link("typst.app")[typst.app]], as shown in @fig:typstapp. No installation is required, however, you may need to sign in in order to use the online editor. Keep an eye on your project size. Do not exceed $200$MB. A fully fledged documentation on the usage of Typst is available at #highlight[#link("typst.app/docs/")[typst.app/docs]].

#figure(
	image("Images/Typst-app.png", width: 100%),
	caption: [Typst app],
) <fig:typstapp>

= GitHub
Share your code on GitHub. It's a fantastic way to foster a supportive coding community while gaining exposure to different coding styles and techniques @Guthals2023 @Bell2015 @Tsitoara2020.

= Links Bundle
You may find the following links useful: 
- GitHub Repository _(@fig:github)_ \ #highlight[#link("github.com/a-mhamdi/infodev")[github.com/a-mhamdi/infodev]]
#figure(
	image("Images/github-infodev.png", width: 100%),
	caption: [GitHub repository],
) <fig:github>


- Docker Image _(@fig:docker)_ \ #highlight[#link("hub.docker.com/repository/docker/abmhamdi/infodev/general")[hub.docker.com/repository/docker/abmhamdi/infodev]]
#figure(
	image("Images/docker-infodev.png", width: 100%),
	caption: [Docker image],
) <fig:docker>


= Timeline
The following timeline is proposed to help you organize your work. It is not mandatory to follow it, but it is highly recommended to do so. The labs are designed to be completed in the order they are presented.

#block(width: 500pt, spacing: 3cm, tml)
//#rotate(-90deg)[#tml]
