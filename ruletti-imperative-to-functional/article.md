# From imperative C64 Basic to functional-reactive programming

**Comparing the programming style of my 1987 Commodore 64 Basic Roulette-game to a modern functional-reactive re-implementation with ClojureScript, Re-frame and React reveals a world of difference in the ways in which we can command our computers.**

In the preceding posts I have been describing [a roulette-game I wrote for Commodore 64 in 1987](https://www.brotherus.net/post/blast-from-my-commodore-64-past), the [re-creation of the game with modern tools and languages](https://www.brotherus.net/post/ruletti-re-born-after-34-years) and the [difference in development experience now and then](https://www.brotherus.net/post/developer-experience-in-1987-with-c64-vs-modern-tools). Here I want to go deeper to core meat of programming: to compare at source-code and architectural level the Commodore64 imperative Basic program with PRINT-based UI to the modern functional-reactive Clojure-version with React / Re-Frame -based UI.

## Basic, Basic, Basic, ...

After [I got my VIC-20 computer in 1982](https://www.brotherus.net/post/humble-beginnings-the-vic-20) at age of 9 and later Commodore 64 in 1984, I continued to learn more and more Basic-programming. Initially my only source of learning was finnish-language version of the [VIC-20 user manual](http://cini.classiccmp.org/pdf/Commodore/VIC-20%20User's%20Manual.pdf). From 1984 I started to get more examples from program-listings in [MikroBitti-magazine](https://www.mikrobitti.fi/) which also later published my 1987 game.

[![vic20-manual](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ruletti-imperative-to-functional/vic20-manual.jpg)](http://cini.classiccmp.org/pdf/Commodore/VIC-20%20User's%20Manual.pdf)


