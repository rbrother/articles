# Why do I like Programming so much?

**Programming is like building with LEGOs but with infinite number of blocks and lightning fast servant performing the repetitive parts of adding blocks**

![lego-towers](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/i-like-programming/lego-towers.jpg)

Last summer me and my wife and kids were driving towards our summer-cottage at Mäntyharju. On those long drives we sometimes pass time by me explaining enthusiastically about some topic in Chemistry, Physics, Astronomy or Programming - something that my wife and adult boys to my delight tolerate increasingly well, recently often even showing signs of interest and joining the discussion.

On this trip I was discussing the benefits of using immutable data structures and how Clojure leverages that advantage - a topic that my oldest son can already reasonably participate in. At some point my wife asked: "*Why do you like programming so much?*" I was baffled for a while by such meta-level question - indeed why *do* I like programming so much?

After thinking about it for a while, I was able to answer: I like programming because I like *building* and programming *is* building *with super-powers*.

In my childhood with my friends, if we were not building sand-castles outside we were almost always building with LEGOs: towers, houses, cars and space-ships. I loved LEGOs. I had a lot of LEGOs. I took pride in building a lego-sets for 12-year olds when I was 7. Before I got my first computer, [VIC-20, at age of 9](/post/humble-beginnings-the-vic-20), I always wished LEGOs as gift for Christmas and my birthday.

I liked to play with LEGOs even after I learned BASIC-programming in my VIC-20 (and later Commodore 64), but it slowly dawned on me how much more powerful programming was in building creations of text, graphics, sound and more. Most handicraft hobbies and jobs involve a lot of repetitive work: manual repetitive adding blocks to the LEGO-tower, manual repetitive looping of thread in knitting, manual repetitive shoveling of earth in gardening, manual repetitive placing of pieces with jigsaw puzzles. Time spent in such activities might be only 10% creative (designing what you want to create) and 90% repetitive (manual repetitive building steps). The magic of computer programming is that with a program you can automate practically all of the repetition so that the programmer can focus mostly on the creative design, designing the patterns or features that will be repeated or executed or built by the computer.

![human-robot-legos](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/i-like-programming/human-robot-legos.webp)

## Maximizing the creative ratio

Software guru **Martin Fowler**, in his classic 1999 book *Refactoring*, went as far as to say that "*Repetition is root of all software evil*", which become a widely quoted principle in software-design. This means not only that programmers should avoid repetitive tasks, but that the resulting program code should be free from repeating patterns or duplication.

**Bill Gates** famously said that he likes to choose a lazy person to do a difficult job because "*a lazy person will find an easy way to do it*". A Lazy (and smart!) developer by avoiding repetitive tasks improves his creative focus and productivity directly. The additional benefits of avoiding code duplication are in the reduced amount of code to maintain and reduced possibility for bugs from one duplicate not correctly matching others - if there is no *single source of truth*, then the different sources can disagree with each other.

The most important way of focusing on creation with any programming language is to find and use *existing libraries* for common needs instead of *re-inventing the wheel*. In the code that one does need to write, the programming paradigm and implementation language also affect how much developer can focus his time and effort to *describe* his creation (the *creative* time) and how much effort he needs to expend to performing ceremony, syntax and detail that are not directly related to the creative aim (the "plumbing" time).

## Functional programming

*Functional Programming* can often excel over *imperative programming* in focusing on what to build (declarative) instead of unnecessary details on how to build it. In imperative programming to make a LEGO-tower with a million blocks, you start with an empty tower and index-variable which will loop from 1 to 1 000 000, incrementing one by one and then in the loop add block to the tower. For example in classic imperative C#:

```csharp
List<Block> tower = new List<Block>();
for(int i; i<1000000; i++) {
    tower.add(block) }
return tower;
```

But when one thinks about it, the need to declare such auxiliary variables and the need to keep incrementing the counter-variable are completely irrelevant to the original task statement of "*create a tower of million blocks*". The corresponding code in a compact functional language like Clojure is much closer to the declaration of the original task:

```clojure
(repeat 1000000 block)
```

The ultimate creative aim of the (functional) programmer is to minimize plumbing in order to become as declarative as possible: almost like the mythical God of Old Testament who just makes things by declaring them into existence: "*Let there be light*" - no *how* needed! Although in the classic XKCD-cartoon we learn that Gods plans to use LISP were slightly compromised in the creation of world 😉:

![Lisp](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/i-like-programming/lisp.jpg)

## Hobby not easily outgrown

Most children will outgrow the childhood hobby of building LEGOs due to its limitations and so did I: it becomes somewhat *boring* to perform the repetition and eventually one runs out of pieces (or money to buy more pieces). But building with programming is virtually limitless and never becomes boring in this way: for a low fixed price one has virtually infinite building blocks at disposal and a modern computer can automatically assemble them to any desired patterns with enormous speed. 

Any activity in programming that is in risk of becoming repetitive can be further automated by the programmer on a higher level. It is hence not easy to find people who after learning to program well would have outgrown it or become bored. On the contrary, in software-development one can keep gathering for a lifetime new skills for even more powerful and hence delightful ways.

![programming-bliss](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/i-like-programming/programming-bliss.webp)
