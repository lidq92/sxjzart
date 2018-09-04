%% This is the ADVANCES IN MATHEMATICS (CHINA) English article document class: sxjzarten.cls
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
\ProvidesClass{sxjzarten}[2017/06/27 v0.0 ADVANCES IN MATHEMATICS (CHINA) English article document class]

\newif\ifams@evenend \ams@evenendfalse
\DeclareOption{evenend}{\ams@evenendtrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{cctart}}
\PassOptionsToClass{twoside,a4paper}{cctart}
\ProcessOptions
\LoadClass{cctart}
\RequirePackage{ifpdf}
\RequirePackage{graphicx,subfigure,picins,psfrag,epstopdf}
\graphicspath{{./figs/}} % {{dir1},{dir2},{dir3}} % figure path
\RequirePackage{amsmath,amsthm,makeidx,amssymb,amsfonts,amscd,mathrsfs,bm,headrule}
\RequirePackage[numbers,sort&compress]{natbib}
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
\allowdisplaybreaks[4]  %%
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
    \hfill \small\quad ADVANCES IN MATHEMATICS (CHINA)
    \hfill \small Vol.\ {\small\pubvol}\!\!
    \llap{}}\protect\vspace{2truemm}\relax
    \hrule depth0pt height0.15truemm width\textwidth}\popziti}
  \def\@oddhead{%
    \pushziti\vbox{\hbox to\textwidth{\rlap{}
    \small \!\! No.\ {\small\pubno}\hfill
    {\small\zihao{-5}\songti \titlemark\quad}\hfill
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
\newcommand*\ETitle[1]{%
  \vspace*{.2in}
  \begin{center}\Large\heiti\bf\zihao{2} #1\end{center}\vskip.15in
}
\newcommand*\EAuthor[1]{%
\begin{center}\large\fangsong\zihao{4}#1\end{center}\vskip.12in
}
\newcommand*\EInstitution[2]{%
\baselineskip 12pt\hspace{#2}{\small({\it #1})}\vskip.15in
}
\newcommand*\EAbstract[1]{%
  \begingroup\baselineskip 14pt\narrower\small
    {\heiti\bf Abstract:}\rm\quad #1%
     \par\endgroup}
\newcommand*\EKeywords[2][Keywords]{%
  \begingroup\narrower\small
    {\heiti\bf #1:}\rm\quad #2%
  \par\endgroup}
\newcommand*\EMRCLClass[2]{%
  \begingroup\narrower\small
    {\heiti\bf MR(2010) Subject Classification:}\ \ #1\ / \ {\heiti\bf CLC number:}\ \ #2\\%
	\indent{\heiti\bf\zihao{-5}Document Code:}\ \ \documentcode \qquad {\heiti\zihao{6}\bf Article ID:}\ \ \paperid%
  \par\endgroup}
\newcommand*\EndTitle{\vskip.2in\normalsize \baselineskip 15pt}

\newcommand*\CTitle[1]{%
  \vspace*{.2in}
  \begin{center}
    {\huge\bf\zihao{2}\heiti #1}
  \end{center}\vskip.15in
}
\newcommand*\CAuthor[1]{%
\begin{center}\large\zihao{4}\fangsong#1\end{center}\vskip.12in
}
\newcommand*\CInstitution[2]{%
\baselineskip 14pt\small\zihao{-5}\fangsong\hspace{#2}(#1)
}
\newcommand*\CAbstract[1]{%
  \begingroup\vskip.2in\narrower\zihao{-5}\small
    {\heiti\bf 摘\quad 要:}\fangsong\quad #1%
  \par\vskip.1in\endgroup}
\newcommand*\CKeywords[2][关键词]{%
  \begingroup\narrower\zihao{-5}\small
    {\heiti\bf #1:}\fangsong\quad #2%
  \par\endgroup}
\newcommand*\CMRCLClass[2]{%
  \begingroup\narrower\zihao{-5}\small
    {\heiti\bf MR(2010)主题分类:}\ \ #1 / {\heiti\bf 中图分类:}\ \ #2\\%
	\indent{\heiti\bf 文章标识码:}\ \ \documentcode \qquad {\heiti\zihao{-5}\bf 文章编号:}\ \ \paperid%
  \par\endgroup}

\setcounter{section}{-1} % Section从0开始
\newcommand*\Section[2][]{%
  \edef\ams@temp{#1}
  \ifx\ams@temp\@empty\addtocounter{section}{1}
  \else\setcounter{section}{#1}\fi
 \setcounter{subsection}{0} \setcounter{equation}{0} \setcounter{theorem}{0}
 \setcounter{lemma}{0} \setcounter{property}{0} \setcounter{proposition}{0} \setcounter{question}{0} \setcounter{corollary}{0}
 \setcounter{definition}{0} \setcounter{remark}{0} \setcounter{example}{0}
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Theorem
\theoremstyle{definition}
\newtheoremstyle{mythm}{0ex}{0ex}
   {\songti}{\parindent}{\songti\bf }{}{1em}{}
%\newtheoremstyle{mythm}{1ex}{1ex}%
%{\CJKfamily{song}}{\parindent}{\CJKfamily{hei} \bf}{}{1em}{}%
\theoremstyle{mythm}%
\newtheorem{theorem}{Theorem\relax}[section]

\newtheorem{lemma}{Lemma\relax}[section]
\newtheorem{property}{Property\relax}[section]
\newtheorem{proposition}{Proposition\relax}[section]
\newtheorem{question}{Question\relax}[section]
\newtheorem{corollary}{Corollary\relax}[section]
\newtheorem{definition}{Definition\relax}[section]
\newtheorem{remark}{Remark\relax}[section]
\newtheorem{example}{Example\relax}[section]

\newenvironment{Proof}[1][Proof]{\heiti\bf Proof\!\quad\rm}
{\hfill $\Box$}
%%%%% delete the square brackets in the optional title of theorem
\makeatletter
\def\thmhead@plain#1#2#3{%
  \thmname{#1}\thmnumber{\@ifnotempty{#1}{ }\@upn{#2}}%
  \thmnote{ {\the\thm@notefont\!\!#3}}}
\let\thmhead\thmhead@plain
\makeatother
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\figurename}{Figure}
\renewcommand{\tablename}{Table}

%%%%% 公示编号随节变化
\numberwithin{equation}{section} %

\newcommand*\Thanks[1]{%
  \vskip8pt{\heiti\bf\relax Acknowledgement}\quad #1\par}
\renewcommand\refname{\leftline{\large\bf\heiti\zihao{-4}Reference}}
\newcommand\BeginRef{\baselineskip 10.3pt \footnotesize \parindent=4.75mm
\begin{thebibliography}{999}
\addtolength\itemsep{-.8em}}
\newcommand\EndRef{\end{thebibliography}}
\newcommand*\REF[1]{\bibitem{#1}}

\newcommand*\supercite[2][]{\textsuperscript{\cite[#1]{#2}}}
\newcommand*\ucite[2][]{\textsuperscript{\cite[#1]{#2}}}

\endinput
%%
%% End of file sxjzarten.cls.
