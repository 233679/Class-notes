---
tags:
  - Computer_Science/Translation
---
# Compiler
A [[Computer-Science/Programs/Compiler|Compiler]] [[../Programs/Compile|Compiles]] programs.
![[../Programs/Compile]]
In general a [[Computer-Science/Programs/Compiler|Compiler]] creates code that executes faster than code run by an [[Computer-Science/Programs/Interpreter|Interpreter]].

### Aspects of Good Compiler
- Works correctly
- Detects all static errors
- Produce meaningful diagnostics
- Continue after the first error to try and find further errors in the program
- Compile quickly
- Easy to use
- Documented and easy to maintain

### Stages of Compilation
During compilation, key data structures are often created to speed up complication. An example of this is a "Symbol Table", which can be used to map tokens to the purpose of the token.
#### Lexical Analysis
All unnecessary text in the source code is removed, this includes whitespace and comments. As they are not needed for the program to function and can get in the way of further parsing.
Then all the keywords, variables, methods, and other source code is converted into individual tokens (also known as "lexemes"), which are passed onto the next stage. Tokens can be anything, from variables to even an opening bracket.
#### Syntax Analysis
The tokens from the Lexer (lexical analysis) are checked to ensure that they represent follow the grammar of the programming language, which is represented by a [[#Context Free Grammar]]. Such as ensuring that an opening bracket is always followed by a closing bracket.

The tokens are converted into an [[#Concrete Syntax Tree]] as part of validating that tokens are compatible with the the [[#Context Free Grammar]].
#### Semantic Analysis
The code is checked whether the parsed code is semantically correct. E.G. The rules of the type system are enforced, that all variables have been initialised, functions are called on the correct data types.
#### Intermediate Code Generation
The code is translated into an intermediate language, which makes it easier to translate into [[Computer-Science/Programs/Machine Code|Machine Code]] later.
#### Optimisation
The code is optimised for various different factors, such as performance or size.
#### Code Generation
The optimised intermediate code is converted into the finial machine code to be executed by the hardware.

### Context Free Grammar
Context free grammar is used to define the legal syntax of the programming language. A popular format for context free grammar is "[Backus-Naur form](https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_form)". The definition of the language syntax is often recursive to allow for representing the complex syntactic relationships.
The context free grammars are used to communicate language syntax between other programmers, it is not used by the compiler directly.

### Concrete Syntax Tree
A tree data structure that represents the full syntax of the program, made out of the syntax defined in a [[#Context Free Grammar]].

---

[[#Lexical Analysis]] and [[#Syntax Analysis]] are known as the Front End and are platform agnostic.