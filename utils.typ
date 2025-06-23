#let (uw, uh) = (state("uw", 0), state("uh", 0))

// 固定长度下划线
// #let fixed_underline(body, width: none, height: none) = {
//   if width == none and height == none {
//     (width, height) = (uw.get(), uh.get())
//   }

//   rect(
//     body,
//     width,
//     height,
//     inset: 0.45cm,
//     stroke: (bottom: black + 0.5pt),
//   )
// }

#let justify_str(text) = {
  let chars = text.trim().split("").slice(1, -1)
  chars.join([#h(1fr)])
}
