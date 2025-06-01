#import "../style/font.typ": font, font_size

#set align(center)
#set text(font: font.黑体)

#v(3em)
// 官方学校标识 https://www.scut.edu.cn/new/9017/list.htm
#image("logo.jpg", width: 12cm)

#text(font_size.小初)[专业学位硕士学位论文]

#v(4em)

#set text(font_size.二号)

#let show_title(title: "论文题目") = {
  if title.contains("\n") {
    let (t1, t2) = title.split("\n")
    grid(
      stroke: (bottom: black),
      inset: 5pt,
      gutter: 5pt,
    )[#t1][#t2]
  } else {
    grid(
      rows: (auto, 1em),
      stroke: (bottom: black),
      inset: 5pt,
      gutter: 5pt,
    )[#title]
  }
}

#show_title(title: "论文题目")
#show_title(title: "论文\n题目")
