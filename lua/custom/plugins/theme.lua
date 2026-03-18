---@module 'lazy'
---@type LazySpec
return {
  {
    'EdenEast/nightfox.nvim',
    name = 'nightfox',
    priority = 1000,
    config = function()
      require('nightfox').setup {
        options = {
          transparent = true,
          dim_inactive = true,
        },
      }
      vim.cmd.colorscheme 'nightfox'
    end,
  },

  {
    'shellRaining/hlchunk.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
      chunk = {
        enable = true,
        delay = 0,
        duration = 0,
      },
      indent = {
        enable = true,
      },
    },
  },
}
