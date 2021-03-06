%% This is the ADVANCES IN MATHEMATICS (CHINA) Chinese article document class: sxjzartcn.cls
%% Change log:
%         - 2017/06/27: created the file by Dingquan Li, email: dingquanli@pku.edu.cn
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{sxjzartcn}[2017/06/27 v0.0 ADVANCES IN MATHEMATICS (CHINA) Chinese article document class]

\newif\ifams@evenend \ams@evenendfalse
\DeclareOption{evenend}{\ams@evenendtrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{cctart}}
\PassOptionsToClass{twoside,a4paper}{cctart}
\ProcessOptions
\LoadClass{cctart}
\RequirePackage{ifpdf}
\RequirePackage{graphicx,subfigure,picins,psfrag,epstopdf}
\graphicspath{{./figs/}} % {{dir1},{dir2},{dir3}} % 图片路径
\usepackage{multirow}
\RequirePackage{amsmath,amsthm,makeidx,amssymb,amsfonts,amscd,mathrsfs,bm,headrule}
\RequirePackage[numbers,sort&compress]{natbib}\setlength{\bibsep}{0.5ex} % 缩小参考文献之间的垂直间距
\RequirePackage{xcolor} % Color for logo
\definecolor{bluecite}{HTML}{0875b7}
\RequirePackage[colorlinks,
	linkcolor=black,
	citecolor=black,
	urlcolor=black,
	pdfborder={0 0 0},
	unicode=true]{hyperref}
\input scrload.tex
\textheight 21 true cm
\textwidth 14.7 true cm
\topmargin 0pt
\oddsidemargin 0pt
\evensidemargin 0pt
\headsep 0.2 true cm
\headheight 8 true mm
\footskip 2mm
\parindent 2\ccwd
\renewcommand\baselinestretch{1.0}
\abovedisplayskip=10.0pt plus 2.0pt minus 2.0pt
\belowdisplayskip=10.0pt plus 2.0pt minus 2.0pt
\allowdisplaybreaks[4]  %%公式自动断行
\newfam\cryfam
\newfam\smbfam
\newfont{\htxt}{eufm10 scaled \magstep0}
\font\tenthxt=eufm10 scaled \magstep0 \font\tenBbb=msbm10 scaled
\magstep0 \font\tencyr=wncyr10 scaled \magstep0 \font\tenrm=cmr10
scaled \magstep0 \font\tenbf=cmb10 scaled \magstep0
\font\tenBb=msbm7 \font\tenB=msbm10 scaled \magstep3

%\def\cyr{\tencyr}
%\def\Bbb{\tenBbb}
%\def\Bb{\tenBb}
%\def\B{\tenB}
%\def\txt{\tenthxt}

%\def\ST{\songti\rm\relax}
\def\HT{\heiti\bf\relax}
%\def\FS{\fangsong\relax}
%\def\KS{\kaishu\relax}

\def\flushpar{\par\noindent}
%\def\sec#1{
%\vskip.1in \noindent{\large\bf\zihao{-4}\heiti #1} \vskip.07in}
%\def\subsec#1{
%\vskip.1in \flushpar{\bf\zihao{5}\heiti #1} \vskip.07in}
%\def\subsubsec#1{
%\vskip.07in \flushpar{\bf\zihao{5}\heiti #1} \vskip.05in}
\def\de#1{{\heiti\bf #1}\quad}
\DeclareMathOperator*{\esssup}{ess\,sup}
\DeclareMathOperator*{\essinf}{ess\,inf}



\newcommand*\EditorNote[1]{%
  \begingroup
    \long\def\@makefntext##1{\parindent 1em\noindent\hbox to 0pt{\hss$^{}$}##1}%
    \footnotetext{#1}%
  \endgroup}
\def\ps@headings{%
  \let\@oddfoot\@empty\let\@evenfoot\@empty
  \def\@evenhead{%
    \pushziti\vbox{\hbox to\textwidth{\rlap{\small\thepage}
    \hfill {\zihao{-5}\songti 数\qquad 学\qquad 进\qquad 展}
    \hfill {\small\pubvol}{\zihao{-5}\songti 卷}
  \hspace{-1mm}}\protect\vspace{2truemm}\relax
    \hrule depth0pt height0.15truemm width\textwidth}\popziti}
  \def\@oddhead{%
    \pushziti\vbox{\hbox to\textwidth{
    {\hspace{-1mm}\small\pubno}{\zihao{-5}\songti 期}\hfill
    {\small\zihao{-5}\songti \titlemark}\hfill
    \llap{\small\thepage}}
    \protect\vspace{2truemm}\relax
    \hrule depth0pt height0.15truemm width\textwidth}\popziti}
  \let\@mkboth\@gobbletwo
  \let\sectionmark\@gobble
  \let\subsectionmark\@gobble
}
\ps@headings
\newcommand*\shortmonthname[1]{%
\ifcase#1\or Jan.\or Feb.\or Mar.\or Apr.\or May\or June%
\or July\or Aug.\or Sep.\or Oct.\or Nov.\or Dec.\fi} % Jun. -> June, Jul. -> July

\newcommand*\BeginTitle{%
  \vspace*{-13mm}%
  \thispagestyle{empty}%
  \noindent \hbox to \textwidth{\small{\zihao{-5}\songti 第}%
  \pubvol{\zihao{-5}\songti 卷 第}%
  \pubno{\zihao{-5}\songti 期}%
  \hfill{\zihao{-4} 数\qquad 学\qquad进\qquad展}%
  \hfill Vol.~\pubvol, No.~\pubno} \vskip -0.5mm
  \par\noindent%
  \hbox to \textwidth{\small\pubyear{\zihao{-5}\songti年}%
  \pubmonth{\zihao{-5}\songti 月}%
  \hfill  ADVANCES IN MATHEMATICS (CHINA)
  \hfill \shortmonthname{\pubmonth}, \pubyear} \vskip -.8mm %
  \par\noindent %
  \rule[2.2mm]{\textwidth}{0.5pt}\hspace*{-\textwidth}\rule[1.5mm]{\textwidth}{0.5pt}%
  \ziju{0.025} \vspace{-.1in} \noindent {\small\hfill doi:\doino}
}

\newcommand*\CTitle[1]{%
  \vspace*{.2in}
  \begin{center}
    {\huge\bf\zihao{2}\heiti #1}
  \end{center}
}
\newcommand*\CAuthor[1]{%
\begin{center}\large\zihao{4}\fangsong#1\end{center}\vskip.02in
}
\newcommand*\CInstitution[1]{%
\baselineskip 12pt\small\zihao{-5}\songti\begin{center}(#1)\end{center}
}
\newcommand*\CAbstract[1]{%
  \begingroup\vskip.2in\narrower\zihao{-5}\small
    \indent\indent{\heiti\bf 摘要:}\fangsong\ \  #1%
  \par \endgroup}
\newcommand*\CKeywords[2][关键词]{%
  \begingroup\narrower\zihao{-5}\small
    \indent\indent{\heiti\bf #1:}\fangsong\ \ #2%
  \par\endgroup}
\newcommand*\CMRCLClass[2]{%
  \begingroup\narrower\zihao{-5}\small
    \indent\indent{\heiti\bf MR(2010)主题分类:}\ \ #1 / {\heiti\bf 中图分类号:}\ \ #2\\%
	\indent{\heiti\bf 文章标识码:}\ \ \documentcode \qquad {\heiti\zihao{-5}\bf 文章编号:}\ \ \paperid%
  \par\endgroup}
\newcommand*\EndTitle{\normalsize\songti \baselineskip 13pt \vskip.2in}

\newcommand*\ETitle[1]{%
  \vskip.4in
  \begin{center}\Large\bf #1\end{center}\vskip-.1in
}
\newcommand*\EAuthor[1]{%
\begin{center}\normalsize\zihao{5} #1\end{center}
}
\newcommand*\EInstitution[1]{%
  \begingroup\small
   \indent{({\it#1})}\vskip.15in
  \par\endgroup}
\newcommand*\EAbstract[1]{%
  \begingroup\zihao{5}\normalsize
   \indent{\heiti\bf Abstract:}\rm\ \  #1%
  \par\endgroup}
\newcommand*\EKeywords[2][Keywords]{%
  \begingroup\zihao{5}\normalsize
    \indent{\heiti\bf #1:}\rm\ \ #2%
  \par\endgroup}
  
\setcounter{section}{-1} % Section从0开始
\newcommand*\Section[2][]{%
  \edef\ams@temp{#1}
  \ifx\ams@temp\@empty\addtocounter{section}{1}
  \else\setcounter{section}{#1}\fi
 \setcounter{subsection}{0} \setcounter{equation}{0} \setcounter{theorem}{0}
 \setcounter{lemma}{0} \setcounter{property}{0} \setcounter{proposition}{0} \setcounter{question}{0} \setcounter{corollary}{0}
 \setcounter{definition}{0} \setcounter{remark}{0} \setcounter{example}{0} \setcounter{example}{0} \setcounter{exercise}{0} \setcounter{notation}{0} 
  \vskip.1in \noindent{\large\bf\zihao{-4}\heiti\thesection\ \ #2} \vskip.07in
}
\newcommand*\Subsection[2][]{%
  \edef\ams@temp{#1}
  \ifx\ams@temp\@empty\addtocounter{subsection}{1}
  \else\setcounter{subsection}{#1}\fi
  \setcounter{subsubsection}{0}
  \vskip.1in \flushpar{\bf\zihao{5}\heiti\thesubsection\ \ #2} \vskip.07in
}
\newcommand*\Subsubsection[2][]{%
  \edef\ams@temp{#1}
  \ifx\ams@temp\@empty\addtocounter{subsubsection}{1}
  \else\setcounter{subsubsection}{#1}\fi
  \vskip.07in \flushpar{\bf\zihao{5}\heiti\thesubsubsection\ \ #2} \vskip.05in
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%设置定理环境
\theoremstyle{definition}
\newtheoremstyle{mythm}{0ex}{0ex}
   {\songti}{\parindent}{\songti\bf }{}{1em}{}
%\newtheoremstyle{mythm}{1ex}{1ex}%定理环境的上下间距.
%{\CJKfamily{song}}{\parindent}{\CJKfamily{hei} \bf}{}{1em}{}%定理内容为宋体, 缩进, 定理名称为黑粗体
\theoremstyle{mythm}%设置定理环境
\newtheorem{theorem}{定理\relax}[section]

\newtheorem{lemma}{引理\relax}[section]
\newtheorem{property}{性质\relax}[section]
\newtheorem{proposition}{命题\relax}[section]
\newtheorem{question}{问题\relax}[section]
\newtheorem{corollary}{推论\relax}[section]
\newtheorem{definition}{定义\relax}[section]
\newtheorem{remark}{注\relax}[section]
\newtheorem{example}{例\relax}[section]

\newtheorem{exercise}{练习\relax}[section]
\newtheorem{assumpation}{假设\relax}[section]
\newtheorem{notation}{记号\relax}[section]

\newenvironment{Proof}[1][Proof]{\heiti\bf 证明\!\quad\rm}
{\hfill $\Box$}
%%%%% 去除定理中可选Title的括号
\makeatletter
\def\thmhead@plain#1#2#3{%
  \thmname{#1}\thmnumber{\@ifnotempty{#1}{ }\@upn{#2}}%
  \thmnote{ {\the\thm@notefont\!\!#3}}}
\let\thmhead\thmhead@plain
\makeatother

%%%%% 公式编号随节变化
\numberwithin{equation}{section} %

%%%%%%%%%%%%%%%%%%%%%%%%%%Reference
\newcommand*\Thanks[1]{%
  \vskip 8pt{\heiti\bf\relax 致谢}\quad #1\par}
\renewcommand\refname{\leftline{\large\bf\heiti\zihao{-4}参考文献}}
\newcommand\BeginRef{ \baselineskip 13pt \footnotesize \parindent=4.75mm
\begin{thebibliography}{99}}
\newcommand\EndRef{\end{thebibliography}} 
\newcommand*\REF[1]{\bibitem{#1}} 

\newcommand*\supercite[2][]{\textsuperscript{\cite[#1]{#2}}}
\newcommand*\ucite[2][]{\textsuperscript{\cite[#1]{#2}}}

\endinput
%%
%% End of file sxjzartcn.cls.
