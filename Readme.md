# 数学进展期刊模板sxjzartcn.cls  & sxjzarten.cls
## 章节
```latex
\Section{}
\Subsection{}
\Subsubsection{}
```
## 定理环境
```latex
\begin{theorem}[{\cite[定理A]{文献1}}]
\end{theorem}
```
类似地，`lemma`,`property`,`proposition`,`question`,`corollary`,`definition`,`remark`,`example`,`exercise`,`assumpation`,`notation`等

### 证明
```latex
\begin{Proof}
\end{Proof}
```

## 引用
### 参考文献的引用
```latex
\cite{文献1}
\cite[定理A]{文献1}
\supercite{文献1} or \ucite{文献1} 引用在上标的位置
\supercite{文献1}{定理A}
```

### 公式图表等的引用
```latex
\label{} % 标记
\ref{} % 引用
```