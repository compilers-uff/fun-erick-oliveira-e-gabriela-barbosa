# Trabalho de conclusão do curso de Compiladores 2021.1

Alunos:

Erick Guimarães de Oliveira  
Gabriela Barbosa Freitas

Christiano Braga  
Instituto de Computação  
Universidade Federal Fluminense

- Data de entrega: 24/09/2021


# Palavras reservadas

Utilizamos as seguintes palavras reservadas para nosso compilador

```

eq keywords = ('fun '`( '`) '= '`, '~ '+ '- '* '/ '>= '> '<= '< '== 'or 'and 'if 'then 'else '|) .

```

acrescentamos | a lista de palavras para utilizar para subdividir os argumetos de uma que uma função pode aceitar.

A linhas a seguir foram editadas para aceitar uma lista 

```
     op fun_(_) =_ : Idn List Expr -> Expr [prec 50] .
     op _(_) : Idn List -> Expr [prec 10] . 
```

as outras alterações foram feitas em nó código para que fossem aceitas listas e que tudo pudesse funcionar corretamente, conforme solicitado.

# Execução de Fibinacci e Fatorial

Foi desenvoldido programas para rodar o Fibinacci e o Fatorial

Para executar o Fibonacci Normal deve-se fazer o seguinte por exemplo usando 3.

```
Maude> sload fun-io.maude
🎉 Fun Interpreter
Beta version, Sep. 2021
Fun > fload("fib.fun")
File fib.fun loaded!
Fun > run("fib(3)")

````
este codigo a cima resulta em 2 como resposta.

Onde o valor dentro de fib() pode ser qualquer inteiro.

Para o Fibonnaci com recurssão de cauda deve-se fazer o seguinte por exemplo usando 3. 

```
Maude> sload fun-io.maude
🎉 Fun Interpreter
Beta version, Sep. 2021
Fun > fload("tail_recursion_fib.fun")
File tail_recursion_fib.fun loaded!
Fun > run("fib(3)")
2
```

este codigo a cima resulta em 2 como resposta.
Onde o valor dentro de fib() pode ser qualquer inteiro.

Para o Fatorial Normal deve-se fazer o seguinte por exemplo usando 3.

```
Maude> sload fun-io.maude
🎉 Fun Interpreter
Beta version, Sep. 2021
Fun > fload("fat.fun")
File fat.fun loaded!
Fun > run("fat(3)")

````

este codigo a cima resulta em 6 como resposta.
Onde o valor dentro de fat() pode ser qualquer inteiro.


Para o Fatorial com recurssão de cauda deve-se fazer o seguinte por exemplo usando 3. 

```
Maude> sload fun-io.maude
🎉 Fun Interpreter
Beta version, Sep. 2021
fload("tail_recursion_fat.fun")
File tail_recursion_fat.fun loaded!
Fun > run("fat(3)")

````

este codigo a cima resulta em 6 como resposta.
Onde o valor dentro de fat() pode ser qualquer inteiro.


Para testar o apply, por exemplo, pode-se utilizar o fatorial como exemplo usando o valor 3.

```
Maude> sload fun-io.maude
🎉 Fun Interpreter
Beta version, Sep. 2021
Fun > fload("apply-list.fun")
File apply-list.fun loaded!
Fun > run("apply(fat | 3)")

````

este codigo a cima resulta em 6 como resposta.
Onde o valor do segundo argumento dentro de apply pode ser qualquer inteiro.

# Objetivo

Estender a linguagem Fun e seu interpretador com suporte a definição
de uma função com um número indefinido de parâmetros e sua chamada.

# Etapas

1. Modifique a gramática de Fun para dar suporte a declaração de
   funções com vários paraâmetros.
2. Modifique o compilador de Fun para Π IR de forma que declarações e
   expressões apropriadas sejam geradas a partir do código Fun.
3. Teste sua estensão implementando versões que utilizem recursão de
   cauda (_tail recursion_) das funções ```fat``` e ```fib```. Modifique também o
   exemplo da função ```apply```.
