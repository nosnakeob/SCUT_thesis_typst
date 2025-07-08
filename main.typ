#import "style/font.typ": *
#import "style/base.typ": *

#set document(
  title: "华南理工大学学位论文标题",
  author: "张三",
)

#show: base

#include "cover/master.typ"

#pagebreak()

#include "cover/approval.typ"

#pagebreak()

#include "cover/originality_copyright.typ"

#show: preliminary

#include "chapters/abstract.typ"

#pagebreak()

#outline(title: "目录")

#show: main_body

#include "chapters/chapter1.typ"

#include "chapters/chapter2.typ"

#include "chapters/chapter3.typ"
