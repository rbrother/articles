# Excel-revolution at Steel Factory in 1989

**I got my first paid job as software developer at age of 16 in the summer of 1989. This was at the time in history when Personal Computers were appearing on desks of managers at offices and factories, challenging and slowly chipping away the status-quo of mainframes and mini-computers of the era. That provided unlikely niche for some self-taught computer-geeks like me to participate in wild development of real factory production-systems in a way that would be difficult to envision today.**

![leaf-springs](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ovako-excel/leaf-springs.webp)

<small>Leaf spring similar to the ones produced at Ovako Steel factory at Karjaa</small>

The history of the *Billnäs Steel Spring factory* in Finland's South-West coastal area goes back all the way to 1641 when **Carl Billsten** built the first iron factory close to the rapids of *Mustio river*. The industrial companies that continued the tradition of these initial factories had lots of ups and downs during the centuries that followed, eventually diversifying to various steel products. Steel leaf-spring production was started in Billnäs in 1920s and Billnäs springs become known for their high quality and used in railway cars and trucks by customers like Volvo, Scania, Man and Finnish VR-Railways. During the years the spring-factory changed owner many times in various industrial re-arrangements and its name changed from Billnäs to *Fiskars* in 1959, to *Ovako* in 1979, to *Ovako Steel* in 1986, to *Imatra Steel* in 1990 and to *Styria* in 2003.

I got connected to the Ovako Steel factory thanks to **Ensio "Enska" Virtanen** who was in 1989 working as student counselor at [Karjaa Comprehensive School](https://www.yhteiskoulu.fi/). The Finnish comprehensive school curriculum includes a period of work-training where the students need to find a company that is willing to employ them for a nominal salary for two weeks. Usually such jobs are simple and don't require special skills. But Enska been building extensive set of connections to the local companies and he had keen eye for special skills of his students like my [Commodore 64 programming hobby](https://www.brotherus.net/post/blast-from-my-commodore-64-past). So when my time for finding work-training come in spring 1989, he was able to "sell" me as a "bit smarter computer-geek" and grandson of [industrialist Perh Sommar](https://fi.wikipedia.org/wiki/Pehr_Sommar) to **Matti Toivonen**, the production-planning manager at the Ovako factory.

![karjaa-school.jpg](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ovako-excel/karjaa-school.jpg)

<small>Karjaa comprehensive school</small>

## Pushing Lotus Symphony to the limit

The two-week training at the factory did not yet include any proper programming: the tasks that Matti gave me were mostly involving spreadsheet processing and development with [Lotus Symphony spreadsheet](https://en.wikipedia.org/wiki/Lotus_Symphony_(MS-DOS)) (very similar to the more famous Lotus 1-2-3) running on MS DOS. 

![lotus-symphony.png](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ovako-excel/lotus-symphony.png)

<small>Lotus Symphony spreadsheet software on MS DOS</small>

The two-week training went well enough for Ovako and Matti to offer me contract for two-month summer-work in the summer of 1989. I was quite happy of this opportunity - better than the job of picking strawberries that was my Plan B.

Lotus Symphony continued to be the main tool during the summer months. But this time the tasks become more advanced: writing Lotus macro-programs for more complex spreadsheet applications. While I do like programming in principle, the Lotus Symphony macro-programming capabilities were by far the most limited I have ever encountered - even more restricted than the simple [Commodore 64 BASIC](https://www.brotherus.net/post/blast-from-my-commodore-64-past) -features that I was most familiar with.

The Lotus macros were mainly meant for repeating a fixed static sequence of key-presses that would enter data to the spreadsheet cells or execute menu commands. The key-presses would be stored in a spreadsheet document column and when executed could open and work on another documents. For example, some macro-program sheet cell A25 could have "/WCCS23" which would perform menu-command **W**orksheet-**C**onfig-**C**olumn-**S**et-23 which would set the current column width to 23 characters. (For a taste of how those macros look like, see [this website](https://www.palmtoppaper.com/ptphtml/9/ptp90043.htm) for small examples).

Such keystroke-playback-system can hardly be called a *programming language*. It has no statements for structure, no statements for loops, no variables, no dynamic behavior. With static sequence of operations, it seems impossible tool for any general processing. But in the absence of better alternatives at that point I discovered a super hacky way to make the system [Turing-complete](https://en.wikipedia.org/wiki/Turing_completeness): write code that writes code at runtime. For example the macro cell A24 would contain expression that concatenates string "/WCCS" with the (dynamic) value of some "variable" cell (say F3) and then place the result to cell A25. If the cell F3 contained, say, number 17, when the constructed command string generated to A25 would be "/WCCS17" and then when execution would next proceed to A25 that would be executed to set current column width to 17.

Needless to say, such "dynamic" macro-program is even much less readable (and extremely bug-prone) compared to the already horrific static mess. But I got some spreadsheet automation applications working in this way during the summer and Matti and his colleagues were were able to save some time with the resulting automation in the factory production-planning office. And having started my professional career with such nightmarish challenging programming environment, any subsequent improvements since then have felt very delightful 😉

## Raising the bar: The ODETTE EDI-project

Towards the end of the summer a plan for a more ambitious project started to take place. This was related to the process of main customers like Volvo and Scania placing orders for springs. In 1989 this order-process still involved customers weekly printing order-listings from their own production-planning systems and sending them to Ovako by mail. These documents contained tens of pages of tables enumerating the order-counts of different spring-products for several weeks to the future. These were then entered (manually, by typing keyboard) to the Ovako factory mini-computer system and formed basis for the scheduling of various production activities like running factory machines, warehouse-operations and ordering of raw-materials. And if this was not bad enough, the plans of the customers were always in flux and plan sent by the customer on some week could change several future order-values of plan sent on the previous week.

To replace the use of paper with Electronic Data Interchange (EDI) in this and related processes, several automotive industry members had been creating [industry-standards group ODETTE](https://www.odette.org/) (*Organization for Data Exchange by Tele Transmission in Europe*) in 1984.

![odette-page.png](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ovako-excel/odette-page.png)

<small>ODETTE-consortium web-page in 2025</small>

In the summer of 1989 the standard for first critically needed electronic document was ready: `DELINS` (**DEL**ivery **INS**tructions) message that customers could use to descibe their orders for various products to various future dates. Furthermore, Ovako main customers Volvo and Scania had been implementing support for this message to their systems and ready to send them to Ovako. Ovako production-planners were also eager to get rid of the mountains of paper-printouts accumulating on their desks every week.

Before summer 1989 was over, a plan had been formulated: I would be hired by Ovako corporation to develop a software-system for:

1. Reading, processing and merging ODETTE order-messages from X.25 network by Ovako customers into a central Excel order database
1. Export relevant order-data to the factory's mini-computer system for further production-planing tasks
1. For each shipment of products generate related ODETTE-messages and
1. Generate and print standard shipping labels with barcodes for shipment-boxes.

More detailed specifications would be provided while the project progressed by the Matti Toivonen from production planning and **Kaj Bredenberg** from Ovako IT-department. The project would be started still during my summer-work period and when my school-year started I would continue programming in evenings and weekends. I was paid 50 Finnish Marks per hour (about 20 €/h in today's money adjusted for inflation). I would work mostly from home (Ovako would provide a computer for me), occasionally visiting the office to deliver and test new versions of the application.

## MS Excel 2.0 to the rescue

It was clear that this far more ambitious project required more advanced tools than the limited Symphony macros. And that gap was filled with the *very first version of Microsoft Excel* on the Windows-platform.

While Microsoft made the original Excel 1.0 already in 1985, that version was only for the *Apple Macintosh* computer. The first version for their own Windows-platform was launched in 1987 and had version-number 2.0. In the fall of 1989 this miracle-software was introduced to me by Kaj Bredenberg at Ovako and oh-boy what an improvement it was over the Lotus Symphony! It is not wonder that Excel eventually won the spreadsheet wars and the word "Excel" even become synonymous with "spreadsheet".

![excel2](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ovako-excel/excel2.png)

<small>Excel 2.0, the first Excel on Windows. Note the meager 77 *kilobytes* of memory available for user data</small>

But in summer of 1989 Excel was still a rare beast and struggling to gain foothold over the established Lotus products. Making things worse for Microsoft, Windows itself was also not yet very widely used in its 2.1 incarnation whereas everyone had MS-DOS (which Lotus run on). We think of Excel as Windows software, but in those early years the requirement of having Microsoft Windows in order to use Excel was too limiting for the business. 

Microsoft solved this chicken-and-egg problem in a way that sounds quite crazy today: *Excel 2.0 come with mini-version of Windows built-in*. So, on my Ovako-laptop I could just write "excel" *at the DOS-prompt* and that would launch "Windows Lite" and Excel 2.0 on top of that! And although Excel was already very feature-rich in its initial version, it was definitely not bloated in terms of resources: with my 12 MHz 286 PC with 1 MB RAM the total launching of Windows + Excel from MS-DOS prompt took only 8 seconds! With my current PC having 16 000 times more memory and 2 000 times faster processor and 500 times faster hard-drive, the startup-time of this combo is still much slower.

## Excel Macro-productivity

The best thing in Excel over Lotus spreadsheets was vastly more powerful macro-language. While this was not yet the *Visual Basic for Applications* (which come many years later in Excel 5.0), it was something that actually resembled a real programming-language with variables and structures and programming-oriented statements and functions. These XLM-macros become the cornerstone of the Ovako spring-factory ODETTE-software I developed.

![excel2-macro.png](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ovako-excel/excel2-macro.png)

<small>Excel 2.0 XLM-macros, long before introduction of *Visual Basic for Applications* (VBA) used special spreadsheet formulas for program constructs</small>

Since this was time before online documentation and tutorials, I had to read the actual paper-manual of Excel to get familiar with the macro-language syntax and functions. After that the project progressed well and I felt I was able to find suitable Excel macro-features for the project requirements without resorting to significant hacks.

Productivity with the new tools was even better than expected. Matti Toivonen recalled in 2022:

> We were surprised that during a single weekend you implemented the first working version of the software.

Kaj Bredenberg recalled in 2022:
> At the time we in Ovako IT had estimated that it would take a month at minimum for you to learn Excel for doing significant development. We were most surprised that you had essentially completed the application in two weeks.

The system was started to be used for real factory order processing and production planning quite soon in autumn 1989, replacing paper-based orders from Volvo and Scania. The role of the ODETTE Excel-macro in the order processing and production-planning is shown in the diagram that Kaj Bredenberg had produced (text in Finnish, translated below the diagram):

![odette-system.png](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ovako-excel/odette-system.png)

<small>Block diagram showing the electronic order-processing at the Ovako factory in 1990s</small>

The diagram shows features of the system:

1. ODETTE product-order messages (DELINS) being transmitted from customers (Scania and Volvo) to Ovako Billnäs factory via the X.25 network
1. ODETTE-messages received by 3rd party Odex-software
1. The ODETTE Excel-macro (yellow box) reading and processing the received order-messages
1. The Excel-macro produced summary report-tables showing the combined orders from customers by product week (rows) and product type (columns). Another report calculated deltas (differences) of newly received order-message to previous one. Both reports were used by the factory production-planning personnel for adjusting internal production plans and orders for raw-materials, supplementing the Mini-computer based planning system.
1. The Excel-macro also produced export-files for the factory's IBM Mini-computer system running TERTTU-software which was used for later steps in the production planning.

At times the processing power of the 286 PC:s of the time were bit stretched: a typical customer order-message contained 10 000 order-lines and after importing to Excel these had to be sorted before merging to the main order-sheet. Such sorting-task sounds trivial by today's standards, but on those PC:s it could take over a minute. While the processors themselves were slow, the main reason for slowness was that the data would not fit at one time to the 1 MB main memory - or what was free from the memory for spreadsheet data after loading of Windows and Excel - requiring Excel to swap parts of the dataset to disk and back during sorting.

## Work Continues

After the initial implementation and taking to use of the software, I continued developing additional features and improvements to the system. In addition to improvements to the Excel-macro itself, I adopted some other tools, like a faster pre-processor for the ODETTE-messages with QuickBasic.

I have no records on how many hours I worked for the project in the end, but after the initial summer work in 1989 I continued to be employed by the company part-time all the way to summer 1990 and then again full-time until autumn 1990 when I left to study to the [Atlantic College](https://www.atlanticcollege.org/) high-school in Wales. Perhaps 10 hours per week is realistic estimate, making the total hours somewhere around 500 from the part-time period and 300 more from the summer 1990.

![newspaper-interview.webp](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ovako-excel/newspaper-interview.webp)

<small>Local newspaper interviewed me (in Finnish) in August 1990 after I received scholarship to study at Atlantic College. Interview topics included the programming work at Ovako.</small>

During my high-school studies at Atlantic College is was difficult for me to continue the part-time work on the project. The study- and activity-schedule at this boarding-school was quite tight. Moreover, this was before internet was available, so communicating between Wales and Finland was restricted to slow paper mail (with disks) and prohibitively expensive long-distance phone-calls. We had few attempts to sending some requests and data with disks but it was too clumsy to be really usable. Here is one letter from Matti Toivonen to me during my second year at the college:

<img class="fullsize" alt="Letter from Matti" src="https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ovako-excel/kirje-matti.webp"/>

Matti wrote (translated):
> Greetings from our spring factory, we wish everything is going fine with you as before. I remember you told that you might be able to continue some small work if suitable topic comes up and now this has happened. (I suppose you have Excel available to use there?) The ODETTE-macro has limitations in performing the weekly summation with some new data-sets which I am sending here with a disk. We would need to calculate for example Volvo, Volvo Belgium and Volvo spare parts products in a weekly report. If something is missing or there is another reason why you cannot do this, let me know. List me the hours used as before, I suppose we can continue to pay to your old bank-account. If you have time on your forthcoming christmas holiday, do pay us a visit for a chat.

During my 1991 summer holiday back in Finland, I continued to work for the Ovako ODETTE-project full time. The main new feature add was support for `AVIEXP`-messages from Ovako to the customers notifying them of dispatching their ordered products for delivery. This was accompanied by creation of printed shipment-labels that were attached to the delivery pallets. I created these sticker-labels with [JetForm-software](https://en.wikipedia.org/wiki/JetForm) from data exported from the Excel database.

## Leaving Ovako

Summer 1991 was the last time I worked for Ovako: In summer 1992 I was traveling around the world and then in fall 1992 started in Helsinki University my studies of chemistry, physics, mathematics and computer science.

![employment-certificate.webp](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ovako-excel/employment-certificate.webp)

<small>My employment certificate from Ovako</small>

Kaj Bredenberg started his own consultant company in 1993 and continued to work on various Ovako Steel IT-projects, including ODETTE, as an external consultant. He did contact me once more in 1994 when I was living in Helsinki and asked if I would be interested in continuing ODETTE-processing based consulting / programming work in his company - there would be apparently many possible client companies that could utilize our skills. I declined, noting that I was fully occupied by my studies and work as a chemistry research assistant. At that time, I was still determined to pursue academic career in natural sciences and considered programming a side-track in my career. Perhaps I would have answered differently if I would have known that later in 2000 I would nevertheless [leave the academic world for a career in software development](https://www.brotherus.net/post/creating-the-infia-spectrum-analysis-software-in-1996-1998).

## The fading of the Mini-computer era

It is worth noting that that while the ODETTE Excel-system produced files to be imported to the factorys main minicomputer-system, my tasks never involved any software development on that system. It was a traditional "closed" system based on a IBM-minicomputer from 1970's running in a separate room and controlled with black-green terminals. It ran customized warehouse inventory and production planning software "TERTTU" developed earlier in a waterfall-process by Finnish Tietotehdas-corporation (predecessor Tieto Oy, then Tietoevry Oyj). It produced long reports in form of printed lists. None of the reports were obtainable in real-time: All the report requests done by Matti during a day were processed and printed during night - a large contrast to the more agile PC-based tools that we eventually developed. Getting new changes of fixes done to the TERTTU-software was both slow and expensive compared to the agile PC-based development.

The minicomputer running TERTTU-software was towards the end of my time at Ovako replaced by IBM AS/400 minicomputer running the OS/400 operating system (AS/400 was launched by IBM August 1988). The ODETTE Excel-macros were subsequently adapted to export the order-data to the AS/400 production planning application. The AS/400 system was somewhat more open than the preceding TERTTU-system: in addition to importing data, it was possible to make queries to its database from other computers. This allowed later even more ways to implement functionality with small, cheap and agile PC-programs outside of the main system, further chipping away from the role of the mini-computer environment.

## Factory dies - Software lives

Since my departure, the Billnäs steel-spring factory continued its operation, changing occasionally ownership and name. Until the last owner, [Frauenthal Group](https://www.frauenthal.at/en/), decided to [close the factory in 2006](https://www.hs.fi/talous/art-2000004379559.html), 15 years after my time there. At that time the factory was employing about 100 people and annual sales were about 17 million euros. The factory would probably still have been competitive on the market on its own, but unfortunately Frauenthal purchased several leaf-spring companies and then proceeding to eliminate their self-created "over-capacity", ending the century of production of high-quality steel-springs at Billnäs.

![roope-factory.webp](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ovako-excel/roope-factory.webp)

<small>Visiting the yard of the old Ovako Steel factory building in 2024. The office room where I had been working with Matti Toivonen is in the middle of the second floor. The building is not in factory use any more since the company was closed in 2006 but it is still used as a warehouse by various smaller companies.</small>

Matti Toivonen worked at the factory as the production manager all the way to the end in 2006 and Kaj Bredenberg also continued to be involved with various IT-projects at Ovako including further developments to the ODETTE Excel-macros.

More remarkably, the life of the Excel ODETTE-system continued even after the end of the Billnäs factory. Kaj Bredenberg had already bought the rights to the software from Ovako for his own consultant company. The application turned out to be general enough to be sold and customized by him to several other companies in the automotive industry. Last customer moved away from the Excel-macro-based ODETTE-processing software as late as 2016, giving it an unexpected 27-year lifespan in the industry.

[![bredenberg-consulting.webp](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ovako-excel/bredenberg-consulting.webp)](https://www.kb-consulting.fi/)

<small>The web page of Kaj Bredenber consulting company in 2022, still offering "EDI-applications for Automotive industry"</small>

## Epilogue: The Old Gang together again

After the initial publication of this blog post in 2022 I was able to get into contact through Facebook with Kaj Bredenberg, the Ovako IT-colleague from our 1989 ODETTE-project. To my delight, Kaj had also been throughout these years staying in contact with the Ovako production manager Matti Toivonen and knew his current whereabouts. So we were able to arrange a nice long lunch-meeting sharing our memories about the Ovako spring-factory and the ODETTE-project.

![old-gang.jpg](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/ovako-excel/old-gang.jpg)]

<small>Kaj Bredenberg, Matti Toivonen and myself at reunion in 2022 after 33 years</small>

Matti and Kaj were already close to 50 years old in 1989 when I was 16, so they had been for a while already pensioners - though Kaj as an entrepreneur had not completely let go of occasional customer cases. They were both able to remember many details about the project that I had forgotten - details which I have now been able to incorporate to the text above. Kaj was even able to dig out from his old backups a version of the Excel ODETTE-macro from 1995 - still very close to my original version - that I can now inspect again. Three minds with hazy old memories can nicely combine into a more clear story - and writing about these memories can serve as a good motivation for a nice get-together that might not otherwise happen 🙂 (Matti passed away two years later in 2024 at respectable age of 85)
