\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{utscapstone}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{report}

%\renewcommand{\chaptername}{}

\def\@schapter#1{
                      \addcontentsline{toc}{chapter}{#1}%
\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}

\renewcommand{\@makechapterhead}[1]{%
  \vspace*{20\p@}%
  {\parindent \z@ \raggedright \normalfont
    \hrule                                        % horizontal line
    \vspace{6pt}%                                 % add vertical space
    \ifnum \c@secnumdepth >\m@ne
        \huge\scshape \space \thechapter . % Chapter number
    \fi
    \interlinepenalty\@M
    \Huge \scshape #1\par                         % chapter title
    \vspace{9pt}%                                 % add vertical space
    \hrule                                        % horizontal rule
    \nobreak
    \vskip 40\p@
  }}

\renewcommand{\@makeschapterhead}[1]{%
  \vspace*{20\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \hrule                                        % horizontal line
    \vspace{6pt}%                                 % add vertical space
    \interlinepenalty\@M
    \Huge \scshape #1\par                         % chapter title
    \vspace{9pt}%                                 % add vertical space
    \hrule                                        % horizontal line
    \nobreak
    \vskip 40\p@
  }}

\endinput