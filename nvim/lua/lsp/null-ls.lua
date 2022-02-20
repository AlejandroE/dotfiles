local null_ls = require("null-ls")

local on_attach = function(client, bufnr)
    if client.resolved_capabilities.document_formatting then
        vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()")
    end
end

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.code_actions.eslint_d,
        null_ls.builtins.formatting.prettier
    },
    on_attach = on_attach
})

