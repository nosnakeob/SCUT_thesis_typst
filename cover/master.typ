#import "../style/font.typ": *
#import "../utils.typ": *

#set align(center)
#set text(font: font.中黑英宋)

#empty_line(3, size: font_size.四号)
// 官方学校标识 https://www.scut.edu.cn/new/9017/list.htm
#image("logo.jpg", width: 12cm)

#text(font_size.小初)[专业学位硕士学位论文]

#empty_line(4, size: font_size.四号)

#let show_title() = context {
  let title = if document.title == none {
    "论文题目"
  } else {
    document.title.text
  }.split("\n")

  // // 确保标题有两行
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

#show_title()

#set text(font_size.三号)

#empty_line(5, size: font_size.四号)
#empty_line(1)

#let info = (
  author: context if document.author.len() == 0 {
    "先辈"
  } else {
    document.author.first()
  },
  degree: "博士",
  supervisor: "李四",
  external_supervisor: "王五",
  college: "某学院",
  date: "114年5月14日",
)

#grid(
  columns: (4.57cm, 6.85cm),
  rows: 0.95cm,
  align: bottom,
  stroke: (x, y) => if x > 0 {
    (bottom: black + 0.5pt)
  },
  inset: 5pt,
  justify_str("作者姓名"), info.author,
  justify_str("学位类别"), info.degree,
  justify_str("指导教师"), info.supervisor,
  "", info.external_supervisor,
  justify_str("所在学院"), info.college,
  justify_str("论文提交日期"), info.date,
)
