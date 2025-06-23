#import "../style/font.typ": font, font_size
#import "../utils.typ": justify_str

#set align(center)
#set text(font: font.黑体)
// 固定长度下划线
#set rect(inset: 0.45cm, stroke: (bottom: black + 0.5pt))

#v(3em)
// 官方学校标识 https://www.scut.edu.cn/new/9017/list.htm
#image("logo.jpg", width: 12cm)

#text(font_size.小初)[专业学位硕士学位论文]

// #fixed_underline(
//   height: 1.2cm,
//   width: 15cm,
// )[手动阀手动阀]

#v(4em)

#let show_title(title: "论文题目") = {
  if type(title) == str {
    title = title.split("\n")
  }

  // 确保标题有两行
  title = title + range(2 - title.len()).map(it => " ")

  set text(font_size.二号)

  set rect(height: 1.2cm, width: 15cm)
  grid(
    rect[#title.at(0)],
    rect[#title.at(1)],
  )
}



// #show_title(title: "论文题目")
// #show_title(title: "论文\n题目")
#show_title(title: ("论文", "题目"))

#set text(font_size.三号)
#set rect(height: 0.95cm, width: 6.85cm)

#v(5em)

#show grid.cell: set par(justify: true)


#grid(
  columns: (4.57cm, 6.85cm),
  rows: 0.95cm,
  align: horizon,
  // stroke: black + 0.5pt,
  stroke: (x, y) => if x > 0 {
    (bottom: black + 0.5pt)
  },
  inset: 8pt,
  justify_str("作者姓名"), [张三],
  justify_str("学位类别"), [sdfada],
  justify_str("指导教师"), [李四],
  "", "",
  justify_str("所在学院"), "某学院",
  justify_str("论文提交日期"), "114年514月",
)
