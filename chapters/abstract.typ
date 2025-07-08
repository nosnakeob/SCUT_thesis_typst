#import "@preview/zh-kit:0.1.0": *
#import "../style/font.typ": *
#import "../utils.typ": *

#set text(font_size.小四, font: font.宋体)
#show heading: set align(center)
#show heading: set text(font_size.小二, font: font.黑体)

// 小2号黑体
= 摘#h(1em)要

#empty_line(1)

#zhlorem(300)

#empty_line(1)

#grid(
  columns: 2,
  gutter: 1em,
  [*关键词：*], [Typst；论文模板；华南理工大学；学术写作],
)

#pagebreak()

#show heading: set text(font: font.宋体)

= Abstract
#empty_line(1.5)

#lorem(300)

#v(1em)

#grid(
  columns: 2,
  gutter: 1em,
  [*Keywords:*], [Typst; Thesis Template; South China University of Technology; Academic Writing],
)
