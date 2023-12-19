#import "class.typ": *
#import "timeline.typ": tml

#show: ieee.with(
  title: [#text(smallcaps("Tips for Delivering an Effective Lab Report"))],
  abstract: [
   We present here some guideline to follow in order to prepare well your labs. It is preferable to write your lab reports in Typst, given the provided files.
  ],
  authors:
  (
    (
      name: "Abdelbacet Mhamdi",
      department: [Senior-lecturer, Dept. of EE],
      organization: [Higher Institute of Technological Studies of Bizerte --- Tunisia],
      email: "abdelbacet.mhamdi@bizerte.r-iset.tn",
		profile: "a-mhamdi"
    ),
  ),
  index-terms: ("Julia", "Typst", "Lab Report"),
  // bibliography-file: "refs.bib",
)

= Julia
The programming language we are going to learn through this module is called Julia. It is chosen for:
	- its high-performance computing capabilities,
	- expressive syntax, and 
	- extensive ecosystem.
Julia is an ideal language for scientific computing, data analysis, and numerical simulations.

= Typst
Consider using Typst to write your lab reports. The provided templates allow you to focus on the content and seamlessly create a professional-looking report.

Typst supports Markdown syntax, which provides a range of formatting options. Here are some points to help you write your report:

+	Formatting Text:
	-	Surround a text with double asterisks `**` to make it bold
	-	Use single asterisks `*` or underscores `_` around your text to emphasize it
	-	To create headings, use equal signs `=` followed by a space at the begining of aline. The number of `=` symbols determines the heading level.
+	Inserting Images:
	-	Use the syntax `abc` to insert an image.
+	Creating lists:
	-	Unordered list:
	-	Ordered list:
+	Code snippets:
	-	Inline code: enclose the code within backticks \`
	-	Block of code: use triple backticks followed by the programming language name to enable syntax highlighting

You can leverage those features using the app's intuitive interface at the following url: #highlight[#link("typst.app")[typst.app]]. No installation is required, however, you may need to sign in in order to use the online editor. Keep an eye on your project size. Do not exceed $200$MB. A fully fledged documentation on the usage of Typst is available through this link: #highlight[#link("typst.app/docs/")[typst.app/docs]].

= GitHub
Share your code on GitHub. It's a fantastic way to foster a supportive coding community while gaining exposure to different coding styles and techniques.

= Links Bundle
You may find the following links useful: 
- GitHub Repository \ #highlight[#link("github.com/a-mhamdi/infodev")[github.com/a-mhamdi/infodev]]
- Docker Image: \ #highlight[#link("hub.docker.com/repository/docker/abmhamdi/infodev/general")[hub.docker.com/repository/docker/abmhamdi/infodev]]

= Timeline
The following timeline is proposed to help you organize your work. It is not mandatory to follow it, but it is highly recommended to do so. The labs are designed to be completed in the order they are presented.

#block(width: 500pt, spacing: 3cm, tml)

