#import "@preview/zh-kit:0.1.0": *

= 常用环境及参考文献设置
强烈建议在使用公式、表格、定理环境时进行百度，没必要研究各种用法，只需要知道自己需要什么。因本人的论文所用表格较少，因而对表格不是很熟悉，本章对表格的介绍相应的较少。本章仅介绍本人在论文撰写过程中常用的环境以及参考文献设置。

== 图

使用如下代码放置独立成行的图片，效果如图@one_DFUAV 所示

#figure(
  image("../Fig/DFUAV_f31.png"),
  caption: "涵道风扇式无人机",
) <one_DFUAV>

#figure(
  image("../Fig/DFUAV_f31.png"),
  caption: "涵道风扇式无人机",
)

== 表
本节仅展示使用常见的三线表

#figure(caption: "无人机清单", table(
  columns: 4,
  stroke: none,
  table.hline(),
  "参数符号", "数值", "参数符号", "数值",
  table.hline(),
  $I_x$, "054593", $I_y$, [0.17045],
  $l_1$, [0.0808 m], $l_2$, [0.175 m],
  $l_4$, [0.2415 m], $l_5$, [0.1085 m],
  table.hline(),
)) <one_table>

#figure(caption: "无人机清单", table(
  columns: 4,
  stroke: none,
  table.hline(),
  "参数符号", "数值", "参数符号", "数值",
  table.hline(),
  $I_x$, "054593", $I_y$, [0.17045],
  $l_1$, [0.0808 m], $l_2$, [0.175 m],
  $l_4$, [0.2415 m], $l_5$, [0.1085 m],
  table.hline(),
))
