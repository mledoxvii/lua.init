return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
    config = function(opts)
        require('luasnip').setup(opts)
        require('luasnip.loaders.from_snipmate').load({ paths = "./snippets" })
    end,
}
