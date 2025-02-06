-- git
require("git"):setup()

-- full-border
require("full-border"):setup({
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
})

-- oh-my-posh
require("omp"):setup({ config = "~/.config/oh-my-posh/zen-icons.yaml" })
