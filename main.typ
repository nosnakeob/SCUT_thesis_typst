#import "style/font.typ": *
#import "style/base.typ": *

#set document(
  title: "华南理工大学学位论文标题",
  author: "张三",
)

#show: base

// 封面
#include "cover/master.typ"
#pagebreak()

// 英文内封（如需要可添加）
// #include "cover/english_cover.typ"
// #pagebreak()

// 提名页（如需要可添加）
// #include "cover/nomination.typ"
// #pagebreak()

// 原创性声明和版权使用授权书
#include "cover/originality_copyright.typ"
#pagebreak()

// 前置部分
#show: preliminary

// 中英文摘要
#include "chapters/abstract.typ"
#pagebreak()

// 目录
#include "chapters/outline.typ"
#pagebreak()

// 主体部分
#show: main_body

// 绪论
#include "chapters/chapter1.typ"

// 正文章节
#include "chapters/chapter2.typ"
#include "chapters/chapter3.typ"

// 结论（不带章号）
#show: conclusion
#include "chapters/conclusion.typ"

// 后置部分
#show: back_matter

// 参考文献
#include "chapters/references.typ"
#pagebreak()

// 攻读学位期间取得的研究成果
#include "chapters/achievements.typ"
#pagebreak()

// 致谢
#include "chapters/acknowledgements.typ"
