#import "./utils.typ": question, todo, wc
#show ref: it => if it.element == none { strong(it) } else if it.element.func() == terms.item {
  strong(it.element.term)
} else { strong(it) }
#show figure.caption: strong
#show figure: rect
#show quote.where(block: false): it => {
  ["] + h(0pt, weak: true) + it.body + h(0pt, weak: true) + ["]
  if it.attribution != none [ #it.attribution ]
}
#set page(numbering: "1")

#page[
  #set heading(outlined: false)
  #show title: set text(size: 2em)
  #show heading.where(level: 2): set text(size: 1.5em)
  #title[Title]
  #line(length: 100%)
  == Subtitle
  === Charlie Clift
]

#page(align(center, outline()))

#set heading(numbering: "1.")

#todo[content]

#page(bibliography("bibliography.yml", style: "harvard-cite-them-right"))
