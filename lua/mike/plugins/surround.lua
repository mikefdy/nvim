require("nvim-surround").setup({
  -- Default keymaps:
  -- ys{motion}{char} - Add surround (e.g., ysiw" to surround word with quotes)
  -- ds{char}         - Delete surround (e.g., ds" to delete surrounding quotes)
  -- cs{char}{char}   - Change surround (e.g., cs"' to change " to ')
  --
  -- In visual mode:
  -- S{char}          - Surround selection
  --
  -- Examples:
  -- ysiw)  -> surround word with ()
  -- ysiw"  -> surround word with ""
  -- ds"    -> delete surrounding ""
  -- cs"'   -> change " to '
  -- yss)   -> surround entire line with ()
})
