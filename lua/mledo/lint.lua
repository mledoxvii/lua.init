vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    callback = function()
        local file = vim.fn.expand("%:p")

        if string.sub(file, -6) == ".swift" then
            vim.lsp.buf.format({ async = false })
        elseif string.sub(file, -3) == ".ts" then
            vim.cmd("silent %!npx prettier --stdin-filepath " .. file)
        end
    end,
})
