# COASA-Research

Repositório criado para armazenar os artefatos utilizados para a realização da pesquisa intitulada identificada pelo codinome COASA (Compiler Optimizations Applied to Sorting Algorithms).
Essa pesquisa foi idealizada/iniciada durante a disciplina de Compiladores, e executada em totalidade durante a disciplina de Pesquisa em Computação, ambas disciplinas do curso de Bacharelado em Ciências da Computação oferecido pelo [IFC Blumenau](http://blumenau.ifc.edu.br/).

## Sobre a Disciplina de Compiladores
- __Período:__ 5º Semestre - Ano 2022
- __Docente Responsável:__ Ricardo de la Rocha Ladeira
- __Ementa:__ Introdução à compilação. Análise léxica. Análise sintática. Análise semântica. Tabela de Símbolos. Detecção de erros. Especificação de uma linguagem de programação para uma máquina hipotética. Geração de código. Ambientes de execução. Otimização de código. Análise e projeto de compiladores. Tópicos especiais em compilador

## Sobre a Disciplina de Pesquisa em Computação
- __Período:__ 6º Semestre - Ano 2022
- __Docente Responsável:__ Luiz Ricardo Uriarte
- __Ementa:__ Métodos de Pesquisa em Computação. Modalidades de trabalhos científicos. Escrita Científica. Etapas para elaboração de um projeto de pesquisa. Revisão da Literatura. Pôsteres e apresentações orais.

## Sobre a Pesquisa

A pesquisa realizada tem como objetivo apresentar os impactos obtidos no que refere-se ao tempo de execução e compilação, considerando diferentes níveis de otimização para alguns algoritmos ordenação específicos. Para isso, foram realizados testes onde ambos os algoritmos desenvolvidos em C foram executados para tamanhos de entradas diferentes, considerando os casos de testes com o código compilado usando as principais opções de otimização de tempo ofertadas pelo compilador GCC.

No que diz respeito a organização do repositório, os arquivos encontram-se separados da seguinte forma:

- __Algoritmos:__ Implementação dos algoritmos de ordenação utilizados na pesquisa supracitada.
- __Arrays:__ Diferentes Arrays numéricos (criados de maneira automatizada - código no diretório) utilizados como entrada para a execução do processo de ordenação. São disponibilizados caso deseje-se replicar os cenários de testes da pesquisa. 
- __Scripts:__ Scripts em Shell para automatizar o processo de compilação e execução dos diferentes cenários de testes considerados pela pesquisa.
- __Sort:__ Programas utilizados para importar os algoritmos de ordenação, realizar a leitura dos arrays de entrada, e aplicação do processo de ordenação.

Os demais scripts disponíveis na raíz do repositório são utilzados para automatizar o processo de testagem e medição de resultados.

## Observação

A pesquisa realizada foi submetida a uma revista para análise e possível publicação futura. Sendo assim, os dados aqui presentes não devem ser reutilizados sem permissão. Caso uma publicação seja efetuada, ela será explicitada no atual repositório.
