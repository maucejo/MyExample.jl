using MyExample
using Documenter

DocMeta.setdocmeta!(MyExample, :DocTestSetup, :(using MyExample); recursive=true)

makedocs(;
    modules=[MyExample],
    authors="Mathieu Aucejo <mathieu.aucejo@gmail.com> and contributors",
    repo="https://github.com/maucejo/MyExample.jl/blob/{commit}{path}#{line}",
    sitename="MyExample.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://maucejo.github.io/MyExample.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/maucejo/MyExample.jl",
    devbranch="master",
)
