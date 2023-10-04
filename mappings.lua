---@type MappingsTable
local M = {}

M.general = {
  -- n = {
  --   [";"] = { ":", "enter command mode", opts = { nowait = true } },
  -- },
  i = {
    ["<C-h>"] = { "<cmd>TmuxNavigateLeft<CR>", "Tmux Left" },
    ["<C-l>"] = { "<cmd>TmuxNavigateRight<CR>", "Tmux Right" },
    ["<C-j>"] = { "<cmd>TmuxNavigateDown<CR>", "Tmux Down" },
    ["<C-k>"] = { "<cmd>TmuxNavigateUp<CR>", "Tmux Up" },
  },
  n = {
    ["<leader>w"] = { "<cmd>w!<CR>", "Save" },
    ["<leader>q"] = { "<cmd>confirm q<CR>", "Quit" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require("dap-python").test_method()
      end,
    },
  },
}
M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- focus
    ["<C-n>"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  },
}
M.nvterm = {
  plugin = true,

  t = {
    -- toggle in terminal mode
    ["<leader>t"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    -- ["<A-h>"] = {
    --   function()
    --     require("nvterm.terminal").toggle "horizontal"
    --   end,
    --   "Toggle horizontal term",
    -- },
    --
    -- ["<A-v>"] = {
    --   function()
    --     require("nvterm.terminal").toggle "vertical"
    --   end,
    --   "Toggle vertical term",
    -- },
  },

  n = {
    -- toggle in normal mode
    ["<leader>t"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    ["<A-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["<A-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },

    -- new
    ["<leader>h"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "New horizontal term",
    },

    ["<leader>v"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "New vertical term",
    },
  },
}
M.disabled = {
  ["<leader>th"] = "",
}
-- more keybinds!

return M
