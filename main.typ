#import "style/font.typ": font, font_size
#import "style/base.typ": base, main_body, preliminary

#set document(
  title: "华南理工大学学位论文",
  author: "作者姓名",
)

#include "cover/master.typ"

#show: base
#show: preliminary

#include "chapters/abstract.typ"

#outline(title: "目录")

#show: main_body

#include "chapters/chapter1.typ"

#include "chapters/chapter2.typ"

#include "chapters/chapter3.typ"
