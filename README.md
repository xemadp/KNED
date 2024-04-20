# KNED
K.N. Toosi University of Technology Exercise Document.

## How to use

clone the repo then copy the repo in the following path:

```sh
cp -r KNED $TEXMFHOME/tex/latex/
```

### Template 
In your LaTeX code you can use it as follow:

to set your own headers put the following codes after document class inclusion:

```latex
\renewcommand{\KNEDRHdr}{Theory Of Computation / HW 1}
\renewcommand{\KNEDLHdr}{Emad Pourhassani}
```


## Environments
As of now there are two environments, the `exercise` and `solution` environment.
you can use them as follows:

### Exercise
Here is an example usage:
```latex
\begin{exercise}[EXERCISE TITLE]
Exercise Content goes here.
\end{exercise}
```
You can reference the exercise number within the document using `\ref{}` and `\label{}` as usual. For example, `\ref{exercise_label}` would refer to the exercise labeled with `\label{exercise_label}`.

### Answer
Here is an example usage:
```latex
\begin{solution}
Answer goes here.
\end{solution}
```
## TODO

- [x] Create Example with environment and logo.
- [ ] Add Environment compatibility for persian text (XePersian), Persian exercise and solution title.
