# TerminalFilePicker.jl
A [Julia](http://julialang.org) package for interactively picking files from
the file system.

The package [NativeFileDialog](https://github.com/JuliaGraphics/NativeFileDialog.jl)
has a similar functionality but works graphically whereas `TerminalFilePicker`
is a purely terminal based solution.


## Installation
```julia
import Pkg
Pkg.add("https://github.com/GHTaarn/TerminalFilePicker.jl")
```

## Use

The function `pick_file` displays the contents of a directory and waits
for the user to select one of them:

```julia
using TerminalFilePicker
pick_file("."; pattern=r"[A-Za-z]*")
```

The return value is the name of whichever file the user selected.

