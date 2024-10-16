\RequirePackage{graphicx}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{KNED}[2024/04/19 K. N. Exercise Document]

% Define class options, if needed
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Load necessary packages
\LoadClass{article}
\RequirePackage{fancyhdr}
\RequirePackage[a4paper, 
                top=1in,
                marginparwidth=0.6in]
                {geometry}

% Define class options for language switching
\newif\ifpersian
\newif\ifenglish
\persianfalse  % Default to English
\englishtrue

\DeclareOption{persian}{
    \persiantrue
    \englishfalse
}

\DeclareOption{english}{
    \englishtrue
    \persianfalse
}

\ProcessOptions\relax

\newcommand{\KNEDRHdr}{right header txt}
\newcommand{\KNEDLHdr}{left header txt}

\setlength{\footskip}{40pt} % Adjust the value as needed
\setlength{\headheight}{70pt} % Adjust the value as needed

\newcommand{\UniLogo}{%
    \raisebox{\height}{\includegraphics[height=1cm]{images/KNTU-logo.png}}%
}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\UniLogo}
\fancyhf[HR]{\KNEDRHdr}
\fancyhf[HL]{\KNEDLHdr}
\fancyhf[FC]{\thepage}

\setlength{\parindent}{0pt}

% Define the exercise counter
\newcounter{exercise}[section] % Reset exercise counter at each section

% DEFINING AN EXERCISE ENVIRONMENT
\newenvironment{exercise}[1][]{
    \refstepcounter{exercise} % ADDING TO THE EXERCISE COUNTER
    \par\bigskip
    \ifpersian
        \textbf{تمرین \theexercise. #1} \quad
    \else
        \textbf{Exercise \theexercise. #1} \quad
    \fi
    \par\bigskip
}{
    \medskip
}

% DEFINING An ANSWER Environment.
\newenvironment{solution}[1][]{
    \par\medskip
    \ifpersian
        \textbf{راه حل. #1} \quad
    \else
        \textbf{Solution. #1} \quad
    \fi
    \par\bigskip
}{
    \medskip
}

\endinput
