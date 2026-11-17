\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Configuracoes}[2025]
\LoadClass[a4paper, 12pt]{article}
\usepackage{titlesec} % Para deixar subtítulos de terceira ordem sem negrito.
\usepackage{titletoc} % Para configurar subsections de 4 e 5 ordem.
\setcounter{secnumdepth}{5} % Para aparecer a numeração de subsections de 4 e 5 ordem.
\setcounter{tocdepth}{5} % Inclui títulos até subparagraph no sumário
\RequirePackage{geometry} % Para configurar margens
\usepackage{changepage} % Para mudar margem esquerda de textos para 2cm
\RequirePackage{setspace} % Para configurar espaçamento
\RequirePackage{lmodern}  % Fonte moderna
\renewcommand{\contentsname}{} % Remove o título automático "Contents" do sumário.%
\usepackage{tocloft} % Personalizar a aparência do sumário, lista de figuras e lista de tabelas.
\renewcommand{\cftdotsep}{10000} % Desliga as bolinhas no sumário.
\usepackage{booktabs}
\usepackage{tabularx}
\usepackage{array}
 \usepackage{csquotes}

%--------------------------------Paginação conforme ABNT-----------------------
\usepackage{fancyhdr}
\usepackage{lastpage}
\usepackage{calc}

%--------------------------Formatação de subseções até a quinta ordem----------
    % Estilo centralizado para sections (não vai para o sumário)
    \newcommand{\sectionCentralizada}[1]{%
      \titleformat{\section}
        {\normalfont\normalsize\bfseries\centering}
        {}{0pt}{} % Sem número
      \section*{#1}
      % Restaura o estilo padrão
      \titleformat{\section}
        {\normalfont\Large\bfseries}
        {\thesection}{1em}{}
    }

    % Estilo centralizado para section (vai para o sumário)
    \newcommand{\sectionCentralizadaComSumario}[1]{%
      \refstepcounter{section}%
      \addcontentsline{toc}{section}{\protect\numberline{}{\textbf{#1}}}%
      \begin{center}
        {\fontsize{12pt}{14pt}\selectfont\textbf{#1}}%
      \end{center}
    } 

  
    \titleformat{\subsubsection} % Subsections de 3 ordem (sem negrito)
        {\normalfont\normalsize}   
        {\thesubsubsection}{1em}{} 

    \titleformat{\paragraph} % Subsections de 4 ordem (negrito + itálico)
        [block] % ou [runin], se quiser que fique na mesma linha do texto
        {\normalfont\normalsize\bfseries\itshape} 
        {\theparagraph}{1em}{}

    \titleformat{\subparagraph} % Subsections de 5 ordem (sem negrito + itálico)
        [block] % ou [runin], dependendo do seu estilo preferido
        {\normalfont\normalsize\itshape}
        {\thesubparagraph}{1em}{}
    
%-----------------------------------------------------------------------------

%---------------------------------ATENÇÃO!------------------------------------
%USE O COMANDO ABAIXO PARA PERSONALIZAR A DISTÂNCIA DOS TÍTULOS DO SUMÁRIO ATÉ A SUA NUMERAÇÃO MAIS EXTENSA DESEJADA. POR EXEMPLO: SE SEU DOCUMENTO NÃO TERÁ SUBTÍTULOS DE 4 E 5 ORDEM NA INTRODUÇÃO, EXCLUA-OS DO ARQUIVO DE INTRODUÇÃO E MODIFIQUE A DISTÂNCIA DOS OUTROS TÍTULOS PARA UM NOVO ALINHAMENTO USANDO O COMANDO ABAIXO.%

    \setlength{\cftsecnumwidth}{4em} % ->PARA DISTÂNCIA DE SECTIONS(SUMÁRIO)
    \setlength{\cftsubsecnumwidth}{4em} % ->PARA DISTÂNCIA DE SUBSECTIONS(SUMÁRIO)
    \setlength{\cftsubsubsecnumwidth}{4em} % ->PARA DISTÂNCIA DE SUBSUBSECTIONS(SUMÁRIO)
    \setlength{\cftparanumwidth}{4em} % ->PARA DISTÂNCIA DE PARAGRAPH(SUMÁRIO)
    \setlength{\cftsubparanumwidth}{4em} % ->PARA DISTÂNCIA DE SUBPARAGRAPH(SUMÁRIO)

    \setlength{\cftsecindent}{0em}
    \setlength{\cftsubsecindent}{0em}
    \setlength{\cftsubsubsecindent}{0em}
    \setlength{\cftparaindent}{0em}
    \setlength{\cftsubparaindent}{0em}
%-----------------------------------------------------------------------------
\usepackage{amsmath} % Para símbolos matemáticos
\usepackage{ragged2e} % Justificar textos
\usepackage{graphicx} % Permite inserir imagens


\usepackage{caption} % Manipular legendas de imagens

\captionsetup{font={footnotesize}} % Ajustar tamanho da fonte da legenda de imagens




%==============================CONSTRUA SEU DOCUMENTO!=========================

%===============================DEFINIÇÕES GERAIS==============================

%------------------------------Nome da instituição-----------------------------
\newcommand{\instituicao}
    {INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO MARANHÃO, CAMPUS TIMON}

%--------------------------------Departamento----------------------------------
\newcommand{\departamentoCurso}
    {COORDENAÇÃO DE TECNOLOGIA EM SISTEMAS PARA INTERNET} 

%----------------------------------Curso---------------------------------------
\newcommand{\curso}
    {CURSO DE TECNOLOGIA EM SISTEMAS PARA INTERNET} 

%--------------------------------Nome do autor---------------------------------
\newcommand{\autor}
    {\textbf{MAYARA DOS SANTOS GREGÓRIO}}

%----------------------------Título do trabalho--------------------------------
\newcommand{\titulo}
    {\textbf{DESENVOLVIMENTO DE UM ASSISTENTE EDUCACIONAL BASEADO EM LLM E RAG PARA IDENTIFICAÇÃO DE DIFICULDADES DE APRENDIZAGEM DISCENTE E APOIO AOS DOCENTES NO PLANEJAMENTO DE AULAS}}

%-------------------------------Subtítulo--------------------------------------
\newcommand{\subTitulo}

%----------------------------Número do volume----------------------------------
\newcommand{\volume}

%----------------------------------Cidade--------------------------------------
\newcommand{\local}
    {Timon} 

%----------------------------------Ano-----------------------------------------
\newcommand{\ano}
    {2026} 

%----------------------------Banca Examinadora---------------------------------
\newcommand{\bancaExaminadora}{
    \textbf{BANCA EXAMINADORA} 
}

%----------------------------Natureza do Trabalho------------------------------
\newcommand{\natureza}{
    \hspace*{8cm}
    \begin{minipage}{0.5\textwidth}
        \begin{spacing}{1} 
            \fontsize{10}{12}\selectfont
            \raggedleft
            \justifying
            \noindent
            Trabalho de Conclusão de Curso apresentado ao curso de Tecnologia em Sistemas para Internet do Instituto Federal do Maranhão Campus Timon, como requisito para obtenção do Título de Tecnólogo em Sistemas para Internet.
        \end{spacing}
    \end{minipage}
}

%-------------------------------Orientador-------------------------------------
\newcommand{\orientador}{ 
    \hspace*{8cm}
    \begin{minipage}{0.5\textwidth}
        \begin{spacing}{1} 
            \fontsize{10}{12}\selectfont
            \raggedleft
            \justifying
            
            \noindent Orientador: Prof. Dr. Marcos Vinicius de Freitas Borges
                
        \end{spacing}
    \end{minipage} 
}

%----------------------------Coorientador(se houver)--------------------------
\newcommand{\coorientador}{
    \hspace*{8cm}
    \begin{minipage}{0.5\textwidth}
        \begin{spacing}{1} 
            \fontsize{10}{12}\selectfont
            \raggedleft
            \justifying
            
            \noindent Coorientador (*Se houver*): Prof. (a). (*titulação*) Nome Completo
                
        \end{spacing}
    \end{minipage} 
}

%-----------------------Data de Aprovação do Trabalho--------------------------
\newcommand{\dataAprovacao}{
    Aprovada em: de de 2026.
}

%--------------------Nome do Componente da Banca Examinadora-------------------
\newcommand{\marcosViniciusDeFreitasBorges}{ 
    \textbf{Prof. Dr. Marcos Vinicius de Freitas Borges} (Orientador)
}

%--------------------Nome do Componente da Banca Examinadora-------------------
\newcommand{\diegoSantiagoDeMenesesCarvalho}{
    \textbf{Prof. Me. Diego Santiago de Meneses Carvalho}
}

%--------------------Nome do Componente da Banca Examinadora-------------------
\newcommand{\pedroAlmirMartinsDeOliveira}{
    \textbf{Prof. Dr. Pedro Almir Martins de Oliveira}
}

%----------------------------Títulação do Componete----------------------------
\newcommand{\titulacaoComponente}{

}

%----------------------Instituição a que Pertence o Componente-----------------
\newcommand{\instituicaoifma}{
    Instituição Federal de Educação, Ciência e Tecnologia (IFMA)
}

\newcommand{\instituicaoufpi}{
    Universidade Federal do Piauí (UFPI)
}

%--------------------------------Dedicatória-----------------------------------
\newcommand{\dedicatoriaTexto}{
    A Deus, aos meus pais e ao meu irmão,
    que me apoiaram e me incentivaram a
    realizá-lo nos momentos em que mais
    necessitei.
}

%--------------------------------Epígrafe------------------=-------------------
\newcommand{\epigrafeTexto}{
    \hspace*{8cm}
    \begin{minipage}{0.5\textwidth}
        \begin{spacing}{1} 
            \raggedleft
            \justifying
                \noindent
                “A leitura do mundo precede a leitura da
                palavra.”

        \end{spacing}
    \end{minipage}
}

%-----------------------------Autor da Epígrafe--------------------------------
\newcommand{\autorEpigrafe}{
    \hspace*{8cm}
    \begin{minipage}{0.5\textwidth}
        \begin{spacing}{1} 
            \raggedleft
                \noindent
                 Paulo Freire.
 
        \end{spacing}
    \end{minipage}
}

%-----------------------------Tabela da Errata---------------------------------
\newcommand{\tabelaErrata}{
    \begin{figure}[htbp]
        \centering

        \caption*{Tabela 1 - Modelo de Errata (Distribuição de livros nas escolas)} %Legenda de cima%

        \vspace{-0.4cm}
            
        \includegraphics[width=1\textwidth]{IMAGENS/tabela-Errata.png} %Endereço da imagem%
            
        \vspace{-0.2cm}

        \caption*{Fonte: Elaborada pelos autores (2025)}
        %Legenda da imagem%
        
        \label{tabelaErrata} % Nome para referenciar a tabela em algum texto. Funciona com \cite{}.
    \end{figure}
}

%----------------------------Ficha catalográfica-------------------------------
\newcommand{\fichaCatalografica}{
    \vspace*{\fill} 
    \begin{figure}[htbp]
        \centering
            
        \caption*{Ficha elaborada de acordo com o Código de Catalogação Anglo-Americano AACR2}
        %Legenda de cima%
            
        \vspace{-0.3cm}
            
        \includegraphics[width=12.5cm,height=7.5cm,keepaspectratio]{IMAGENS/Ficha_Catalográfica.png}
        %Endereço da imagem%
            
        \vspace{-0.1cm}
            
        \caption*{Serviço de Catalogação da Biblioteca, IFMA, Campus Timon Eliana Mendes (Bibliotecária) CRB-13/742}
        %Legenda debaixo%
            
        \label{fichaCatalográfica}
    \end{figure}
}

%----------------------------Referência da Errata------------------------------
\newcommand{\referenciaErrata}{
  \begin{spacing}{1}
  \noindent
    {\fontsize{10pt}{12pt}\selectfont
      SOBRENOME(S), Prenome do(s) autor(es). \textbf{Título}: subtítulo (se houver). Ano de depósito. Tipo do trabalho (tese, dissertação, trabalho de conclusão de curso e outros), grau (especialização, doutorado, entre outros) e curso entre parênteses – vinculação acadêmica, local, data de apresentação ou defesa.
    }
  \end{spacing}
}

%-----------------------------Imagem do Fluxo BPMN---------------------------------
\newcommand{\fluxobpmnprincipal}{
    \begin{figure}[htbp]
        \centering
        \caption{Fluxo BPMN de utilização da plataforma educacional}
        \vspace{0.1cm}
        \includegraphics[width=\textwidth]{IMAGENS/fluxo_principal_bpmn.pdf}
        \label{fig:fluxo_principal_bpmn}
        \vspace{-0.2cm}
        {\fontsize{10pt}{12pt}\selectfont
        \caption*{Fonte: Elaborado pela autora (2026).} % Legenda de baixo.
        }
    \end{figure}
}

%-----------------------------Telas da plataforma---------------------------------
\newcommand{\telaacesso}{
    \begin{figure}[H]
        \centering
        \caption{Telas de acesso à plataforma}
        \vspace{0.1cm}
        \begin{minipage}[t]{0.48\textwidth}
            \centering
            \includegraphics[width=\textwidth]{IMAGENS/tela_login.png}\\
            {\footnotesize (a) Tela de login}
        \end{minipage}\hfill
        \begin{minipage}[t]{0.48\textwidth}
            \centering
            \includegraphics[width=\textwidth]{IMAGENS/tela_cadastro.png}\\
            {\footnotesize (b) Tela de cadastro}
        \end{minipage}
        \label{fig:tela-acesso}
        {\fontsize{10pt}{12pt}\selectfont
        \caption*{Fonte: Elaborado pela autora (2026).} % Legenda de baixo.
        }    
    \end{figure}
}

\newcommand{\teladisciplina}{
    \begin{figure}[H]
        \centering
        \caption{Página da disciplina com os códigos de convite}
        \vspace{0.1cm}
        \includegraphics[width=\textwidth]{IMAGENS/tela_disciplina_codigos_convite.png}
        \label{fig:tela-disciplina}
        \vspace{-0.2cm}
        {\fontsize{10pt}{12pt}\selectfont
        \caption*{Fonte: Elaborado pela autora (2026).} % Legenda de baixo.
        }
    \end{figure}
}

\newcommand{\telatopico}{
    \begin{figure}[H]
        \centering
        \caption{Página de detalhes do tópico da disciplina}
        \vspace{0.1cm}
        \includegraphics[width=\textwidth]{IMAGENS/tela_topico.png}
        \label{fig:tela-topico}
        \vspace{-0.2cm}
        {\fontsize{10pt}{12pt}\selectfont
        \caption*{Fonte: Elaborado pela autora (2026).} % Legenda de baixo.
        }
    \end{figure}
}

\newcommand{\telachat}{
    \begin{figure}[H]
        \centering
        \caption{\textit{Chat} do aluno com a pergunta e a resposta com indicação das fontes}
        \vspace{0.1cm}
        \includegraphics[width=\textwidth]{IMAGENS/tela_chat_pergunta_resposta.png}
        \label{fig:tela-chat}
        \vspace{-0.2cm}
        {\fontsize{10pt}{12pt}\selectfont
        \caption*{Fonte: Elaborado pela autora (2026).} % Legenda de baixo.
        }
    \end{figure}
}

\newcommand{\telapainel}{
    \begin{figure}[H]
        \centering
        \caption{Painel do professor com os tópicos com distribuição das dúvidas}
        \vspace{0.1cm}
        \includegraphics[width=\textwidth]{IMAGENS/tela_painel_professor.png}
        \label{fig:tela-painel}
        \vspace{-0.2cm}
        {\fontsize{10pt}{12pt}\selectfont
        \caption*{Fonte: Elaborado pela autora (2026).} % Legenda de baixo.
        }
    \end{figure}
}

\newcommand{\telatopicoresumos}{
    \begin{figure}[H]
        \centering
        \caption{Página do tópico Pilhas com os resumos das dúvidas}
        \vspace{0.1cm}
        \includegraphics[width=\textwidth]{IMAGENS/tela_topico_resumo_duvidas.png}
        \label{fig:tela-topico-resumos}
        \vspace{-0.2cm}
        {\fontsize{10pt}{12pt}\selectfont
        \caption*{Fonte: Elaborado pela autora (2026).} % Legenda de baixo.
        }
    \end{figure}
}

\newcommand{\telatopicotrechos}{
    \begin{figure}[H]
        \centering
        \caption{Página do tópico Pilhas com os trechos recuperados}
        \vspace{0.1cm}
        \includegraphics[width=\textwidth]{IMAGENS/tela_topico_trechos_recuperados.png}
        \label{fig:tela-topico-trechos}
        \vspace{-0.2cm}
        {\fontsize{10pt}{12pt}\selectfont
        \caption*{Fonte: Elaborado pela autora (2026).} % Legenda de baixo.
        }
    \end{figure}
}
%----------------------------Imagem MAtriz de Confusão--------------------------------

\newcommand{\matrizconfusao}{
    \begin{figure}[htbp]
        \centering
        \caption{Matriz de confusão}
        \vspace{0.1cm}
        \includegraphics[width=\textwidth]{IMAGENS/figura_matriz_confusao.png}
        \vspace{-0.2cm}
        \label{fig:matriz-confusao}
        {\fontsize{10pt}{12pt}\selectfont
        \caption*{Fonte: Elaborado pela autora (2026).} % Legenda de baixo.
        }
    \end{figure}
}

%----------------------------Images BPMN--------------------------------

\newcommand{\bpmnPreparacao}{
    \begin{figure}[H]
        \centering
        \caption{Fluxo BPMN de preparação da disciplina}
        \vspace{0.1cm}
        \includegraphics[width=\textwidth]{IMAGENS/preparacao_disciplina.png}
        \label{fig:bpmn-preparacao}
        \vspace{-0.2cm}
        {\fontsize{10pt}{12pt}\selectfont
        \caption*{Fonte: Elaborado pela autora (2026).} % Legenda de baixo.
        }
    \end{figure}
}

\newcommand{\bpmnDuvidas}{
    \begin{figure}[H]
        \centering
        \caption{Fluxo BPMN de envio e processamento de dúvidas}
        \vspace{0.1cm}
        \includegraphics[width=\textwidth]{IMAGENS/envio_processamento_duvida.png}
        \label{fig:bpmn-duvidas}
        \vspace{-0.2cm}
        {\fontsize{10pt}{12pt}\selectfont
        \caption*{Fonte: Elaborado pela autora (2026).} % Legenda de baixo.
        }
    \end{figure}
}

\newcommand{\bpmnPainel}{
    \begin{figure}[H]
        \centering
        \caption{Fluxo BPMN de consulta ao painel do docente}
        \vspace{0.1cm}
        \includegraphics[width=\textwidth]{IMAGENS/consulta_painel_docente.png}
        \label{fig:bpmn-painel}
        \vspace{-0.2cm}
        {\fontsize{10pt}{12pt}\selectfont
        \caption*{Fonte: Elaborado pela autora (2026).} % Legenda de baixo.
        }
    \end{figure}
}

%----------------------------Lista de Tabelas--------------------------------

\newcommand{\TextoListaDeTabelas}{
    \noindent Tabela 1 -- Distribuição das perguntas por tópico no conjunto de referência \dotfill 32 \par
    \noindent Tabela 2 -- Distribuição dos materiais didáticos por tópico \dotfill 34 \par
    \noindent Tabela 3 -- Desempenho da classificação por tópico \dotfill 46 \par
}


%----------------------------Lista de Quadros--------------------------------

\newcommand{\TextoListaDeQuadros}{
    \noindent Quadro 1 -- Requisitos funcionais \dotfill 30 \par
    \noindent Quadro 2 -- Requisitos não funcionais \dotfill 31 \par
    \noindent Quadro 3 -- Atendimento aos Requisitos \dotfill 44 \par
    \noindent Quadro 4 -- Configuração do ambiente experimental \dotfill 45 \par
    \noindent Quadro 5 -- Exemplos de divergências na classificação das perguntas \dotfill 49 \par
}

%----------------------------Lista de Ilustrações-------------------------------
    
\newcommand{\TextoListaDeIlustracoes}{
    \noindent Figura 1 -- Fluxo BPMN de preparação da disciplina \dotfill 36 \par
    \noindent Figura 2 -- Fluxo BPMN de envio e processamento de dúvidas \dotfill 36 \par
    \noindent Figura 3 -- Fluxo BPMN de consulta ao painel do docente \dotfill 37 \par
    \noindent Figura 4 -- Telas de acesso à plataforma \dotfill 37 \par
    \noindent Figura 5 -- Página da disciplina com os códigos de convite \dotfill 38 \par
    \noindent Figura 6 -- Página de detalhes do tópico da disciplina \dotfill 39 \par
    \noindent Figura 7 -- \textit{Chat} do aluno com a pergunta e a resposta com indicação das fontes \dotfill 40 \par
    \noindent Figura 8 -- Painel do professor com os tópicos com a distribuição das dúvidas \dotfill 41 \par
    \noindent Figura 9 -- Página do tópico Pilhas com os resumos das dúvidas \dotfill 42 \par
    \noindent Figura 10 -- Página do tópico Pilhas com os trechos recuperados \dotfill 43 \par
    \noindent Figura 11 -- Matriz de confusão \dotfill 47 \par
}

%-----------------------------Lista de Símbolos--------------------------------
\newcommand{\TextoListaDeSimbolos}{
    \noindent

   % ©   copyright \\ % (©)
   % \%  porcentagem \\ % (%)
   % $\sum$  somatório \\ % (Σ)
}

%-----------------------Lista de Abreviaturas e Siglas-------------------------
\newcommand{\TextoListaDeAbreviaturas}{
    \novoBlocoPreTextual{
        \noindent
        ACM \hspace{1cm} Associação para Máquinas de Computação \\
        API \hspace{1cm} Interface de Programação de Aplicações \\
        AVL \hspace{1cm} Adelson-Velsky e Landis \\
        BERT \hspace{1cm} Representações de Codificadores Bidirecionais de Transformadores \\
        BPMN \hspace{1cm} \textit{Business Process Model and Notation} \\
        CAPES \hspace{1cm} Coordenação de Aperfeiçoamento de Pessoal de Nível Superior \\
        GGUF \hspace{1cm} Formato Unificado Gerado por GPT \\
        GPU \hspace{1cm} Unidade de Processamento Gráfico \\
        GPT \hspace{1cm} Transformador Generativo Pré-Treinado \\
        IEEE \hspace{1cm} Instituto de Engenheiros Eletricistas e Eletrônicos \\
        IFMA \hspace{1cm} Instituto Federal de Educação, Ciência e Tecnologia do Maranhão \\
        LGPD \hspace{1cm} Lei Geral de Proteção de Dados Pessoais \\
        LLM \hspace{1cm} Modelo de Linguagem de Grande Escala \\
        LTS \hspace{1cm} Suporte de Longo Prazo \\
        MDC \hspace{1cm} Máximo Divisor Comum \\
        PDF \hspace{1cm} Formato Portátil de Documento \\
        RAG \hspace{1cm} Geração Aumentada por Recuperação \\
        RAM \hspace{1cm} Memória de Acesso Aleatório \\
        RF \hspace{1cm} Requisito Funcional \\
        RLS \hspace{1cm} Segurança em Nível de Linha \\
        RNF \hspace{1cm} Requisito Não Funcional \\
        SBC \hspace{1cm} Sociedade Brasileira de Computação \\
        TCC \hspace{1cm} Trabalho de Conclusão de Curso \\
        TF-IDF \hspace{1cm} Frequência do Termo--Inverso da Frequência nos Documentos \\
    }
}

%----------------------------------Sumário-------------------------------------
\newcommand{\Sumario}{
   \pagestyle{empty}   % força ocultar número de página
   \tableofcontents
   \thispagestyle{empty} % reforça a remoção do número na página atual
}

%-------------------------------Apêndice(s)------------------------------------
\newcommand{\textoApendice}{
    \noindent
    \subsection{{\fontsize{12pt}{14pt}\selectfont APÊNDICE A - Questionário 1}}
        \novoBlocoTexto{
            É um fato conhecido que o leitor se distrai com o conteúdo legível de uma página ao observar seu layout. A vantagem de usar o Lorem Ipsum é que ele tem uma distribuição de letras mais ou menos normal, em oposição ao uso de "Conteúdo aqui, conteúdo aqui", o que o torna um inglês legível.
        }
    \subsection{{\fontsize{12pt}{14pt}\selectfont APÊNDICE B - Questionário 2}} 
        \novoBlocoTexto{
            É um fato conhecido que o leitor se distrai com o conteúdo legível de uma página ao observar seu layout. A vantagem de usar o Lorem Ipsum é que ele tem uma distribuição de letras mais ou menos normal, em oposição ao uso de "Conteúdo aqui, conteúdo aqui", o que o torna um inglês legível.
        }
    \subsection{{\fontsize{12pt}{14pt}\selectfont APÊNDICE C - Questionário 3}}
        \novoBlocoTexto{
            É um fato conhecido que o leitor se distrai com o conteúdo legível de uma página ao observar seu layout. A vantagem de usar o Lorem Ipsum é que ele tem uma distribuição de letras mais ou menos normal, em oposição ao uso de "Conteúdo aqui, conteúdo aqui", o que o torna um inglês legível.
        }
    \subsection{{\fontsize{12pt}{14pt}\selectfont APÊNDICE D - Questionário 4}}
        \novoBlocoTexto{
            É um fato conhecido que o leitor se distrai com o conteúdo legível de uma página ao observar seu layout. A vantagem de usar o Lorem Ipsum é que ele tem uma distribuição de letras mais ou menos normal, em oposição ao uso de "Conteúdo aqui, conteúdo aqui", o que o torna um inglês legível.
        }
}

%---------------------------------Índice(s)------------------------------------
\newcommand{\textoIndice}{
    \noindent
    Educação 1960  25,36 \\
    Avaliação do ensino\\
    estatisticas  33,54\\
    debates 23,26,42\\
    Educação 1960 \\
}

%--------------------------------Glossário-------------------------------------
\newcommand{\TextoGlossario}{
    \textbf{Chatbot} - Sistema computacional desenvolvido para interagir com usuários por meio da linguagem natural, permitindo a troca de mensagens e a realização de tarefas.

    \textbf{Classificação textual} - Processo de atribuição de um texto a uma categoria previamente definida, considerando seu conteúdo e suas características.

    \textbf{Dataset (conjunto de dados)} - Coleção organizada de informações utilizada em atividades de pesquisa, treinamento, teste ou avaliação de sistemas computacionais.

    \textbf{Embedding (representação vetorial)} - Representação numérica de um texto em um espaço vetorial, utilizada para identificar relações semânticas entre palavras, frases ou documentos.

    \textbf{F1-score} - Métrica de avaliação que combina precisão e revocação por meio da média harmônica, permitindo analisar o desempenho de um sistema de classificação.

    \textbf{Inferência} - Processo pelo qual um modelo de inteligência artificial utiliza seus parâmetros e os dados recebidos para produzir uma saída, como uma resposta ou classificação.

    \textbf{Matriz de confusão} - Representação tabular que compara as classificações previstas por um modelo com as categorias de referência, permitindo identificar acertos e erros.

    \textbf{Modelo quantizado} - Modelo cujos parâmetros são representados com menor precisão numérica, reduzindo o consumo de memória e os recursos computacionais necessários à execução.

    \textbf{Precisão} - Métrica que representa a proporção de classificações atribuídas a determinada categoria que realmente pertencem a ela.

    \textbf{Prompt} - Conjunto de instruções e informações fornecidas a um modelo de linguagem para orientar a execução de uma tarefa.

    \textbf{Recuperação semântica} - Processo de busca de informações baseado na similaridade de significado entre textos, em vez de depender exclusivamente da correspondência de palavras.

    \textbf{Revocação (Recall)} - Métrica que representa a proporção de elementos de uma categoria de referência corretamente identificados pelo modelo.

    \textbf{Similaridade de cosseno} - Medida matemática utilizada para comparar a orientação de dois vetores, frequentemente aplicada à identificação de similaridade entre representações textuais.

    \textbf{Vetores} - Representações numéricas de dados em um espaço de múltiplas dimensões.

    \textbf{Zero-shot} - Abordagem na qual um modelo executa uma tarefa sem receber exemplos específicos de treinamento para aquela tarefa, utilizando apenas as instruções e informações fornecidas.

}

%--------------------------------Anexo(s)--------------------------------------
\newcommand{\TextoAnexos}{
    \noindent
    \subsection{{\fontsize{12pt}{14pt}\selectfont ANEXO A - Conteúdo 1}}
        \novoBlocoTexto{
            É um fato conhecido que o leitor se distrai com o conteúdo legível de uma página ao observar seu layout. A vantagem de usar o Lorem Ipsum é que ele tem uma distribuição de letras mais ou menos normal, em oposição ao uso de "Conteúdo aqui, conteúdo aqui", o que o torna um inglês legível. 
        }
        
    \subsection{{\fontsize{12pt}{14pt}\selectfont ANEXO B - Conteúdo 2}}
        \novoBlocoTexto{
            É um fato conhecido que o leitor se distrai com o conteúdo legível de uma página ao observar seu layout. A vantagem de usar o Lorem Ipsum é que ele tem uma distribuição de letras mais ou menos normal, em oposição ao uso de "Conteúdo aqui, conteúdo aqui", o que o torna um inglês legível. 
        }
        
    \subsection{{\fontsize{12pt}{14pt}\selectfont ANEXO C - Conteúdo 3}}
        \novoBlocoTexto{
            É um fato conhecido que o leitor se distrai com o conteúdo legível de uma página ao observar seu layout. A vantagem de usar o Lorem Ipsum é que ele tem uma distribuição de letras mais ou menos normal, em oposição ao uso de "Conteúdo aqui, conteúdo aqui", o que o torna um inglês legível. 
        }
}

%----------------------------------------------------------------------------%

%------\NEWCOMMAND GENÉRICO PARA TEXTOS DE DESENVOLVIMENTO, CONCLUSÃO ETC.---%
\newcommand{\novoBlocoTexto}[1]{
    \begingroup
    \setlength{\parindent}{2cm}        % recuo de parágrafo
    \setlength{\parskip}{0pt}          % sem espaçamento entre parágrafos
    \normalsize
    \justifying
    \begin{spacing}{1.5}
        \everypar{\indent}             % força a indentação em todos os parágrafos
        #1
    \end{spacing}
    \par
    \endgroup
}
%ATRIBUI ESPAÇAMENTO 2 CM DE MARGEM NA PRIMEIRA LINHA DO PARÁGRAFO, NÃO ACEITA \NOINDENT.%
%----------------------------------------------------------------------------%

%--\NEWCOMMAND GENÉRICO PARA TEXTOS DE ELEMENTOS PRÉ-TEXTUAIS E O RESUMO-----%
    \newcommand{\novoBlocoPreTextual}[1]{
    \begingroup
    \setlength{\parindent}{1.25cm}
    \normalsize % 12pt
    \justifying
    \begin{spacing}{1.5}
        #1
    \end{spacing}
    \par
    \endgroup
}
%ATRIBUI ESPAÇAMENTO 1.25 CM DE MARGEM NA PRIMEIRA LINHA DO PARÁGRAFO, ACEITA \NOINDENT.%
%----------------------------------------------------------------------------%

%--------------------------ELEMENTOS NÃO EDITÁVEIS---------------------------%

   
\newcommand{\assinaturaorientador}{\textbf{{\rule{7cm}{0.01cm}}}} % Linha de assinatura da folha de aprovação.

\newcommand{\logoIFMA}{
    \begin{figure}[htbp]
        \centering
            
        \includegraphics[width=0.2\textwidth]{IMAGENS/logo_IFMA.png}
            
        \label{fig:logo}
    \end{figure}
}
%----------------------------------------------------------------------------%

%-------------------------------MACRO - CAPA---------------------------------%
\newcommand{\capa}{

    \logoIFMA % Chama a logo do IFMA

    \vspace{-0.9cm}
    
   \begin{center}
        \instituicao
    \end{center}

    \begin{center}
        \departamentoCurso
    \end{center}

    \begin{center}
        \curso
    \end{center}
    
    \vfill
    
    \begin{center}
        \autor
    \end{center}

    \vfill

    \begin{center}
        \titulo
    \end{center}

    \begin{center}
        \subTitulo
    \end{center}

    \begin{center}
        \volume
    \end{center}

    \vfill

     \begin{center}
        \local
    \end{center}

     \begin{center}
        \ano
    \end{center}
    
}
     
%----------------------------------------------------------------------------%

%-------------------------MACRO - FOLHA DE ROSTO-----------------------------%
    \newcommand{\folhaRosto}{
        \begin{center}
            \autor
        \end{center}

        \vfill
        
        \begin{center}
            \titulo
        \end{center}

        \begin{center}
            \subTitulo
        \end{center}

        \begin{center}
            \volume
        \end{center}

        \vfill

        \begin{flushright}
            \natureza
        \end{flushright}
            
        \begin{flushright}
            \orientador
        \end{flushright}
        
        \vspace{-1.5cm}
        
        \vfill

        \begin{center}
            \local
        \end{center}

        \begin{center}
            \ano    
        \end{center}

      
    }
%----------------------------------------------------------------------------%

%---------------------------MACRO - FICHA CATALOGRÁFICA----------------------%
    \newcommand{\fichaCatalograficaMacro}{
        \fichaCatalografica
    }
%----------------------------------------------------------------------------%

%------------------------------MACRO - ERRATA--------------------------------%
    \newcommand{\errata}{
        \sectionCentralizada{ERRATA}
        
        \referenciaErrata

        \tabelaErrata
    }
%----------------------------------------------------------------------------%

%-----------------------MACRO - FOLHA DE APROVAÇÃO---------------------------%
    \newcommand{\folhaAprovacao}{
    
        \begin{center}  
            \autor
        \end{center}

        \vfill
        
        \begin{center}
            \titulo
        \end{center}

        \begin{center}
            \subTitulo
        \end{center}
        
        \vfill

        \begin{flushright}
            \natureza
        \end{flushright}
        
        \begin{flushleft}
            \dataAprovacao
        \end{flushleft}

        \vfill
            
        \begin{center}
            \bancaExaminadora
        \end{center}

        \vfill

        \begin{center}
            \assinaturaorientador
        \end{center}

        \begin{center}
            \marcosViniciusDeFreitasBorges
        \end{center}

        \begin{center}
            \instituicaoifma
        \end{center}

        \begin{center}
            \assinaturaorientador
        \end{center}

        \begin{center}
            \diegoSantiagoDeMenesesCarvalho
        \end{center}

        \begin{center}
            \instituicaoifma
        \end{center}

        \begin{center}
            \assinaturaorientador
        \end{center}

        \begin{center}
            \pedroAlmirMartinsDeOliveira
        \end{center}

        \begin{center}
            \instituicaoufpi
        \end{center}
    }
%----------------------------------------------------------------------------%

%----------------------------MACRO - DEDICATÓRIA-----------------------------%
    \newcommand{\dedicatoria}{
        \vspace*{\fill} % Empurra o texto para a parte mais baixa possível.
    
        \begin{flushright} 
            \dedicatoriaTexto % Texto da Dedicatória 
        \end{flushright}
    
        \restoregeometry %Restaura as margens originais para as próximas páginas. NÃO PODE TIRAR ISSO, senão desrregula as margens das próximas páginas.
    }
%----------------------------------------------------------------------------%

%-----------------------------MACRO - EPÍGRAFE-------------------------------%
    \newcommand{\Epigrafe}{
        \vspace*{\fill} % Empurra o texto para a parte mais baixa possível.

        \begin{flushright} 
            \epigrafeTexto % Texto da Epígrafe
        \end{flushright}

        \vspace{-0.9cm}
    
        \begin{flushright}
            \autorEpigrafe
        \end{flushright}
        
        \restoregeometry % Restaura as margens das outras páginas.
    }
%----------------------------------------------------------------------------%

%------------------------MACRO - LISTA DE ILUSTRAÇÕES------------------------%

    \newcommand{\listaIlustracoes}{
    \sectionCentralizada{LISTA DE ILUSTRAÇÕES}
        \vspace{-0.3cm}
         \novoBlocoPreTextual{
            \TextoListaDeIlustracoes
        }
    }
%----------------------------------------------------------------------------%

%------------------------MACRO - LISTA DE TABELAS----------------------------%
    \newcommand{\listaTabelas}{
        \sectionCentralizada{LISTA DE TABELAS}
        \vspace{-0.3cm}
        \novoBlocoPreTextual{
            \TextoListaDeTabelas
        }
    }
%----------------------------------------------------------------------------%

%------------------------MACRO - LISTA DE Quadros----------------------------%
    \newcommand{\listaQuadros}{
        \sectionCentralizada{LISTA DE QUADROS}
        \vspace{-0.3cm}
        \novoBlocoPreTextual{
            \TextoListaDeQuadros
        }
    }
%----------------------------------------------------------------------------%


%-------------------MACRO - LISTA DE ABREVIATURAS E SIGLAS-------------------%
    \newcommand{\listaAbreviaturas}{
    \sectionCentralizada{LISTA DE ABREVIATURAS E SIGLAS}
        \vspace{-0.3cm}
        \novoBlocoPreTextual{
            \TextoListaDeAbreviaturas
        }
}

%------------------------MACRO - LISTA DE SÍMBOLOS---------------------------%
    \newcommand{\listaSimbolos}{
        \sectionCentralizada{LISTA DE SÍMBOLOS}
        \vspace{-0.3cm}
        \novoBlocoPreTextual{
            \TextoListaDeSimbolos
        }
    }

%--------------------------MACRO - SUMARIO ---------------------------------%
    \newcommand{\sumario}{
        \sumario
}

%--------------------------MACRO - GLOSSÁRIO---------------------------------%
    \newcommand{\glossario}{
        \sectionCentralizadaComSumario{GLOSSÁRIO}
        \vspace{-0.3cm}
        \novoBlocoTexto{
            \TextoGlossario
        }
    }

%--------------------------MACRO - APÊNDICE(S)------------------------------%
    \newcommand{\apendice}{
        \sectionCentralizadaComSumario{APÊNDICE(S)}
        \vspace{-1cm}
        \novoBlocoPreTextual{
            \textoApendice
        }    
}

%------------------------------MACRO - ANEXO(S)------------------------------%
    \newcommand{\anexos}{
        \sectionCentralizadaComSumario{ANEXO(S)}
        \vspace{-1cm}
        \novoBlocoPreTextual{
            \TextoAnexos
        }
    }

%-----------------------------MACRO - INDICE (S)------------------------------%
    \newcommand{\indice}{
        \sectionCentralizadaComSumario{ÍNDICE(S)}
        \vspace{-0.8cm}
        \novoBlocoPreTextual{
            \begin{center}
                \textoIndice
            \end{center}
    }    
}

%------------------------------MARGENS---------------------------------------%
\geometry{ % Margens do documento
    top=3cm, 
    bottom=2cm, 
    left=3cm, 
    right=2cm, 
}

%---------------------------------------------------------------------------%


