return {
  s({trig=';a', snippetType='autosnippet'},
  {
    t('\\alpha'),
  }),
  s({trig=';b', snippetType='autosnippet'},
  {
    t('\\beta'),
  }),
  s({trig=';g', snippetType='autosnippet'},
  {
    t('\\gamma'),
  }),
  s({trig="ff", snippetType='autosnippet'},
    fmt(
      "\\frac{<>}{<>}",
      {
        i(1),
        i(2)
      },
      {delimiters = "<>"} -- manually specifying angle bracket delimiters
    )
  ),
  -- s({trig="bb", snippetType="autosnippet"},
  --   fmta(
  --     [[
  --       \begin{<>}
  --           <>
  --       \end{<>}
  --     ]],
  --     {
  --       i(1),
  --       i(2),
  --       rep(1),  -- this node repeats insert node i(1)
  --     }
  --   )
  -- ),
  s({trig='newd', dscr='Start a new document'},
    fmta(
      [[
        \documentclass[12pt]{article}
        \usepackage{amsmath,amsfonts}
        \usepackage{graphicx}
        \usepackage{enumerate}
        \usepackage{tikz}

        \usepackage{fullpage,url,amssymb,amsmath,epsfig,color,xspace}
        \usepackage[
        pdftitle={<>},
        pdfsubject={<>},
        pdfauthor={Nicholaus Suprapto}]
        {hyperref}

        \renewcommand{\thesubsection}{Problem \arabic{subsection}}

        \begin{document}

        \definecolor{care}{rgb}{0,0,0}
        \def\question#1{\item[\bf #1.]}
        \def\part#1{\item[\bf #1)]}
        \newcommand{\pc}[1]{\mbox{\textbf{#1}}}

        <>

        \end{document}
      ]],
      {
        i(1),
        i(2),
        i(3),
      }
    )
  ),
}
