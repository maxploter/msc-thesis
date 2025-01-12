\ProvidesClass{unitartucs-thesis}[Tartu Ülikooli arvutiteaduse instituudi bakalaureuse ja magistri õppeastmete lõputööde LaTeX mall]

% Üldine vormistus
\LoadClass[12pt]{article}
\usepackage[a4paper,margin=25.4mm]{geometry}
\usepackage{parskip} % Taandrea asemel lõiguvahe

\usepackage{xcolor}

% Fondid
\RequirePackage[defaultsups,largesc,trueslanted]{newtxtext} % Times
\RequirePackage{tgcursor} % Courier

% Peatükkide pealkirjad
\usepackage{titlesec}
% Heading 1
\titleformat{\section}{\fontsize{16}{16}\selectfont\rmfamily\bfseries\upshape}{\thesection.}{6pt}{}
\titlespacing{\section}{0pt}{0pt}{5pt}
% Heading 2
\titleformat{\subsection}{\fontsize{15}{15}\selectfont\rmfamily\bfseries\upshape}{\thesubsection}{6pt}{}
\titlespacing{\subsection}{0pt}{12pt}{4pt}
% Heading 3
\titleformat{\subsubsection}{\fontsize{14}{14}\selectfont\rmfamily\bfseries\upshape}{\thesubsubsection}{6pt}{}
\titlespacing{\subsubsection}{0pt}{8pt}{3pt}
% Heading 4 (mitte-standardne)
\titleclass\subsubsubsection{straight}[\subsubsection]
\titleformat{\subsubsubsection}{\fontsize{14}{14}\selectfont\rmfamily\bfseries\itshape}{\thesubsubsubsection}{6pt}{}
\titlespacing{\subsubsubsection}{0pt}{4pt}{2pt}
\newcounter{subsubsubsection}
\renewcommand{\thesubsubsubsection}{\thesubsubsection.\arabic{subsubsubsection}}
\renewcommand{\theparagraph}{\thesubsubsubsection.\arabic{paragraph}}
% Heading 5
\titleformat{\paragraph}{\fontsize{14}{14}\selectfont\rmfamily\mdseries\itshape}{\theparagraph}{6pt}{}
\titlespacing{\paragraph}{0pt}{0pt}{0pt}
% Heading 6
\definecolor{subparagraphgray}{rgb}{0.35, 0.35, 0.35}
\titleformat{\subparagraph}{\fontsize{14}{14}\selectfont\rmfamily\mdseries\itshape\color{subparagraphgray}}{\thesubparagraph}{6pt}{}
\titlespacing{\subparagraph}{0pt}{0pt}{0pt}

\setcounter{secnumdepth}{3} % Nummerdatud kuni \subsubsection
\AddToHook{cmd/section/before}{\clearpage} % Esimese taseme peatükid algavad uuelt lehelt

% Sisukord
\usepackage{titletoc}
\titlecontents{section}[0pt]{}{\thecontentslabel.\enspace\normalsize}{\normalsize}{\titlerule*[.3pc]{.}\contentspage}
\titlecontents{subsection}[16pt]{}{\thecontentslabel\enspace\normalsize}{\normalsize}{\titlerule*[.3pc]{.}\contentspage}
\titlecontents{subsubsection}[32pt]{}{\thecontentslabel\enspace\normalsize}{\normalsize}{\titlerule*[.3pc]{.}\contentspage}
\titlecontents{subsubsubsection}[48pt]{}{\thecontentslabel\enspace\normalsize}{\normalsize}{\titlerule*[.3pc]{.}\contentspage}
\titlecontents{paragraph}[64pt]{}{\thecontentslabel\enspace\normalsize}{\normalsize}{\titlerule*[.3pc]{.}\contentspage}
\titlecontents{subparagraph}[80pt]{}{\thecontentslabel\enspace\normalsize}{\normalsize}{\titlerule*[.3pc]{.}\contentspage}

\setcounter{tocdepth}{3} % Sisukorras kuni \subsubsection

% Joonised
\usepackage{wrapfig}
\usepackage[export]{adjustbox}

% Mähitud joonise vasak ruum
\BeforeBeginEnvironment{wrapfigure}{\setlength{\columnsep}{30pt}}

% Mähitud joonise ülemine ruum
\patchcmd\WF@putfigmaybe{\lower\intextsep}{}{}{\fail}%
\AddToHook{env/wrapfigure/begin}{\setlength{\intextsep}{0pt}}

% Tabelid
%\usepackage{tabularx}
%\usepackage{makecell}
\usepackage{tabularray}
\AtBeginEnvironment{table}{\bigskip\bigskip}
\AtEndEnvironment{table}{\bigskip}

\definecolor{colorCellHighlight}{rgb}{0.85, 0.91, 0.97}


% Koodinäited
\usepackage{minted}
\setminted{
    frame=single,
    framesep=10pt,
    fontsize=\footnotesize,
}

% Jalus
\renewcommand{\footnoterule}{%
  \kern 0pt
  \hrule width 145pt height 0.01pt
  \kern 12pt
}

% Üldised teksti seadistused

% \usepackage{lua-ul}
\usepackage{breakurl}
\usepackage[hidelinks,pdfusetitle]{hyperref}
\urlstyle{same}
\definecolor{linkGreen}{rgb}{0.15, 0.33, 0.09}
\usepackage{soul}
\usepackage[normalem]{ulem}
% \setlength{\ULdepth}{0.15ex}
\renewcommand{\ULthickness}{1pt}
% \usepackage{href-ul}
\newcommand\link[1]{\textcolor{linkGreen}{\uline{\burl{#1}}}}

\usepackage[marginal]{footmisc}
\setlength{\footnotemargin}{4pt}

\RequirePackage[labelsep=period]{caption} %Punkt pealdiste sildi lõpus

\widowpenalty=10000
\clubpenalty=10000
\hyphenpenalty=10000
\hbadness=10000
\sloppy
\usepackage{microtype}

\addtolength{\skip\footins}{40pt plus 5pt}

% Tekstimuutujatega seotud seadistused
\newcommand\supervisor[1]{\renewcommand\@supervisor{#1}}
\newcommand\@supervisor{\@latex@error{No \noexpand\supervisor given}\@ehc}

\newcommand\curriculum[1]{\renewcommand\@curriculum{#1}}
\newcommand\@curriculum{\@latex@error{No \noexpand\curriculum given}\@ehc}

\newcommand\thesis[1]{\renewcommand\@thesis{#1}}
\newcommand\@thesis{\@latex@error{No \noexpand\thesis given}\@ehc}

\newcommand\titleOtherLanguage[1]{\renewcommand\@titleOtherLanguage{#1}}
\newcommand\@titleOtherLanguage{\@latex@error{No \noexpand\titleOtherLanguage given}\@ehc}

\newcommand\keywords[1]{\renewcommand\@keywords{#1}}
\newcommand\@keywords{\@latex@error{No \noexpand\keywords given}\@ehc}

\newcounter{@supervisori}
\newcounter{@supervisors}

%% Tõlked %%


\newcommand{\supervisorname}{Juhendaja}
\newcommand{\supervisorsname}{Juhendajad}
\newcommand{\infoname}{Infoleht}
\renewcommand{\abstractname}{Lühikokkuvõte}
\newcommand{\keywordsname}{Võtmesõnad}
\newcommand{\keywordsnameOtherLanguage}{Keywords}
\renewcommand{\refname}{Viited}%
\renewcommand{\appendixname}{Lisad}%
\newcommand{\appendixtocname}{Lisad}%
\newcommand{\appendixpagename}{Lisad}%

\usepackage[estonian]{babel}
\addto\captionsestonian{
  \renewcommand{\contentsname}%
    {Sisukord}%
}


%% Tiitellehe vormistus %%

\renewcommand*{\maketitle}{
    \setbox0=\vbox{\setcounter{@supervisors}{1}\newcommand*{\degree}[1]{}\renewcommand*{\and}{\stepcounter{@supervisors}}\@supervisor}%
    \thispagestyle{empty}

    \vspace*{-9.1 mm}

    \begin{center}

        % Päis
        {
            \fontsize{15}{15}\selectfont \textsc{Tartu Ülikool} \\
            \fontsize{14}{16}\selectfont
            Arvutiteaduse instituut\\
            \@curriculum\\
        }

        \vspace{63mm}

        % Pealkiri
        {
            {\fontsize{16}{16}\selectfont \textbf{\@author}} \\
            \vspace{2mm}
            {\fontsize{21}{24}\selectfont \textbf{\textsf{\@title}}} \\
            \vspace{3mm}
            {\fontsize{14}{16}\selectfont \textbf{\@thesis}}
        }

    \end{center}

    \vspace{17mm}

    % Juhendajad
    {
        \begin{flushright}
            {
                \large

                \renewcommand*{\and}{\\ }
                \newcommand*{\degree}[1]{, ##1}

                \ifnum\value{@supervisors}>1\supervisorsname\else\supervisorname\fi: \\ \@supervisor

            }
        \end{flushright}
    }

    \vfill

    % Jalus
    \centerline{\large Tartu {\@date}}
}


%% Infolehe vormistus %%

\newenvironment{@info}[1]{
    \noindent\textbf{\large #1}
    \vspace*{1ex} % TODO: why 3ex only in one language in old template?

    \renewenvironment{abstract}{
        \noindent\textbf{\abstractname:}

        \noindent\ignorespaces % TODO: why need \ignorespaces?
    }{\vspace*{1ex}}

    \renewcommand*{\keywords}[1]{
        \noindent\textbf{\keywordsname:} \ifstrempty{##1}{\@keywords}{##1}

        \vspace*{1ex}
    }

    \newcommand*{\cercs}[1]{
        \noindent\textbf{CERCS:} ##1

        \vspace*{1ex}
    }
}{\filbreak\vspace{4ex}}

\newenvironment{infoEst}{
    \renewcommand{\abstractname}{Lühikokkuvõte}
    \renewcommand{\keywordsname}{Võtmesõnad}
    \begin{@info}{\@title}}{\end{@info}
}
\newenvironment{infoEng}{
    \renewcommand{\abstractname}{Abstract}
    \renewcommand{\keywordsname}{Keywords}
    \begin{@info}{\@titleOtherLanguage}}{\end{@info}
}


%% PDF-faili järjehoidjate seadistus %%


\usepackage[numbered,open]{bookmark}

%% Meta-andmed %%

\AtEndPreamble{
    \DeclareLanguageMapping{estonian}{unitartucs/estonian}
    \hypersetup{
        pdftitle={\@title},
        pdfsubject={\@title},
        pdfauthor={\@author},
        pdfkeywords={\@keywords}
    }
}
