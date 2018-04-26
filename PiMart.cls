%% This is the PROGRESS IN MATHEMATICS article document class: PiMart.cls
%%
%%----------------------------------------------------------------------------------------------------
%%
%%     Warning!!! This is a Read-Only file, Please don't modify it unless you know what you are doing.
%%
%%----------------------------------------------------------------------------------------------------
%% 
%% Change log:
%         - 2017/12/05: created the file by Dingquan Li, email: dingquanli@pku.edu.cn
%% 
%% Copyright 2017
%% The Editorial Office of PROGRESS IN MATHEMATICS, PEKING UNIVERSITY
%%
%% based on article.cls
%% 
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
\ProvidesClass{PiMart}[2017/12/05 v0.0 PROGRESS IN MATHEMATICS article document class]

\newif\ifams@evenend \ams@evenendfalse
\DeclareOption{evenend}{\ams@evenendtrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\PassOptionsToClass{twoside,a4paper}{article} %
\ProcessOptions
\LoadClass{article}

\RequirePackage{ifpdf}
\RequirePackage{titlesec} % 
\RequirePackage{booktabs,algorithmicx}
\RequirePackage{graphicx,subfigure,picins,psfrag,epstopdf}
% \graphicspath{{./figs/}} % {{dir1},{dir2},{dir3}} % figure path
\RequirePackage{amsmath,amsthm,makeidx,amssymb,amsfonts,amscd,mathrsfs,bm}
\RequirePackage[numbers,sort&compress]{natbib} % bib
\input scrload.tex %

\RequirePackage{geometry}
\geometry{left=4cm,right=4cm,top=4.2cm,bottom=4.5cm} % a4 29.7cmx21cm --> 21cmx13cm      % page setup
% \textheight 21 true cm %
% \textwidth 13 true cm %
% \topmargin 0pt
% \oddsidemargin 0pt
% \evensidemargin 0pt
\headsep 0.2 true cm
\headheight 8 true mm
\footskip 2mm
\parindent 16pt %
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

\def\flushpar{\par\noindent}
\def\de#1{{\bf #1}\quad}
\DeclareMathOperator*{\esssup}{ess\,sup}
\DeclareMathOperator*{\essinf}{ess\,inf}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Header
\def\ps@headings{%
  \let\@oddfoot\@empty\let\@evenfoot\@empty
  \def\@evenhead{%
    \vbox{\hbox to\textwidth{\rlap{\small\thepage}
    \hfill \small\quad \shortauthor
    \hfill \small \!\!
    \llap{}}\protect\vspace{2truemm}\relax}}
  \def\@oddhead{%
    \vbox{\hbox to\textwidth{\rlap{}
    \small \!\! \hfill
    {\small \MakeUppercase\shorttitle\quad}\hfill
    \llap{\small\thepage}}
    \protect\vspace{2truemm}\relax}}
  \let\@mkboth\@gobbletwo
  \let\sectionmark\@gobble
  \let\subsectionmark\@gobble
}
\ps@headings
\newcommand*\monthname[1]{%
\ifcase#1\or January\or February\or March\or April\or May\or June%
\or July\or August\or September\or October\or November\or December\fi} 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%MakeTitle
\newcommand*\EditorNote[1]{%
  \begingroup
    \long\def\@makefntext##1{\parindent 1em\noindent\hbox to 0pt{\hss$^{}$}##1}%
    \footnotetext{#1}%
  \endgroup}
  
\newcommand*\BeginTitle{%
  \vspace*{-13mm}%
  \thispagestyle{empty}%
  \noindent \scriptsize PROGRESS IN MATHEMATICS \vskip 0.3mm % journal name
  \par\noindent%
  \scriptsize Volume~\pubvol, Number~\pubno, \monthname{\pubmonth}~\pubyear, Pages~\spage-\epage \vskip .3mm %
  \par\noindent %
  \scriptsize \copyright Peking University,~\pubyear % copyright holder
}
\newcommand*\Title[1]{%
  \vspace*{.2in}
  \begin{center}\Large\bf\MakeUppercase #1\end{center}\vskip.15in % 
}
\newcommand*\Author[1]{%
\begin{center}\large#1\end{center}\vskip.12in
}
\newcommand*\Institution[1]{%
\vspace*{-.25in}
\begin{center}\small{\it #1}\end{center}\vskip.15in
}
\newcommand*\Abstract[1]{%
  \begingroup\noindent\small\textbf{Abstract:}\ #1%
  \par\vspace*{1mm}\endgroup}
\newcommand*\Keywords[1]{%
  \begingroup\noindent\small\textbf{Keywords:}\ #1%
  \par\vspace*{1mm}\endgroup}
\newcommand*\MRSubClass[1]{%
  \begingroup\noindent\small\textbf{MR(2010) Subject Classification:}\ #1%
  \par\vspace*{1mm}\endgroup}
\newcommand*\EndTitle{\vskip.2in\normalsize \baselineskip 15pt} % \baselineskip for mainbody

\renewcommand*\maketitle{
\setcounter{page}{\spage} % Set Start Page
\EditorNote{\submitinfo}  %
\EditorNote{\fundinfo} %
\EditorNote{E-mail:~\authorinfo} %
\BeginTitle %
\Title{\entitle}  %
\Author{\enauthor} %
\Institution{\eninstitution} %
\Abstract{\enabstract} %
\Keywords{\enkeywords} %
\MRSubClass{\MR} %
\EndTitle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%(Sub)(Sub)Section
\renewcommand{\@seccntformat}[1]{\csname the#1\endcsname.\ }
\renewcommand\section{\@startsection
			{section}{1}{\z@}%   {name}{depth}{}
		        {4ex \@plus1ex \@minus .2ex}% leave parindent
		        {2.3ex \@plus.2ex}%
		        {\protected@xdef\@currentlabel{\sectionname}%
			 \reset@font\large\bfseries\sectionformat}}%
\newcommand\sectionname{\thesection.}
\newcommand\sectionformat{}


\renewcommand\subsection{\@startsection
			{subsection}{2}{\z@}%   {name}{depth}{}
		        {1.75ex \@plus.5ex \@minus .1ex}% leave parindent
		        {1.15ex \@plus.1ex}%
		        {\protected@xdef\@currentlabel{\subsectionname}%
			 \reset@font\normalsize\bfseries\subsectionformat}} 
\newcommand\subsectionname{\sectionname\arabic{subsection}.}
\newcommand\subsectionformat{}

\renewcommand\subsubsection{\@startsection
			{subsubsection}{3}{\z@}%   {name}{depth}{}
		        {1.75ex \@plus 0.5ex \@minus .1ex}% positive->leave parindent
		        {1.15ex \@plus.1ex}%
		        {\protected@xdef\@currentlabel{\subsubsectionname}%
			 \reset@font\normalsize\subsubsectionformat}} % not \bfseries
\newcommand\subsubsectionname{\subsectionname\arabic{subsubsection}.}
\newcommand\subsubsectionformat{}

%\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
%                                      {3.25ex \@plus1ex \@minus.2ex}%
%                                      {-1em}%
%                                      {\normalfont\normalsize\bfseries}}
%\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
%                                         {3.25ex \@plus1ex \@minus .2ex}%
%                                         {-1em}%
%                                         {\normalfont\normalsize\bfseries}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Equation, Figure, Table
\numberwithin{equation}{section} % This line resets equation numbering when starting a new section.
% \renewcommand{\theequation}{Eq. \thesection.\arabic{equation}} % This line ads "Eq." in front of your equation numbering.
\renewcommand{\figurename}{Figure}
\renewcommand{\tablename}{Table}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Theorem
\newtheoremstyle{mythm}% name
  {2.5pt} % %{}       Space above, empty = `usual value'
  {2.5pt} % %{}      Space below
  {\itshape} % Body font
  {} %         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries} % Thm head font
  {} %        Punctuation after thm head
  {1em} % %{1em} Space after thm head: \newline = linebreak
  {\thmname{#1}\thmnumber{ #2}\thmnote{ {\rm (#3)}}.\!\!\!} %  ()  Thm head spec
\newtheoremstyle{mythm2}% name
  {2.5pt} % %{}       Space above, empty = `usual value'
  {2.5pt} % %{}      Space below
  {} % Body font
  {} %         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries} % Thm head font
  {} %        Punctuation after thm head
  {1em} % %{1em} Space after thm head: \newline = linebreak
  {\thmname{#1}\thmnumber{ #2}\thmnote{ {\rm (#3)}}.\!\!\!} %         Thm head spec
\theoremstyle{mythm}
\newtheorem{theorem}{Theorem\relax}[section]
\newtheorem{lemma}{Lemma\relax}[section]
\newtheorem{corollary}{Corollary\relax}[section]
\newtheorem{proposition}{Proposition\relax}[section]
\newtheorem{conjecture}{Conjecture}[section]
\newtheorem{algorithm}{Algorithm}[section]
\newtheorem{property}{Property\relax}[section]
\theoremstyle{mythm2}
\newtheorem{definition}{Definition\relax}[section]
\newtheorem{problem}{Problem}[section]
\newtheorem{question}{Question\relax}[section]
\newtheorem{remark}{Remark\relax}[section]
\newtheorem{example}{Example\relax}[section]
\newtheorem{hypothesis}{Hypothesis}[section]
\newtheorem{case}{Case}[section]
\renewenvironment{proof}{{\noindent\it Proof}\ }{\hfill $\Box$\par}  
%%%%%%%%%%%%%%%%%%%%%%%%%Acknowledgements
\newcommand*\acknowledgements[1]{%
 \vspace{1mm} \noindent{\bf Acknowledgements}\quad #1%
  \par\vspace*{1mm}}
\renewcommand\refname{\leftline{\large\bf Reference}}
%%%%%%%%%%%%%%%%%%%%%%%%%%Reference
\newcommand\BeginRef{\baselineskip 10.3pt \footnotesize \parindent=4.75mm
\begin{thebibliography}{99}
\addtolength\itemsep{-.8em}}
\newcommand\EndRef{\end{thebibliography}}
\newcommand*\REF[1]{\bibitem{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%APPENDIX
\renewcommand\appendix{\par
  \section*{APPENDIX}
  \let\normalsize\small%
  \let\small\footnotesize%
  \normalsize%
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  \setcounter{equation}{0}%
  \def\cl@section{\@elt{subsection}}%
  \renewcommand\theequation{A\@arabic\c@equation}%
}
\endinput % End of the file.
% \hyphenpenalty=5000 %
% \tolerance=1000 %