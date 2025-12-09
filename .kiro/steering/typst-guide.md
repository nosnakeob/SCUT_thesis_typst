# Typst 语法指南

## 基本概念

Typst 是一个现代化的标记语言排版系统，类似 LaTeX 但更简洁快速。

### 模式切换

- **标记模式（Markup Mode）**：默认模式，直接书写文本
- **代码模式（Code Mode）**：使用 `#` 前缀调用函数和变量
- **数学模式（Math Mode）**：使用 `$` 包裹数学公式

## 基础语法

### 文本格式

```typst
// 强调（斜体）
_emphasized text_

// 加粗
*bold text*

// 代码
`inline code`

// 链接
https://typst.app/
#link("https://typst.app/")[链接文本]
```

### 标题

```typst
= 一级标题（章）
== 二级标题（节）
=== 三级标题（条）
```

### 列表

```typst
// 无序列表
- 项目一
- 项目二
  - 子项目

// 有序列表
+ 第一项
+ 第二项

// 术语列表
/ 术语: 定义
```

### 段落

空行分隔段落，无需特殊命令。

## 函数调用

### 基本语法

```typst
// 函数调用需要 # 前缀
#function-name(arg1, arg2)

// 命名参数
#function-name(name: value, other: value)

// 内容参数可以放在方括号中
#function-name(arg)[content here]

// 如果只有内容参数，可以省略圆括号
#function-name[content]
```

### 常用函数

```typst
// 图片
#image("path.png", width: 60%)

// 图表
#figure(
  image("path.png"),
  caption: [图片说明]
) <label>

// 表格
#table(
  columns: 3,
  [A], [B], [C],
  [1], [2], [3],
)

// 对齐
#align(center)[居中内容]

// 文本样式
#text(font: "SimSun", size: 12pt)[文本]
```

## Set 规则

设置默认样式，影响后续所有内容：

```typst
// 设置页面
#set page(margin: 25mm)

// 设置文本
#set text(font: "SimSun", size: 12pt)

// 设置段落
#set par(first-line-indent: 2em, justify: true)

// 设置标题
#set heading(numbering: "1.1")
```

## Show 规则

自定义元素显示方式：

```typst
// 自定义标题样式
#show heading.where(level: 1): it => {
  set text(size: 18pt, font: "SimHei")
  set align(center)
  block(it.body)
}

// 自定义特定文本
#show "Typst": name => {
  text(fill: blue, name)
}
```

## 数学公式

### 行内公式

```typst
这是行内公式 $E = m c^2$
```

### 块级公式

```typst
$ E = m c^2 $

// 多行公式
$ 
f(x) &= x^2 + 2x + 1 \
     &= (x + 1)^2
$
```

### 常用数学符号

```typst
// 上下标
$x^2$, $x_i$, $x_i^2$

// 分数
$a/b$, $(a+b)/(c+d)$

// 求和、积分
$sum_(i=1)^n i$, $integral_0^1 x dif x$

// 矩阵
$mat(
  a, b;
  c, d;
)$

// 希腊字母
$alpha$, $beta$, $gamma$, $Delta$

// 运算符
$<=, >=, !=, ->$
```

## 引用和标签

```typst
// 添加标签
= 章节标题 <chapter-label>

#figure(
  image("img.png"),
  caption: [图片]
) <fig-label>

$ E = m c^2 $ <eq-label>

// 引用
参见 @chapter-label
如 @fig-label 所示
根据 @eq-label
```

## 变量和函数定义

```typst
// 定义变量
#let name = "value"
#let number = 42

// 定义函数
#let add(a, b) = a + b

// 使用
#add(1, 2)
```

## 条件和循环

```typst
// 条件
#if condition {
  [内容]
} else {
  [其他内容]
}

// 循环
#for item in array [
  - #item
]
```

## 导入和包含

```typst
// 导入函数
#import "file.typ": function-name

// 导入包
#import "@preview/package:version": *

// 包含文件内容
#include "chapter.typ"
```

## Context 上下文

某些操作需要在 context 中执行：

```typst
#context {
  let page_num = counter(page).get().first()
  [当前页码：#page_num]
}
```

## 常见错误

### 1. 忘记 # 前缀

```typst
// 错误
image("path.png")

// 正确
#image("path.png")
```

### 2. 字符串拼接

```typst
// 错误：不能直接用 - 连接
chapter-num

// 正确：使用字符串
chapter#"-"#num
```

### 3. 内容 vs 字符串

```typst
// 内容（可包含标记）
[*bold* text]

// 字符串（纯文本）
"plain text"
```

### 4. 函数参数

```typst
// 错误：在代码模式中不需要 #
#function(#other-function())

// 正确
#function(other-function())
```

## 最佳实践

1. **使用 set 规则**：统一设置样式，避免重复
2. **模块化**：将样式、工具函数分离到不同文件
3. **使用标签**：便于交叉引用
4. **利用 context**：获取动态信息（页码、计数器等）
5. **查阅文档**：https://typst.app/docs/

## 调试技巧

```typst
// 显示变量值
#repr(variable)

// 显示类型
#type(variable)

// 条件编译
#if debug {
  [调试信息]
}
```
