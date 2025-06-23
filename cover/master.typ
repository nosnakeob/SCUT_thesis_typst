#import "../style/font.typ": font, font_size
#import "../utils.typ": justify_str

#set align(center)
#set text(font: font.黑体)

#v(3em)
// 官方学校标识 https://www.scut.edu.cn/new/9017/list.htm
#image("logo.jpg", width: 12cm)

#text(font_size.小初)[专业学位硕士学位论文]

#v(4em)

#let show_title(title: "论文题目") = {
  if type(title) == str {
    title = title.split("\n")
  }

  // 确保标题有两行
  title.push("")

  set text(font_size.二号)

  grid(
    rows: 1.2cm,
    columns: 15.38cm,
    align: bottom,
    inset: 5pt,
    stroke: (bottom: black + 0.5pt),
    title.at(0),
    title.at(1),
  )
}

#show_title(title: "论文题目")
// #show_title(title: "论文\n题目")
// #show_title(title: ("论文", "题目"))

#set text(font_size.三号)

#v(5em)

#grid(
  columns: (4.57cm, 6.85cm),
  rows: 0.95cm,
  align: bottom,
  stroke: (x, y) => if x > 0 {
    (bottom: black + 0.5pt)
  },
  inset: 5pt,
  justify_str("作者姓名"), [张三],
  justify_str("学位类别"), [sdfada],
  justify_str("指导教师"), [李四],
  "", "",
  justify_str("所在学院"), "某学院",
  justify_str("论文提交日期"), "114年514月",
)
