#import "@preview/wordometer:0.1.5": total-words, word-count

#let debug = false

#let note(color, icon, content) = if debug [
  #box(
    rect(fill: color, text(fill: white)[
      #box(
        width: 1em,
        strong(icon),
      )
      #content
    ]),
  )<no-wc>
] else {}

#let info(content) = note(blue, "󰋼 ", content)

#let done = note(green, " ", "done")

#let todo(content) = note(red, " ", content)

#let delete(content) = note(red, "󰆴", strike(content))

#let question(content) = note(teal, " ", content)

#let wc(target, content) = word-count(
  total => [
    #content

    #info[*#total.words / #target*]
  ],
  exclude: (<no-wc>, figure),
)


