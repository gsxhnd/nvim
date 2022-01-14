return {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
	-- for postfix snippets and analyzers
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            },
            pythonPath = "venv/bin/python",
            -- venvPath = "venv/bin/python"
        }
    },
	on_attach = on_attach,
}
