
tpl = Template(;
    name="Juliet Asantewaa Sarpong",
    description="A template for my first package for C-TMLE.jl",
    authors=["Juliet Asantewaa Sarpong"],
    email="s2719123@ed.ac.uk",
    dir="~/code",
    package_name="C-TMLE.jl",
    julia_version="1.11.1",
    license="MIT",
    ssh=true,
    git=true,
    plugins=[
        Git(; manifest=true, ssh=true),
        GitHubActions(; x86=true),
        Codecov(),
        Documenter{GitHubActions}(),
    ],
)