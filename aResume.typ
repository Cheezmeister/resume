#set document(
  title: "Brendan Luchen",
)

#show link: underline

#set page(
  paper: "us-letter",
  margin: (x: 1cm, y: 1cm),
  footer: context [
    #set text(8pt)
    Handcrafted with #sym.suit.heart.stroked and Typst
    #h(1fr) #sym.ast.triple #h(1fr)
    Created on #datetime.today().display()
    #h(1fr) #sym.ast.triple #h(1fr)
    This document lives at #link("resume.bml.rocks")
  ]
)

#set text(
  font: "New Computer Modern",
  size: 10pt,
)

#set heading(
  //justify: true,
)

#let horiline(items, separator: sym.dot.c) = {
  let spaced-sep = [#h(1fr) #(separator) #h(1fr)]
  items.join(spaced-sep)
}


#align(center + top)[
  #grid(columns: 2, gutter: 1em, image("logo.png", width: 2.5em), [
    #title[
      #sym.floral.l
      Brendan M Luchen
      #sym.floral.r
    ]
    Senior Fullstack Engineer
  ])
]

#line(length: 100%)

#text(font: "New Computer Modern")[
#horiline((
    link("mailto:brendan@luchenlabs.com")[`brendan@luchenlabs.com`],
    link("www.bml.rocks")[`www.bml.rocks`],
    link("cheezmeister.github.io"),
    link("linkedin.com/in/Cheezmeister"),
  ), separator: sym.diamond.stroked.dot)
]

#pagebreak()

= Synopsis
= Employer
= Prior Employers
#line(length: 100%)
= Shipped Software
= Skills
= Education
#line(length: 100%)
= Past Employers


#let resume-url = "resume.bml.rocks"
#import "@preview/tiaoma:0.3.0"
#align(right + bottom)[
  #tiaoma.qrcode(resume-url, width: 3em)
]


