require("nvim-autopairs").setup({})

-- Integration with nvim-cmp
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
