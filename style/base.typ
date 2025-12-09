#import "font.typ": *
#import "@preview/cuti:0.3.0": show-cn-fakebold

// 基础文档设置
#let base(doc) = {
  // 页面边距上下左右各为25mm
  set page(margin: 25mm)

  // 实现中文假粗体
  show: show-cn-fakebold

  // 脚注格式：小五号宋体
  set footnote.entry(
    separator: line(length: 30%, stroke: 0.5pt),
    clearance: 0.5em,
    gap: 0.5em,
  )
  show footnote.entry: set text(font: font.宋体, size: font_size.小五)

  doc
}

// 前置部分（摘要、目录等）
#let preliminary(doc) = {
  set par(first-line-indent: 2em, leading: 0.65em)
  set text(font: font.宋体, size: font_size.小四)

  counter(page).update(0)
  set page(numbering: "I")

  doc
}

// 主体部分（绪论、正文、结论）
#let main_body(doc) = {
  set par(first-line-indent: 2em, leading: 0.65em) // 1.5倍行距
  set text(font: font.宋体, size: font_size.小四)

  counter(page).update(1)
  counter(heading).update(0)

  // 页眉页脚设置
  set page(
    numbering: "1",
    header: context {
      set text(font: font.宋体, size: font_size.五号)
      let page_num = counter(page).get().first()
      
      // 页眉内容
      let header_text = if calc.odd(page_num) {
        // 奇数页：章序及章标题
        let headings = query(selector(heading.where(level: 1)).before(here()))
        if headings.len() > 0 {
          let current = headings.last()
          let num = counter(heading).at(current.location()).first()
          [第#str(num)章 #current.body]
        } else {
          []
        }
      } else {
        // 偶数页：华南理工大学硕士学位论文
        [华南理工大学硕士学位论文]
      }
      
      // 显示页眉和下划线
      align(center)[
        #header_text
        #v(-0.5em)
        #line(length: 100%, stroke: 1.5pt)
      ]
    }
  )

  // 标题层次：章（第一章）、节（1.1）、条（1.1.1）
  set heading(numbering: "1.1")
  show heading.where(level: 1): set heading(numbering: "第一章")

  show heading: it => {
    // 章、节、条标题单倍行距，段前段后各0.5行
    set block(above: 0.65em, below: 0.65em)
    set par(leading: 0em, first-line-indent: 0em)

    // 根据标题级别设置对齐和字号
    let (al, f_size) = if it.level == 1 {
      (center, font_size.小二)
    } else if it.level == 2 {
      (left, font_size.小三)
    } else if it.level == 3 {
      (left, font_size.四号)
    } else {
      (left, font_size.小四)
    }

    // 一级标题另起一页
    if it.level == 1 {
      pagebreak(weak: true)
    }

    set align(al)
    set text(f_size, font: font.黑体)

    // 显示标题
    if it.numbering != none {
      block[#counter(heading).display(it.numbering)#h(1em)#it.body]
    } else {
      block[#it.body]
    }
  }

  // 图表按章编号
  show figure: it => {
    set align(center)
    
    // 图片：图在上，标题在下
    if it.kind == image {
      it.body
      v(0.5em)
      context {
        let chapter = counter(heading).get().first()
        let fig_num = counter(figure.where(kind: image)).get().first()
        set text(font: font.宋体, size: font_size.五号)
        [图 #str(chapter)-#str(fig_num) #it.caption.body]
      }
    } 
    // 表格：标题在上，表在下
    else if it.kind == table {
      context {
        let chapter = counter(heading).get().first()
        let tab_num = counter(figure.where(kind: table)).get().first()
        set text(font: font.宋体, size: font_size.五号)
        [表 #str(chapter)-#str(tab_num) #it.caption.body]
      }
      v(0.5em)
      it.body
    } 
    // 其他类型保持默认
    else {
      it
    }
  }

  // 公式按章编号
  set math.equation(numbering: it => context {
    let chapter = counter(heading).get().first()
    let eq_num = counter(math.equation).get().first()
    [(#str(chapter)-#str(eq_num))]
  })

  // 代码块样式
  show raw.where(block: true): it => {
    set text(font: font.等宽, size: font_size.小五)
    block(
      width: 100%,
      fill: rgb("#f5f5f5"),
      inset: 10pt,
      radius: 4pt,
      breakable: true,
      it
    )
  }

  // 行内代码样式
  show raw.where(block: false): it => {
    set text(font: font.等宽, size: font_size.小四)
    box(
      fill: rgb("#f5f5f5"),
      inset: (x: 3pt, y: 0pt),
      outset: (y: 3pt),
      radius: 2pt,
      it
    )
  }

  doc
}

// 结论部分（不带章号）
#let conclusion(doc) = {
  show heading.where(level: 1): set heading(numbering: none)
  doc
}

// 后置部分（参考文献、致谢等，不带章号）
#let back_matter(doc) = {
  show heading.where(level: 1): set heading(numbering: none)
  doc
}
