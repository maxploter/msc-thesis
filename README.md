# Arvutiteaduse instituudi bakalaureuse- ja magistriõppe lõputööde LaTeX mall

Siin asub arvutiteaduse instituudi bakalaureuse- ja magistriõppe lõputööde LaTeX mall. See mall on mõeldud abistava juhendina, kuidas Teie võite oma lõputööd vormistada. Konkreetsete reeglite jaoks tuleks vaadata [Tartu Ülikooli arvutiteaduse instituudis kaitsvate lõputööde nõuete ja hindamise](https://cs.ut.ee/en/content/thesis-deadlines-and-guidelines) dokumenti.

## Juhised

### Overleaf

TODO

### Visual Studio Code

Selleks, et kasutada seda malli **Visual Studio Code** töökeskkonnas, kõigepealt tõmmake ja paigaldage see töökeskkond: https://code.visualstudio.com/

Visual Studio (VS) Code on paljude võimsate laiendustega kergeloomuline töökeskkond. Selleks, et VS Code keskkonnas LaTeXiga tööd teha, tuleks paigaldada järgnevad töökeskkonna laiendused:
* **LaTeX Workshop** – Põhiline laiendus, mis võimaldab LaTeXiga tööd teha.
* **Hide Gitignored** – See laiendus peidab ära töökeskkonna failivaaturi paneelist suurearvulised LaTeXi tööfailid.

Te peate ka LaTeXi eraldi oma arvutisse paigaldama.

#### Windowsil

Tõmmake alla [Tex Live](https://www.tug.org/texlive/windows.html#:~:text=install%2Dtl%2Dwindows.exe) tarkvara. Paigaldamisel te võite valida *Advanced* seadistused ja muuta *full scheme* (8 GB) valiku *basic scheme* (~400 MB) valiku peale. Olenemata valikust peate te käsitsi paigaldama ka `latexmk` ja `latexmk.windows` paketid.

Kui te valisite *basic scheme* valiku, siis peate te paigaldama ka järgnevad paketid: 
```
xcolor, parskip, etoolbox, microtype, kastrup, newtx, xpatch, xkeyval, xstring, fontaxes, tex-gyre, titlesec, caption, wrapfig, collectbox, adjustbox, footmisc, fancyvrb, fvextra, upquote, lineno, csquotes, cachefile, float, fp, latex2pydata, minted.windows, newfloat, pgf, pgfopts, minted, logreq, biblatex, biber.windows, biber, babel-estonian, hyphen-Estonian, euenc, tipa, xunicode, fontspec, lua-ul, tabularray, ninecolors
```

Kui VS Code töökeskond ütleb, et ta ei leia üles konkreetset paketti, siis kasutage Tex Live tarkvara, et see paigaldada.

Siin on ka üks põhjalik õpetus: https://blog.jakelee.co.uk/getting-latex-working-in-vscode-on-windows/

#### Linuxil

TODO

#### Macil

TODO

## Mured ja kontaktinfo

Probleemide või küsimuste korral võtke ühendust (mailto:ati.study@ut.ee)[ati.study@ut.ee]

---
# The LaTeX Thesis Template for the Bachelor's and Master's Theses at the Institute of Computer Science

Here are the LaTeX thesis templates for to help with writing your bachelor's or master's thesis at the Institute of Computer Science. The template is for guidance on how Your thesis could be formatted. For specific rules, refer to the [Guidelines for preparing and grading of graduation theses at the Institute of Computer Science of the University of Tartu](https://cs.ut.ee/en/content/thesis-deadlines-and-guidelines) document

## Instructions

### Overleaf

TODO

### Visual Studio Code

To use this template with **Visual Studio Code**, first download and install the IDE: https://code.visualstudio.com/

Visual Studio (VS) Code is a lightweight IDE with very powerful extensions. To work with LaTeX in VS Code, install the following extensions from within the IDE:
* **LaTeX Workshop** – The main extension that allows working with LaTeX.
* **Hide Gitignored** – This will hide all the many working files of LaTeX from your IDE-s Expolorer panel.

You also need to separately install LaTeX itself on your computer.

#### On Windows
Download the [Tex Live](https://www.tug.org/texlive/windows.html#:~:text=install%2Dtl%2Dwindows.exe) software. When installing, you can select *Advaned* and change *full scheme* (8 GB) to *basic scheme* (~400 MB). Regardless of your choice, you have to install the packages `latexmk` and `latexmk.windows` manually.

If you chose the *basic scheme*, you need to also install the following packages: 
```
xcolor, parskip, etoolbox, microtype, kastrup, newtx, xpatch, xkeyval, xstring, fontaxes, tex-gyre, titlesec, caption, wrapfig, collectbox, adjustbox, footmisc, fancyvrb, fvextra, upquote, lineno, csquotes, cachefile, float, fp, latex2pydata, minted.windows, newfloat, pgf, pgfopts, minted, logreq, biblatex, biber.windows, biber, babel-estonian, hyphen-Estonian, euenc, tipa, xunicode, fontspec, lua-ul, tabularray, ninecolors
```
If at any time VS Code tells you that it cannot find a specific package, use the Tex Live software to install it.

There is a comprehensive tutorial also here: https://blog.jakelee.co.uk/getting-latex-working-in-vscode-on-windows/

#### On Linux

TODO


#### On Mac

TODO

## Issues and Contact

In case of problems or questions, contact (mailto:ati.study@ut.ee)[ati.study@ut.ee]
