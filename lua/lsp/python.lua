return {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
	-- for postfix snippets and analyzers
    settings = {
        analysis = {
            autoSearchPaths = true,
            diagnosticMode = "workspace",
            useLibraryCodeForTypes = true
        },
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            },
            pythonPath = "venv/bin/python",
            venvPath = "./venv/"
        }
    },
	on_attach = on_attach,
}
