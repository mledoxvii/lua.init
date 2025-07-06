vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
        local file = vim.fn.expand("%:p")

        if string.sub(file, -6) == ".swift" then
            vim.cmd("silent !swiftlint --fix --format " .. file)
        end
    end,
})
