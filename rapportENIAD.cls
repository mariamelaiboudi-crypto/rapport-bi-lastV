\LoadClass[a4paper,12pt]{report} % Classe du document

%--------------------- Packages ------------------------
\RequirePackage{titlesec} % Personnaliser titres
\RequirePackage{tocloft} % Personnaliser table des matières

\RequirePackage[french]{babel} % Langue
\RequirePackage[utf8]{inputenc} % Encodage UTF-8
\RequirePackage[section]{placeins} % Placement sections
\RequirePackage[T1]{fontenc} % Encodage T1
\RequirePackage{mathtools} % Équations
\RequirePackage{siunitx} % Notation scientifique
\RequirePackage{float} % Placement figures
\RequirePackage{graphicx} % Insérer images
\RequirePackage[justification=centering]{caption} % Légendes centrées
\RequirePackage{subcaption} % Sous-figures
\RequirePackage{wallpaper} % Fond d'écran
\RequirePackage{nomencl} % Nomenclature
%\makenomenclature
\RequirePackage{fancyhdr} % En-têtes et pieds
\RequirePackage{fancybox} 
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref} % Liens et références
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} % Marges

%--------------------- Titres ------------------------
% Chapitres
\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries}{\chaptertitlename\ \thechapter}{20pt}{\Huge}
\titlespacing*{\chapter}{0pt}{-10pt}{10pt}

% Sections
\titleformat{\section}
  {\normalfont\Large\bfseries}{\thesection}{1em}{}

%-------------------- Informations sur le rapport ----------------------
\newcommand{\UE}[1]{\renewcommand{\UE}{#1}}
\newcommand{\sujet}[1]{\renewcommand{\sujet}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\enseignant}[1]{\renewcommand{\enseignant}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}
\newcommand{\jury}[1]{\renewcommand{\jury}{#1}}

%-------------------- Mise en page ----------------------
\newcommand{\fairemarges}{
    \fancyhf{} % Clear Everything
    \fancyheadoffset{1cm}
    \setlength{\headheight}{1.5cm}
    \fancyfoot[C]{\thepage} % Numéro de page
    \renewcommand{\headrulewidth}{1pt}
    \renewcommand{\footrulewidth}{1pt}
    \fancyfoot[R]{2025-2026}
    \fancyhead[L]{\nouppercase{\leftmark}}
    \fancyhead[R]{}
    \pagestyle{fancy}
}

%-------------------- Page de garde ----------------------
\newcommand{\fairepagedegarde}{
\begin{titlepage}
\centering
\includegraphics[width=0.3\textwidth]{logos/eniad.png}\par\vspace{1cm}
{\scshape\LARGE École Nationale de L'Intelligence Artificielle et du Digital - Berkane \par}
\vspace{1.5cm}
{\scshape\Large \UE \par \sujet \par}
\vspace{1cm}
\rule{\linewidth}{0.2 mm} \par \vspace{0.4cm}
{\huge\bfseries \titre \par}
\rule{\linewidth}{0.2 mm} \par \vspace{1.5cm}

\begin{minipage}{0.5\textwidth}
    \begin{flushleft} \large
    \textbf{Élèves :}\par
    \eleves\par
    \end{flushleft}
\end{minipage}
~
\begin{minipage}{0.4\textwidth}
    \begin{flushright} \large
    \textbf{Encadrant :}\par
    \enseignant \par
    \end{flushright}
\end{minipage}
~
\par
\vfill
{\large Année Universitaire 2025-2026\par}
\end{titlepage}
}

%-------------------- Table des matières ----------------------


%-------------------- Commande pour insérer une figure ----------------------
\newcommand{\insererfigure}[4]{%
\begin{figure}[H]
    \centering
    \includegraphics[width=#2]{#1} % #1 = chemin image, #2 = largeur
    \caption{#3}                   % #3 = légende
    \label{#4}                     % #4 = label
\end{figure}
}