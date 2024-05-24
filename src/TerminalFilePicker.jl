module TerminalFilePicker

using REPL.TerminalMenus

export pick_file

"""
    pick_file(dir="."; pattern=r"")

Show the files in `dir` that match `pattern` and return the one chosen by the
user. Immediately returns `nothing` if there are no files to choose from.
"""
function pick_file(dir="."; pattern=r"")
    files=filter(contains(pattern), readdir(dir))
    length(files) == 0 && return nothing
    files[request(RadioMenu(files))]
end

end # module TerminalFilePicker
