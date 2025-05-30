# Resurrecting Infia in 2025

**Backward compatibility of 25 years for software code is rare, especially if it involves Graphical User-Interfaces. With the [Infia spectrum-analysis software](/post/creating-the-infia-spectrum-analysis-software-in-1996-1998) I developed in 1996-1999 at Helsinki University, compilation to a modern version succeeded with surprising ease in a few hours, thanks to remarkable backward compatibility of Borland Delphi.**

[Infia](/post/creating-the-infia-spectrum-analysis-software-in-1996-1998) is the oldest professional payed project I retained [the full source code](https://github.com/rbrother/Infia). In retrospect for historical reasons it's nice that I retained the code. It would have been even nicer if I would have used some version control software like SVN or GIT and retained history of all edits and evolution of the code. But SVN was created only in 2000 and GIT in 2005. In 1996 my "version control" consisted only of occasional backup-copies of the code folder to another location.

I also retained the last [version 2.1 executable](https://github.com/rbrother/Infia/tree/master/Binaries%201999-12-01%20-%20Version%202.1) I had been compiling with Delphi 3 for Windows 95 in 1999. It can still be started without errors on Windows 11, which is remarkable testament to the binary backward compatibility of Windows-versions so far apart in time.

![Infia 2.1 EXE, Compiled in 1999, running on Windows 11 in 2025](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/resurrect-infia-2025/infia21.png)

However, the backward compatibility is still only 90% complete. For example some keyboard shortcuts don't work correctly or at all. These problems could probably be resolved by running the software in Windows 95 Virtual machine, but that is quite a hassle. So I got curious whether there was any way to still make a new compilation from the 1999 source-code.

## Delphi staying power

I started programming of Infia with Delphi IDE version 2 in 1996 and switched to Delphi 3 when it become available in 1997. So I went now in 2025 to check the later history of Delphi. I fully expected it had gone extinct at some later time in the past 25 years, but was surprised and delighted to found out that the development of Delphi has continued through all these years, leading to [remarkable history of Delphi versions](https://en.wikipedia.org/wiki/History_of_Delphi_(software)) and companies producing them:

* 1995 Borland Delphi
* 1996 Borland Delphi 2
* 1997 Borland Delphi 3
* 1998 Borland Delphi 4
* 1999 Borland Delphi 5
* 2001 Borland Delphi 6
* 2002 Borland Delphi 7
* 2003 Borland Delphi 8
* 2005 Borland Delphi 2005 (Delphi 9)
* 2006 Borland Delphi 2006 (Delphi 10)
* 2007 Codegear Delphi 2007 (Delphi 11)
* 2009 Codegear Delphi 2009 (Delphi 12)
* 2010 Codegear Delphi 2010 (Delphi 14)
* 2011 Embarcadero Delphi XE (aka Delphi 2011)
* 2011 Embarcadero Delphi XE2 (with RAD Studio XE2 "Pulsar")
* 2012 Embarcadero Delphi XE3
* 2013 Embarcadero Delphi XE4
* 2013 Embarcadero Delphi XE5
* 2014 Embarcadero Delphi XE6
* 2014 Embarcadero Delphi XE7
* 2015 Embarcadero Delphi XE8
* 2015 Embarcadero Delphi 10 "Seattle"
* 2016 Embarcadero Delphi 10.1 "Berlin"
* 2017 Embarcadero Delphi 10.2 "Tokyo"
* 2018 Embarcadero Delphi 10.3 "Rio"
* 2020 Embarcadero Delphi 10.4 "Sydney"
* 2021 Embarcadero Delphi 11 "Alexandria"
* 2022 Embarcadero Delphi 12 "Athens"

Note that the numbering essentially started from 1 again in 2011 with Delphi XE. So while jump from "Delphi 3" I originally used to "Delphi 12" of 2024 already sounds a big jump, with original naming convention the Delphi of 2024 should be considered "Delphi 25" 😉 It's a quite remarkable history with over 30 years of continuous development of the IDE, Object Pascal language and VCL Class libraries that comprise Delphi. And in fact it's even more years if one takes into account the Delphi evolution from earlier [Turbo Pascal for Windows](https://en.wikipedia.org/wiki/Turbo_Pascal#Turbo_Pascal_for_Windows) which was evolution from [Turbo Pascal](https://en.wikipedia.org/wiki/Turbo_Pascal) in 1983 (both of which I had also used).

Investigating the history of Delphi, I found nice [2024 Podcast from Embarcadero which celebrates 29 years of Delphi](https://www.youtube.com/watch?v=n68luA9X_KU) and goes through many parts of the history.

[![Celebrating 29 years of Delphi podcast](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/resurrect-infia-2025/delphi29.jpg)](https://www.youtube.com/watch?v=n68luA9X_KU)

## Opening the project

Delphi is now available as a free "Community Edition" version, so I proceeded to download the Delphi Community Edition 12.1 "Athens" (part of RAD Studio 12). I had another surprise about Delphi staying power when the software accepted sign-in with my Borland user-id [robert@iki.fi](mailto:robert@iki.fi) that I had created in 1997 and never used since 1999! Someone has been keeping old databases migrated thought all the years. Just a password reset and I was up and running.

Next I checked if I can still open my Delphi project file `Infia.dpr` from 1999, fully expecting that the syntax and content would have changed in 25 years too much to make it readable. Well, the syntax had been definitely evolving, but to my surprise and delight the Delphi 12.1 supported opening and converting past versions of projects *from 25 years ago*, so Infia project was imported and opened without any errors!

![Infia project opened in Delphi 12.1](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/resurrect-infia-2025/delphi12.png)

## But does it compile?

Surely there would be insurmountable problems in compiling such old code? Surely the Object Pascal language and VCL libraries had been changing in many backward-incompatible ways with the 20+ major versions of Delphi since Delphi 3? Here was the final and biggest surprise: *there were only four minor compilation errors, all simple to fix*:

1. `LINALG.PAS(121): E2382 Cannot call constructors using instance variables.` This was probably bad code already in 1997, but the Delphi at time was more loose on the matter. Simple one-line fix.
1. `DBTables component not found`: Genuine bad reference in code that old Delhi version did not detect. Removed one line to fix.
1. `ResonanceUnit.pas(233): E2250 There is no overloaded version of 'StrToFloatDef' that can be called with these arguments.` Needed to add default value 0.0 for strtofloatdef calls, one line fix.
1. `VarArrayCreate() function not found`. The function had been moved to another library package, needed to add System.Variants reference.

After these fixes code compiles to new infia.exe and this starts up without errors on Windows 11! As expected, recompiled UI Works better than the 1998 binary version on Windows 11: Keyboard shortcuts and other UI-features seem to work now as well in Windows 11 the original binary worked on Windows 95.

There is one run-time error in the Loomis-Wood view. But this turns out to not come from my own code but from code of a 3rd party image-resampling library. I had taken this to use in 1998 to improve apparent resolution of Loomis-Wood plots by generating the plot on double resolution and then do bilinear down-sample to the final size. While this made sense with the VGA (640 x 480) and SVGA (800 x 600) screens of 1998, the high-resolution displays of 2025 have very little need for that. So I simply refactored the 3rd party resampling library away from the Loomis-Wood generation and in 1 hour this final feature was also working in the recompiled Infia.

## Infia 2025

![Infia recompiled to modern Windows exe in 2024 with Delphi 12](https://raw.githubusercontent.com/rbrother/articles/refs/heads/main/resurrect-infia-2025/infia-2024.png)

I added the newly compiled and tested Infia binaries to the [Infia GitHub repo](https://github.com/rbrother/Infia/tree/master/Binaries%202024-11-21%20-%20Version%202.2) along the earlier 1990s versions. As with the earlier versions, it's just one exe and one dll that can be copied to any folder.

It's remarkable backward compatibility that Borland Delphi can still compile and run the Infia codebase after 25 years with only tiny fixes. Especially the compatibility of the VCL class library that has all the UI widgets is stunning when one considers how the Windows versions have radically evolved during the years.

If I would make Infia today from scratch, I would naturally make it a reactive web-application, possibly with functional ClojureScript calculation core and some cloud database. But libraries and APIs today evolve with such pace I wouldn't expect such software to stay even five years in working condition without major maintenance to keep it compatible with changing environment.
