local M = {}

M.general = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },

  v = {
    -- dont leave v mode when indenting 
    ["<"] = { "<gv" },
    [">"] = { ">gv" },
  },
}

-- more keybinds!

return M
