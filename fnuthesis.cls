\ProvidesClass{fnuthesis}

\newif\if@professional
\newif\if@doctor
\newif\if@master
\DeclareOption{professional}{\@professionaltrue}
\DeclareOption{doctor}{\@doctortrue\@masterfalse}
\DeclareOption{master}{\@doctorfalse\@mastertrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[UTF8,fontset=none,zihao=-4,linespread=1.25,a4paper]{ctexbook}

\RequirePackage[top=3cm,bottom=3cm,left=2.9cm,right=2.8cm,
  headsep=\dimexpr1.5cm-\headheight\relax,footskip=1.25cm]{geometry}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[CO]{\linespread{1.29365}\zihao{5}\leftmark}
\fancyhead[CE]{\linespread{1.29365}\zihao{5}
  \@shouyudanwei\@xuekeleibie\@xueweijibie 学位论文}
\fancyfoot[C]{\linespread{1.29365}\zihao{5}\thepage}
\if@doctor
  \renewcommand{\headrulewidth}{1.5bp}
\else
  \renewcommand{\headrulewidth}{0.5bp}
\fi
\renewcommand*{\headrule}{%
  \if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
  \hrule\@height\headrulewidth\@width\headwidth
  \vskip\headrulewidth
  \hrule\@height\headrulewidth\@width\headwidth
  \vskip-\headrulewidth}

\renewcommand\frontmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse
  \pagenumbering{Roman}}
\renewcommand\mainmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmattertrue
  \pagenumbering{arabic}}

\setmainfont{Times New Roman}
\xeCJKsetup{AutoFakeBold=true}
\xeCJKsetcharclass{`①}{`⑳}{1}
\setCJKmainfont{SimSun}
\setCJKfamilyfont{zhsong}{SimSun}
\setCJKfamilyfont{zhhei}{SimHei}
\setCJKfamilyfont{zhkai}{KaiTi}
\newcommand*{\songti}{\CJKfamily{zhsong}}
\newcommand*{\heiti}{\CJKfamily{zhhei}}
\newcommand*{\kaishu}{\CJKfamily{zhkai}}

\newcommand*{\@xuexiaobianhao}{}
\newcommand*{\xuexiaobianhao}[1]{\renewcommand*{\@xuexiaobianhao}{#1}}
\newcommand*{\@xuehao}{}
\newcommand*{\xuehao}[1]{\renewcommand*{\@xuehao}{#1}}
\newcommand*{\@tushufenleihao}{}
\newcommand*{\tushufenleihao}[1]{\renewcommand*{\@tushufenleihao}{#1}}
\newcommand*{\@miji}{}
\newcommand*{\miji}[1]{\renewcommand*{\@miji}{#1}}
\newcommand*{\@zhongwentiming}{}
\newcommand*{\zhongwentiming}[1]{\renewcommand*{\@zhongwentiming}{#1}}
\newcommand*{\@yingwentiming}{}
\newcommand*{\yingwentiming}[1]{\renewcommand*{\@yingwentiming}{#1}}
\newcommand*{\@zuozhexingming}{}
\newcommand*{\zuozhexingming}[1]{\renewcommand*{\@zuozhexingming}{#1}}
\newcommand*{\@peiyangfangshi}{}
\newcommand*{\peiyangfangshi}[1]{\renewcommand*{\@peiyangfangshi}{#1}}
\newcommand*{\@xueweileibie}{}
\newcommand*{\xueweileibie}[1]{\renewcommand*{\@xueweileibie}{#1}}
\newcommand*{\@xuekeleibie}{}
\newcommand*{\xuekeleibie}[1]{\renewcommand*{\@xuekeleibie}{#1}}
\newcommand*{\@xuekezhuanye}{}
\newcommand*{\xuekezhuanye}[1]{\renewcommand*{\@xuekezhuanye}{#1}}
\newcommand*{\@yanjiufangxiang}{}
\newcommand*{\yanjiufangxiang}[1]{\renewcommand*{\@yanjiufangxiang}{#1}}
\newcommand*{\@zhidaojiaoshi}{}
\newcommand*{\zhidaojiaoshi}[1]{\renewcommand*{\@zhidaojiaoshi}{#1}}
\newcommand*{\@xueweijibie}{}
\newcommand*{\xueweijibie}[1]{\renewcommand*{\@xueweijibie}{#1}}
\newcommand*{\@tijiaoriqi}{}
\newcommand*{\tijiaoriqi}[1]{\renewcommand*{\@tijiaoriqi}{#1}}
\newcommand*{\@pingyueren}{}
\newcommand*{\pingyueren}[1]{\renewcommand*{\@pingyueren}{#1}}
\newcommand*{\@dabianriqi}{}
\newcommand*{\dabianriqi}[1]{\renewcommand*{\@dabianriqi}{#1}}
\newcommand*{\@weiyuanhuizhuxi}{}
\newcommand*{\weiyuanhuizhuxi}[1]{\renewcommand*{\@weiyuanhuizhuxi}{#1}}
\newcommand*{\@shouyudanwei}{}
\newcommand*{\shouyudanwei}[1]{\renewcommand*{\@shouyudanwei}{#1}}
\newcommand*{\@shouyuriqi}{}
\newcommand*{\shouyuriqi}[1]{\renewcommand*{\@shouyuriqi}{#1}}
\newcommand*{\@riqi}{}
\newcommand*{\riqi}[1]{\renewcommand*{\@riqi}{#1}}

\RequirePackage[normalem]{ulem}
\AtBeginDocument{%
  \begin{titlepage}
    \begingroup
      \linespread{1.94048}\zihao{4}\bfseries\raggedright
      \makebox[4em][s]{学\hfill 校\hfill 编\hfill 号}\uline{\makebox[6em]{\@xuexiaobianhao}}\hfill
      \makebox[5em][s]{图\hfill 书\hfill 分\hfill 类\hfill 号}\uline{\makebox[5em]{\@tushufenleihao}}\par
      \makebox[4em][s]{学\hfill 号}\uline{\makebox[6em]{\@xuehao}}\hfill
      \makebox[5em][s]{密\hfill 级}\uline{\makebox[5em]{\@miji}}\par
    \endgroup
    % \vspace{65.2bp}
    \vfill
    \begingroup
      \centering\includegraphics[scale=0.23]{fnu}\par
    \endgroup
    \begingroup
      \linespread{1.13194}\zihao{-1}\bfseries\centering
      \if@professional
        全日制及非全日制专业学位研究生\\
      \else
        \@peiyangfangshi 学术学位研究生
      \fi
      \@xueweijibie 学位论文\par
    \endgroup
    % \vspace{16.3bp}
    \begingroup
      \centering
      \linespread{1.85227}\zihao{2}\bfseries\@zhongwentiming\par
      \@yingwentiming\par
      \linespread{1.50926}\zihao{-2}\bfseries\@zuozhexingming\par
    \endgroup
    % \vspace{16.3bp}
    \vfill
    \begingroup
      \linespread{1.36905}\zihao{4}\bfseries\raggedright
      \if@professional
        \makebox[7em][s]{培\hfill 养\hfill 方\hfill 式：}\uline{\makebox[10em]{\@peiyangfangshi}}\par
        \makebox[7em][s]{学\hfill 位\hfill 类\hfill 别：}\uline{\makebox[10em]{\@xueweileibie}}\par
      % \else
      % \vspace{46bp}
      \fi
      \makebox[7em][s]{学\hfill 科\hfill 专\hfill 业：}\uline{\makebox[10em]{\@xuekezhuanye}}\par
      \makebox[7em][s]{研\hfill 究\hfill 方\hfill 向：}\uline{\makebox[10em]{\@yanjiufangxiang}}\par
      \makebox[7em][s]{指\hfill 导\hfill 教\hfill 师：}\uline{\makebox[10em]{\@zhidaojiaoshi}}\par
      \makebox[7em][s]{申\hfill 请\hfill 学\hfill 位\hfill 级\hfill 别：}\uline{\makebox[10em]{\@xueweijibie}}\par
    \endgroup
    % \vspace{54.6bp}
    \vfill
    \begingroup
      \linespread{1.07143}\zihao{4}\bfseries\raggedleft
      \makebox[8em][s]{论\hfill 文\hfill 提\hfill 交\hfill 日\hfill 期：}\uline{\makebox[8em]{\@tijiaoriqi}}\par
      \makebox[8em][s]{论\hfill 文\hfill 评\hfill 阅\hfill 人：}\uline{\makebox[8em]{\@pingyueren}}\par
      \makebox[8em][s]{论\hfill 文\hfill 答\hfill 辩\hfill 日\hfill 期：}\uline{\makebox[8em]{\@dabianriqi}}\par
      \makebox[8em][s]{答\hfill 辩\hfill 委\hfill 员\hfill 会\hfill 主\hfill 席：}\uline{\makebox[8em]{\@weiyuanhuizhuxi}}\par
      \makebox[8em][s]{学\hfill 位\hfill 授\hfill 予\hfill 单\hfill 位：}\uline{\makebox[8em]{\@shouyudanwei}}\par
      \makebox[8em][s]{学\hfill 位\hfill 授\hfill 予\hfill 日\hfill 期：}\uline{\makebox[8em]{\@shouyuriqi}}\par
    \endgroup
    % \vspace{16.3bp}
    \vfill
    \begingroup
      \linespread{1.94048}\zihao{4}\bfseries\centering\@riqi\par
    \endgroup
  \end{titlepage}
  \thispagestyle{empty}}

\AtEndDocument{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \pagenumbering{gobble}
  \pagestyle{empty}
  \begingroup
    \linespread{1.13194}\heiti\zihao{-2}\bfseries\centering
      \@shouyudanwei 学位论文原创性声明\par
    \markboth{\MakeUppercase{\@shouyudanwei 学位论文原创性声明}}{}
  \endgroup
  \vspace{44bp}
  \begingroup
    \linespread{1.66667}\zihao{4}本人（姓名）\uline{\makebox[4em]{}}学号\uline{\makebox[5em]{}}专业\uline{\makebox[8em]{}}所呈交的学位论文（论文题目：\makebox[15.5em]{}）是本人在导师指导下，独立进行的研究工作及取得的研究成果。本人在论文写作中参考的其他个人或集体的研究成果，均在文中以明确方式标明。对本论文的研究工作做出贡献的个人或集体，均已在论文中作了明确说明并表示谢意，本人依法享有和承担由此论文产生权利和责任。\par
  \endgroup
  \vspace{138bp}
  \begingroup
    \linespread{1.30952}\zihao{4}\hspace{15em}声明人（签名）：\par
    \vspace{22bp}
    \hspace{16.5em}年\qquad 月\qquad 日\par
  \endgroup
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \begingroup
    \linespread{1.13194}\heiti\zihao{-2}\bfseries\centering
      \@shouyudanwei 学位论文使用授权声明\par
    \markboth{\MakeUppercase{\@shouyudanwei 学位论文使用授权声明}}{}
  \endgroup
  \vspace{44bp}
  \begingroup
    \linespread{1.66667}\zihao{4}本人完全了解\@shouyudanwei 有关保留、使用学位论文的规定，即：\@shouyudanwei 有权保留本学位论文（含纸质版和电子版），并允许论文被查阅和借阅；本人授权\@shouyudanwei 可以将本学位论文的全部或部分内容采用影印、缩印或扫描等复制手段保存、汇编，并按国家有关规定，向有关部门或机构（如国家图书馆、中国学术期刊光盘版电子杂志社等）送交本学位论文（含纸质版和电子版）。保密的学位论文在解密后适用本规定。\par
    本学位论文属于\par
    1.保密（\quad ），在\makebox[2.5em]{}年\makebox[1.5em]{}月解密后适用本授权书。\par
    2.不保密（\quad ）。\par
    （请在以上相应括号内打“√”）\par
  \endgroup
  \vspace{44bp}
  \begingroup
    \linespread{1.30952}\zihao{4}
    作者签名：\makebox[7em]{}日期：\qquad 年\qquad 月\qquad 日\par
    \vspace{22bp}
    导师签名：\makebox[7em]{}日期：\qquad 年\qquad 月\qquad 日\par
  \endgroup}

\RequirePackage[hidelinks]{hyperref}
\renewcommand{\tableofcontents}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter{\contentsname}
  \@starttoc{toc}
  \if@restonecol\twocolumn\fi}

\RequirePackage{titletoc}
\contentsmargin{0bp}
\titlecontents{chapter}[0em]{\linespread{1.52778}\bfseries}{%
  \thecontentslabel\quad}{}{\titlerule*{.}\thecontentspage}
\titlecontents{section}[2em]{\linespread{1.52778}\bfseries}{%
  \thecontentslabel\quad}{}{\titlerule*{.}\thecontentspage}
\titlecontents{subsection}[4em]{\linespread{1.52778}\bfseries}{%
  \thecontentslabel\quad}{}{\titlerule*{.}\thecontentspage}  

\ctexset{%
  chapter={%
    format={\linespread{1.01852}\zihao{-2}\bfseries\centering},
    beforeskip={17bp},
    afterskip={16.5bp},
    fixskip=true,
    pagestyle={fancy},
    tocline={\CTEXnumberline{#1}#2},
  },
  section={%
    name={第,节},
    number={\chinese{section}},
    format={\linespread{1.22222}\zihao{-3}\bfseries\centering},
    beforeskip={0bp},
    afterskip={0bp},
  }}

\RequirePackage[sorting=none,style=gb7714-2015]{biblatex}
\setlength{\bibitemsep}{0bp}
\renewcommand{\footnotesize}{\zihao{-5}}
\renewcommand\thefootnote{%
  \ifcase\value{footnote}
  \or ①\or ②\or ③\or ④\or ⑤\or ⑥\or ⑦\or ⑧\or ⑨\or ⑩
  \or ⑪\or ⑫\or ⑬\or ⑭\or ⑮\or ⑯\or ⑰\or ⑱\or ⑲\or ⑳
  \else *\fi\relax}
\renewcommand\@makefntext[1]{%
  \parindent 1em\noindent\hb@xt@0.8em{\hss\@makefnmark}#1}

\RequirePackage{makeidx}
\renewcommand{\printindex}{%
  \chapter{\indexname}
  \@input@{\jobname.ind}}
\renewenvironment{theindex}
  {\if@twocolumn
      \@restonecolfalse
  \else
      \@restonecoltrue
  \fi
  \parindent\z@
  \parskip\z@ \@plus .3\p@\relax
  \columnseprule \z@
  \columnsep 35\p@
  \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}
