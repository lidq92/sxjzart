%%Identification
%%The class identifies itself and the LaTeX version needed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sxjzarten}[2018/06/11 Advances in Mathematics class]

%%Preliminary definitions, needed by the options
\LoadClass[10.5pt,twoside]{article}

%%This parts handles the options passed to the class.
\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%%Body of the class, most of the declarations appear here.

\RequirePackage{amsthm} 
\newtheoremstyle{newstyle} % Name 
{0pt}% space above
{0pt}% space below
{\upshape}% body font
{0.7cm}% indent amount 1
{\bfseries}% theorem head font
{}% punctuation after theorem head
{0pt}% space after theorem head
{} % theorem head spec (can be left empty, meaning `normal')
\theoremstyle{newstyle}

\newcounter{definition}
 \setcounter{definition}{0}
 \newtheorem{definition}[definition]{Definition}
 
  \newcounter{theorem}
 \setcounter{theorem}{0}
 \newtheorem{theorem}[theorem]{Theorem}
 
 \newcounter{lemma}
 \setcounter{lemma}{0}
 \newtheorem{lemma}[lemma]{Lemma}
 
 \newcounter{corollary}
 \setcounter{corollary}{0}
 \newtheorem{corollary}[corollary]{Corollary}

\newcounter{remark}
 \setcounter{remark}{0}
 \newtheorem{remark}[remark]{Remark}
 
 \newcounter{case}
 \setcounter{case}{0}
 \newtheorem{case}[case]{Case}

\newcounter{example}
 \setcounter{example}{0}
 \newtheorem{example}[example]{Example}

\newcounter{proposition}
 \setcounter{proposition}{0}
 \newtheorem{proposition}[proposition]{Proposition}

\newcounter{conjecture}
 \setcounter{conjecture}{0}
 \newtheorem{conjecture}[conjecture]{Conjecture}

\renewcommand{\qed}{\unskip\nobreak\hfill\qedsymbol} %% This places the symbol right after the text instead of placing it at the end on the line.

\renewenvironment{proof}[1][Proof]{\par %% \proofname allows to have "Proof of my theorem"
  \pushQED{\qed}%
  \normalfont \topsep-4\p@\@plus0\p@\relax
  \trivlist
  \item[\hskip\labelsep
       \indent \bfseries %% "Proof" is bold
    #1\@addpunct{}\hspace{-5pt}]\ignorespaces %% Period instead of colon
}{%
  \popQED\endtrivlist\@endpefalse
}



% MORE DECLARATIONS
% Packages
\RequirePackage{graphicx} % Figures
\RequirePackage{titlesec}  % Styles and formatting of section headers
\RequirePackage{fancyhdr} % Headers and footers
\RequirePackage{ragged2e} % Text alignment (flushleft/flushright)
\RequirePackage[left=2.5cm, 
	right=3.8cm, 
	top=2.8cm, 
	bottom=5.9cm, 
	headsep=-0.5mm, % Distance between header and text
	%%head=1.6cm,
	%%footskip=2mm,
	paperwidth=21cm,
	paperheight=29.7cm]{geometry} % Page size and margins%, 	showframe
\RequirePackage{xcolor} % Color for logo
\RequirePackage{soul} % For highlighting text
\RequirePackage{multirow} % For typesetting the text in two columns
\RequirePackage{booktabs} % For tables
\definecolor{bluecite}{HTML}{0875b7}
\RequirePackage[colorlinks,
	linkcolor=black,
	citecolor=black,
	urlcolor=black,
	pdfborder={0 0 0},
	unicode=true]{hyperref}
\RequirePackage[numbers,sort&compress,square]{natbib} % Citations sort
\bibpunct{}{}{,}{n}{}{;}
\RequirePackage{makeidx} 
\RequirePackage{amssymb} 
\RequirePackage{amscd}
\RequirePackage{amsfonts}
\RequirePackage{bm}
\RequirePackage{mathrsfs}
\RequirePackage{amsmath}
\RequirePackage{caption} % Figure and table captions
\RequirePackage[T1]{fontenc}

% Figure and table captions
\captionsetup{
	margin=0pt,
	labelsep=space,
	justification=centering,
	font=normal}
		
\RequirePackage{float}
\RequirePackage{etoolbox} % For \AtBeginDocument etc.
\RequirePackage{tabularx} % For option X, to spread out columns to fill pagewidth
\RequirePackage{ifthen}%For add condition

\newboolean{first}%define a Boolean variable to judge first page as false
\setboolean{first}{true}%set default value as true

% Define paragraph spacing and indent value
\RequirePackage{indentfirst}
\linespread{1.35} 
\setlength{\parindent}{0.7cm}
\setlength{\parskip}{0.0\baselineskip}

% Disable hyphenation
\usepackage{hyphenat}
\hyphenpenalty=10000  
\exhyphenpenalty=10000 
\sloppy

% Define fonts
\RequirePackage[UTF8]{ctex}
\RequirePackage{fontspec} % Allows you to use different fonts that are installed on your computer


% Section headings
\titleformat{\section}[block]{\raggedright \fontsize{14.4}{14.4}\selectfont\bfseries} {\thesection\space} {0pt} {}
\titlespacing {\section} {0cm} {0.3cm} {0.2cm}

\titleformat{\subsection}[block]{\raggedright \fontsize{12}{12}\selectfont\bfseries} {\thesubsection\space} {0pt} {}
\titlespacing {\subsection} {0pt} {2pt} {2pt}

%%%% Special section title style for back matter
\newcommand{\acknowledgments}[1]{
\indent{\fontsize{10.5}{10.5}\selectfont\textbf{Acknowledgements} {#1}\par}}

% Headers and footers
\newcommand{\journalname}[1]{\gdef\journalname{#1}}
\newcommand{\journalvolume}[1]{\gdef\journalvolume{#1}}
\newcommand{\journalnumber}[1]{\gdef\journalnumber{#1}}
\newcommand{\journalmonth}[1]{\gdef\journalmonth{#1}}
\newcommand{\articledate}[1]{\gdef\articledate{#1}}

% Define header line for first and other page
\newcommand{\makefirstpageheadrule}{%
\makebox[0pt][l]{\rule[0.55\baselineskip]{\headwidth}{0.5pt}}%%
\rule[0.7\baselineskip]{\headwidth}{0.5pt}}

\newcommand{\makeheadrule}{%
\rule[0.7\baselineskip]{\headwidth}{0.5pt}}

\renewcommand{\headrule}{%
\ifthenelse{\boolean{first}}{\makeheadrule}{\makefirstpageheadrule}%
}

% Headers and footers on first page
\fancypagestyle{mypagestyle}{
\setboolean{first}{false}%set first page as false
\vspace*{1mm}
\addtolength{\footskip}{-0.7cm}	
	\fancyhead[L]{
		\leftskip0.0cm
		\small \fontsize{9}{9}\selectfont  \hspace{-0.2mm}第\hspace{-0mm}\journalvolume\hspace{-0mm}卷第\hspace{0mm}\journalnumber\hspace{0mm}期\vspace{1pt}\\
		 \pubyear\hspace{-0mm}年\hspace{-0mm}\journalmonth\hspace{-0mm}月}
		\vspace{3pt} 
	\fancyhead[C]{
		\small \fontsize{12}{12}\selectfont  \ 数\hspace{6.5mm}学\hspace{6.5mm}进\hspace{6.5mm}展 \vspace{1pt}\\
		\fontsize{9}{9}\selectfont ADVANCES IN MATHEMATICS (CHINA)}
		\vspace{3pt}
	\fancyhead[R]{
		\rightskip0.0cm
		\small \fontsize{9}{9}\selectfont  Vol.\ \journalvolume,\ No.\ \journalnumber\vspace{1pt}\\
		\fontsize{9}{9}\selectfont\articledate, \pubyear}
		\vspace{3pt}
}

% Turn off footnote numbering because \footnote is used to create the footer on the first page
\renewcommand{\thefootnote}{}

% Define footnote format   
\RequirePackage[hang]{footmisc}
\setlength{\skip\footins}{0.4cm}
\setlength{\footnotemargin}{0mm}
\def\footnoterule{\kern-2\p@
\hrule \@width 2.3in height 0.5pt \kern 3.0\p@}

% Make command for defining the first page
\newcommand{\firstpage}[1]{\gdef\@firstpage{#1}}

% Content of first page
\newcommand{\pubyear}[1]{\gdef\pubyear{#1}}
\newcommand{\Title}[1]{\gdef\@Title{#1}}
\newcommand{\Authors}[1]{\gdef\@Authors{#1}}
\newcommand{\Affiliations}[1]{\gdef\@Affiliations{#1}}
\newcommand{\Abstract}[1]{\gdef\@Abstract{#1}}
\newcommand{\Keywords}[1]{\gdef\@Keywords{#1}}
\newcommand{\documentcode}[1]{\gdef\@documentcode{#1}}
\newcommand{\DOI}[1]{\gdef\@DOI{#1}}
\newcommand{\EnglishTitle}[1]{\gdef\@EnglishTitle{#1}}
\newcommand{\EnglishShortTitle}[1]{\gdef\@EnglishShortTitle{#1}}
\newcommand{\EnglishAuthors}[1]{\gdef\@EnglishAuthors{#1}}
\newcommand{\EnglishAffiliations}[1]{\gdef\@EnglishAffiliations{#1}}
\newcommand{\EnglishAbstract}[1]{\gdef\@EnglishAbstract{#1}}
\newcommand{\EnglishKeywords}[1]{\gdef\@EnglishKeywords{#1}}
\newcommand{\ReceiveDate}[1]{\gdef\@ReceiveDate{#1}}
\newcommand{\ReviseDate}[1]{\gdef\@ReviseDate{#1}}
\newcommand{\FundItem}[1]{\gdef\@FundItem{#1}}
\newcommand{\CorrsEmail}[1]{\gdef\@CorrsEmail{#1}}
\newcommand{\SubjectClass}[1]{\gdef\@SubjectClass{#1}}
\newcommand{\CLCNum}[1]{\gdef\@CLCNum{#1}}
\newcommand{\pageissn}[1]{\gdef\@pageissn{#1}}
\newcommand{\EnglishAuthorNames}[1]{\gdef\@EnglishAuthorNames{#1}}

% Headers and footers on all  pages except first
\pagestyle{fancy}
\fancyhead[OL]{\fontsize{9}{9}\selectfont No.\ \journalnumber \vspace{1.5pt}}
\fancyhead[OC]{\fontsize{9}{9}\selectfont \@EnglishAuthorNames: \@EnglishShortTitle \vspace{1.5pt}}
\fancyhead[OR]{\fontsize{9}{9}\selectfont\thepage{}\vspace{1.5pt}}
\fancyhead[EL]{\fontsize{9}{9}\selectfont \thepage{}\vspace{1.5pt}}
\fancyhead[EC]{\fontsize{9}{9}\selectfont ADVANCES IN MATHEMATICS (CHINA) \vspace{1.5pt}}
\fancyhead[ER]{\fontsize{9}{9}\selectfont Vol. \journalvolume \vspace{1.5pt}}
\fancyfoot{} 

% First page
\newcommand{\mymaketitle}{
	\leftskip0cm
	\rightskip0cm
	\vspace*{5pt}
	\noindent
	\begin{flushright}
      \vspace{-0.11cm} \renewcommand{\baselinestretch}{1.0}
      \fontsize{9}{9}\selectfont doi:\  \ \@DOI\footnote{%
     {Received date:} \@ReceiveDate.\quad {\ifthenelse{\equal{\@ReviseDate}{\@empty}}{}{%
            {Revised date:} \@ReviseDate.}}\\
	     {Foundation item:} \@FundItem.\\
	     {E-mail:} \@CorrsEmail}	\\
	\end{flushright}
	\begin{flushleft}
	\vspace*{-0.1cm}
       \begin{center}
       \renewcommand{\baselinestretch}{1.35}
	\fontsize{18}{18}\selectfont{%
      \boldmath\bfseries \@EnglishTitle} \\
		\bigskip
		\fontsize{12}{12}\selectfont \@EnglishAuthors\\
           \end{center}
              \medskip
			     \vspace{0.15cm} 
            \parindent=0.7cm  
             \leftskip0cm
             \rightskip0cm                
            \renewcommand{\baselinestretch}{1.35}
		\fontsize{9}{9}\selectfont({\it\@EnglishAffiliations})\\
              \medskip
              \parindent=0.6cm 
               \leftskip0.55cm
               \rightskip0.55cm
                 \vspace{0.25cm}  \renewcommand{\baselinestretch}{1.35} 
	        \fontsize{9}{9}\selectfont {\bfseries Abstract:} \@EnglishAbstract\\
              \fontsize{9}{9}\selectfont {\bfseries  Keywords:} \@EnglishKeywords\\
              \fontsize{9}{9}\selectfont {\bfseries  MR(2010) Subject Classification:} \@SubjectClass %
              \ / \ {\bfseries  CLC number:} \@CLCNum\\
              \fontsize{9}{9}\selectfont {\bfseries  Document code:} \@documentcode \qquad %
             {\bfseries  \fontsize{9}{9}\selectfont Article ID:} \fontsize{9}{9}\selectfont \@pageissn\\       
	    \medskip
	 \end{flushleft}
	\medskip
}

\newcommand{\myenglishtitle}{\vspace*{6pt}
	\begin{flushleft}
	\leftskip0cm
	\rightskip0cm
	\noindent
            \renewcommand{\baselinestretch}{1.1}
            \begin{center}
		\noindent\fontsize{14.4}{14.4}\selectfont{\boldmath\heiti\bf \@Title}\\
		\bigskip	
		\fontsize{10.5}{10.5}\selectfont\kaishu \@Authors\\
		   \end{center}
		\renewcommand{\baselinestretch}{1.3}    
              \parindent=0.6cm          
		\fontsize{8.0}{8.0}\selectfont {\indent\indent\songti \@Affiliations}\\
	        \medskip    
			 \vskip.1in 
	\renewcommand{\baselinestretch}{1.25}
	\fontsize{10.0}{10.0}\selectfont{\indent{\bf 摘要: }}\fangsong\@Abstract\\
	\indent{{\bf\heiti 关键词: }} \fangsong\@Keywords\\
	\smallskip
	\end{flushleft}
	\smallskip
}

% First page command
\AtEndPreamble{
      \setcounter{page}{\@firstpage}
	\numberwithin{equation}{section} %Define equation number
	\numberwithin{definition}{section}
	\numberwithin{theorem}{section}
	\numberwithin{lemma}{section}
	\numberwithin{corollary}{section}
	\numberwithin{remark}{section}
	\numberwithin{example}{section}
      \numberwithin{proposition}{section}
      \numberwithin{case}{section}
	\setcounter{section}{-1}
}

%Run first page
\AtBeginDocument{
	\thispagestyle{mypagestyle}
	\mymaketitle
	\vspace{-10pt} 
      \abovedisplayskip=10.0pt plus 2.0pt minus 2.0pt
      \belowdisplayskip=10.0pt plus 2.0pt minus 2.0pt
      \fontsize{10}{10}\selectfont
     \baselineskip 15pt
}

\AtEndDocument{%
		\myenglishtitle
}%If there is two multicols, \end{multicols} should be add
% Needs to go here to have the academic editor in the same column

\RequirePackage{lastpage} % For info on first page. This package needs to be loaded after \AtEndDocument because otherwise it messes with the command.

% References
\renewcommand\refname{} % No reference title
\newcommand{\BeginRef}{%\vspace{2pt}
	\section*{\fontsize{14.4}{14.4}\selectfont \textbf{References}\vspace{-25pt}} 
	\addcontentsline{toc}{section}{References}
	\renewcommand{\baselinestretch}{1.25}
	\fontsize{8}{8}\selectfont
	\begin{thebibliography}{---}
	\setlength{\itemsep}{0.6mm}
	\baselineskip 11pt
}
\newcommand{\EndRef}{%\vspace{2pt}
    \end{thebibliography}}
	%%%%% Or use xsparse
\let\oldcite\cite
\renewcommand*\cite[2][]{[{\oldcite[#1]{#2}}]}
\newcommand*\supercite[2][]{\textsuperscript{\cite[#1]{#2}}}
\newcommand*\ucite[2][]{\textsuperscript{\cite[#1]{#2}}}
\endinput
