#import "@preview/kouhu:0.2.0": kouhu
#import "../style/font.typ": font_size, font

#show heading: set align(center)
#show heading: set text(font_size.小二, font: font.黑体)

// 小2号黑体
= 摘#h(1em)要

#v(1em)

#kouhu(length: 100)

#v(1em)

#grid(
  columns: (auto, 1fr),
  gutter: 1em,
  [*关键词：*], [Typst；论文模板；华南理工大学；学术写作],
)

#pagebreak()

#show heading: set text(font: font.宋体)

= Abstract
#v(1.5em)

#lorem(300)

#v(1em)

#grid(
  columns: (auto, 1fr),
  gutter: 1em,
  [*Keywords:*], [Typst; Thesis Template; South China University of Technology; Academic Writing],
)

#pagebreak()
