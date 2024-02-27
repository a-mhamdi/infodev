#import "Class.typ": *

#show: ieee.with(
  title: [#text(smallcaps("Lab #1: Getting started with Julia"))],
  /*
  abstract: [
    #lorem(10).
  ],
  */
  authors:
  (
    (
      name: "Abdelbacet Mhamdi",
      department: [Senior-lecturer, Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "a-mhamdi",
    ),

    /*
    (
      name: "Student 1",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "abc",
    ),
    (
      name: "Student 2",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "abc",
    ),
  */

  )
  // index-terms: (""),
  // bibliography-file: "Biblio.bib",
)

= Exercises
The following exercises will help you practice various aspects of Julia, such as functions, loops, conditionals, arrays, and file processing. Remember to break down the exercises into smaller steps and test your code along the way. You are required to carry out this lab using either of:

#figure(
    stack(
        dir: ltr,       // left-to-right
        spacing: 1cm,   // space between contents
        image("Images/Jupyter.png", width: 10%, fit: "contain"),
        image("Images/Pluto.svg", width: 50%, fit: "contain"),
    ),
)

#exo[Fibonacci Sequence][Write a function that generates the Fibonacci sequence#footnote[The Fibonacci sequence starts with $0$ and $1$, and each subsequent number is the sum of the two preceding numbers.] up to a given number $n$.]

$F_(0) = 0 \ F_(1) = 1 \  F_(n) = F_(n-1)+F_(n-2) quad forall n >= 2$

```julia
# WRITE YOUR CODE HERE
```

#test[Display the Fibonacci sequence if $n=16$.]

#exo[Prime Number][Write a function that determines if a given number $n$ is prime#footnote[A prime number is a number greater than $1$ that has no positive divisors other than $1$ and itself.]. The function should return true if the number is prime and false otherwise.]

```julia
# WRITE YOUR CODE HERE
```

#test[Give the list of prime numbers less than $100$.]

#exo[Palindrome][Write a function that checks if a given string is a palindrome#footnote[A palindrome is a word, phrase, number, or other sequence of characters that reads the same forward and backward.]. The function should return true if the string is a palindrome and false otherwise.]

```julia
# WRITE YOUR CODE HERE
```

#test[Check the sentence "Was it a car or a cat I saw?". Disregard spaces and punctuation marks.] 

#exo[Matrix Operation][Implement functions to perform basic matrix operations such as matrix addition, matrix multiplication, and determinant calculation.]

```julia
# WRITE YOUR CODE HERE
```

#test[Test your functions with the following matrices
```julia
A = [1 2; 3 4]
B = [5 6; 7 8]
```
]

#exo[File Processing][Write a program that reads a text file and counts the occurrences of each word. Display the word count for each unique word in the file.]

```julia
# WRITE YOUR CODE HERE
```

#test[Redirect the output of 'man ls' command to a dummy file and display the word count for 'ls'
```bash
man ls > dummy
```
]

