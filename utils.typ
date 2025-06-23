#let fix_underline_wh = state("fix_ul", (width: auto, height: auto))

// 固定长度下划线
#let fix_underline(body) = context {
  rect(
    body,
    ..fix_underline_wh.get(),
    inset: 0.45cm,
    stroke: (bottom: black + 0.5pt),
  )
}

#let justify_str(text) = {
  let chars = text.trim().split("").slice(1, -1)
  chars.join([#h(1fr)])
}
