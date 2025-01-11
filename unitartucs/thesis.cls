\ProvidesClass{unitartucs-thesis}[Tartu Ülikooli arvutiteaduse instituudi bakalaureuse ja magistri õppeastmete lõputööde LaTeX mall]

%% Üldised vormistamise seaded %%

\usepackage[utf8]{inputenc}

\LoadClass[12pt]{article}
\usepackage[a4paper, left=25.4mm, right=25.4mm, top=25.4mm, bottom=25.4mm]{geometry}

\RequirePackage[defaultsups,largesc,trueslanted]{newtxtext} % defaultsups,largesc,trueslanted to match old times more closely
\RequirePackage{tgcursor} % Courier

\usepackage{parskip}
\usepackage{titlesec}
\AddToHook{cmd/section/before}{\clearpage} % Esimese taseme peatükid algavad uuelt lehelt

% Peatükkide pealkirjad
\titleformat{\section}{\fontsize{16}{16}\rmfamily\selectfont\bfseries}{\thesection.}{6pt}{}
\titlespacing{\section}{0pt}{0pt}{7.5pt}
\titleformat{\subsection}{\fontsize{15}{15}\rmfamily\selectfont\bfseries}{\thesubsection}{6pt}{}
\titlespacing{\subsection}{0pt}{12pt}{4pt}
\titleformat{\subsubsection}{\fontsize{14}{14}\rmfamily\selectfont\bfseries}{\thesubsubsection}{6pt}{}
\titleformat{\paragraph}{\fontsize{14}{14}\rmfamily\selectfont\bfseries\itshape}{\theparagraph}{6pt}{}
\titleformat{\subparagraph}{\fontsize{14}{14}\rmfamily\selectfont\itshape}{\thesubparagraph}{6pt}{}

\usepackage{xcolor}
% \definecolor{sixthHeadingGray}{rgb}{0.35, 0.35, 0.35}
% \titleformat{\subsubsubsubsection}{\rmfamily\selectfont\textit\color{sixthHeadingGray}}{\thesection}{12pt}{}

% Sisukord
\usepackage{titletoc}
\titlecontents{section}[0pt]{}
{\contentsmargin{0pt}\thecontentslabel.\enspace\normalsize}
{\contentsmargin{0pt}\normalsize}
{\titlerule*[.3pc]{.}\contentspage}

\titlecontents{subsection}[16pt]{}
{\contentsmargin{0pt}\thecontentslabel.\enspace\normalsize}
{\contentsmargin{0pt}\normalsize}
{\titlerule*[.3pc]{.}\contentspage}

\titlecontents{subsubsection}[32pt]{}
{\contentsmargin{0pt}\thecontentslabel.\enspace\normalsize}
{\contentsmargin{0pt}\normalsize}
{\titlerule*[.3pc]{.}\contentspage}

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

\newcommand{\updateMetadata}{
    \hypersetup{
        pdftitle={\@title},
        pdfsubject={\@title},
        pdfauthor={\@author},
        pdfkeywords={\@keywords}
    }
}

\newcommand{\init}{
    \DeclareLanguageMapping{estonian}{unitartucs/estonian}
    \updateMetadata
}