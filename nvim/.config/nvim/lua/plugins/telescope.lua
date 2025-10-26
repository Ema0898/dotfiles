return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<C-b>', builtin.buffers, {})
      vim.keymap.set('n', '<C-m>', builtin.marks, {})
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        },
        pickers = {
          buffers = {
            initial_mode = "normal",
            ignore_current_buffer = true,
            sort_mru = true
          },
          marks = {
            initial_mode = "normal"
          },
          find_files = {
            find_command = {"rg", "--ignore", "-L", "--hidden", "--files"}
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
