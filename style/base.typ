#import "font.typ": font, font_size

#let base(doc) = {
  // 学位论文的页面边距上下左右各为25mm
  set page(margin: 25mm)
  counter(page).update(1)

  // 正文：小四号宋体
  set text(
    font: font.宋体,
    size: font_size.小四,
  )

  show figure.where(kind: image): set figure(supplement: "图")
  show figure.where(kind: table): set figure(supplement: "表")
  show figure.where(kind: table): set figure.caption(position: top)

  show figure.caption: it => [
    #it.supplement#context counter(heading).get().first()-#context it.counter.get().first() #it.body
  ]

  doc
}

#let preliminary(doc) = {
  set page(numbering: "I")

  doc
}

#let main_body(doc) = {
  set page(numbering: "1")

  counter(page).update(1)
  counter(heading).update(0)

  set heading(numbering: "1.1")

  show heading: it => {
    // 章、节、条三级标题为单倍行距，段前、段后各设为0.5行（即前后各空0.5行）
    set block(above: 1em * 120% * 0.75, below: 1em * 120% * 0.75)

    let (al, pat, f_size) = (left, "1.1", font_size.一号)

    if it.level == 1 {
      // 各章标题：小二号黑体，居中
      al = center
      pat = "第一章"
    } else if it.level == 2 {
      // 各节一级标题：小三号黑体，居左
      f_size = font_size.小三
    } else if it.level == 3 {
      // 各节二级标题：四号黑体，居左
      f_size = font_size.四号
    } else if it.level == 4 {
      // 各节三级标题：小四号黑体，居左
      f_size = font_size.小四
    }

    set align(al)
    set text(f_size, font: font.黑体)

    counter(heading).display(pat) + [#h(1em)] + it.body
  }

  doc
}

