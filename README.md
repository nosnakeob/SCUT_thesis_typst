# 华南理工大学学位论文 Typst 模板

本项目提供基于 Typst 排版系统的华南理工大学硕士/博士学位论文模板。

## 为什么用Typst
man! latex太慢了，后期改论文改几个字编译要等半天，后面才发现 Typst 这个工具，支持实时预览，但是我都快毕业了。现在写这个项目，一方面是出于实践与学习 Typst 的兴趣，另一方面也希望探索其在学术写作中的应用潜力。

## 快速开始

1. 安装 Typst
```bash
# Windows
winget install Typst.Typst 

# macOS
brew install typst

# 其他安装方式见 https://github.com/typst/typst
```

2. vscode 安装 `Tinymist Typst` 插件

3. 克隆仓库

```bash
git clone xxx
```

4. 打开`scutthesis.typ`点击预览


## 目录结构

*   `scutthesis.typ`: 主文件，包含文档的整体结构。
*   `chapters/`: 存放各个章节的内容文件（例如 `abstract.typ`, `chapter01.typ`  等）。
*   `biblibrary/`: 存放参考文献 `.bib` 文件。
*   `Fig/`: 存放论文中使用的图片文件。
*   `cover/`: 论文封面。
* `style/`: 存放样式文件，包含论文的整体样式和格式设置。


## 参考
本项目在开发过程中参考了以下内容：

- **文件结构与格式规范**：借鉴了 [华南理工大学硕博士学位论文模板（LaTeX 版）](https://github.com/mengchaoheng/SCUT_thesis) 的组织方式；
- **Typst 语法学习与实现思路**：主要参考了 [基于 Typst 的中山大学学位论文模板](https://github.com/sysu/better-thesis) 以及 [Typst 官方文档](https://typst.app/docs/)；
- **排版依据与撰写规范**：遵循 [《华南理工大学研究生学位论文撰写规范（2022年11月修订）》](https://www2.scut.edu.cn/_upload/article/files/c0/08/65d267994112aa82e02773c97ace/e1b0121e-f005-4661-aacd-1914a036ddf5.doc) 的相关要求。

## Todo list

* [ ] 封面
* [ ] 摘要
* [ ] 目录
* [ ] 章节
* [ ] 参考文献
* [ ] 成果
* [ ] 致谢

## 注意事项

* 本模板尚处于初期开发阶段，只是搭了个架子，未完全覆盖 LaTeX 模板的所有功能和细节。
* 本人还是typst初学者，一边学一边写的，可能有很多不规范的地方。

欢迎贡献和提出改进建议！

## 许可证

本项目采用 MIT 许可证。详情请见 [LICENSE](LICENSE) 文件。