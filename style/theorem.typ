#import "font.typ": *

// 定理环境
// 参考 LaTeX 模板的定理环境设置

// 定义定理计数器（按章编号）
#let theorem-counter = counter("theorem")
#let definition-counter = counter("definition")
#let lemma-counter = counter("lemma")
#let corollary-counter = counter("corollary")
#let proposition-counter = counter("proposition")
#let example-counter = counter("example")
#let remark-counter = counter("remark")

// 定理环境基础函数
#let theorem-base(name, counter-obj, body, supplement: none) = {
  context {
    let chapter = counter(heading).get().first()
    counter-obj.step()
    let num = counter-obj.get().first()
    
    block(
      width: 100%,
      inset: (top: 0.5em, bottom: 0.5em),
      breakable: true,
      [
        #set text(font: font.黑体, size: font_size.小四)
        #name #chapter-#num
        #if supplement != none [
          (#supplement)
        ]
        #h(0.5em)
        #set text(font: font.宋体)
        #body
      ]
    )
  }
}

// 定理
#let theorem(body, supplement: none) = {
  theorem-base("定理", theorem-counter, body, supplement: supplement)
}

// 定义
#let definition(body, supplement: none) = {
  theorem-base("定义", definition-counter, body, supplement: supplement)
}

// 引理
#let lemma(body, supplement: none) = {
  theorem-base("引理", lemma-counter, body, supplement: supplement)
}

// 推论
#let corollary(body, supplement: none) = {
  theorem-base("推论", corollary-counter, body, supplement: supplement)
}

// 命题
#let proposition(body, supplement: none) = {
  theorem-base("命题", proposition-counter, body, supplement: supplement)
}

// 例
#let example(body, supplement: none) = {
  theorem-base("例", example-counter, body, supplement: supplement)
}

// 注
#let remark(body, supplement: none) = {
  theorem-base("注", remark-counter, body, supplement: supplement)
}

// 证明环境
#let proof(body) = {
  block(
    width: 100%,
    inset: (top: 0.5em, bottom: 0.5em),
    breakable: true,
    [
      #set text(font: font.宋体, size: font_size.小四)
      *证明：* #body #h(1fr) $square$
    ]
  )
}
