vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
        local file = vim.fn.expand("%:p")

        if string.sub(file, -6) == ".swift" then
            vim.cmd("silent !swiftlint --fix --format " .. file)
        elseif string.sub(file, -3) == ".ts" then
            vim.cmd("silent !npx prettier " .. file .. " --write")
        end
    end,
})
