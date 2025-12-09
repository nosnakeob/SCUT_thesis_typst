#import "../style/font.typ": *

// 使用 Typst 的 bibliography 功能
// 参考文献按文中出现顺序编号，符合 GB7714-87 标准

#bibliography(title: "参考文献", "../biblibrary/example.bib", style: "gb-7714-2015-numeric")
