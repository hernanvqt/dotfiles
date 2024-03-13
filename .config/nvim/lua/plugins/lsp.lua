return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim",
    {
      'numToStr/Comment.nvim',
      opts = {
          -- add any options here
      },
      lazy = false,
    },
    {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true
      -- use opts = {} for passing setup options
      -- this is equalent to setup({}) function
    },
  },
  config = function()
    -- Global mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    vim.keymap.set('n', '<space>de', vim.diagnostic.open_float, { desc = "Show diagnostic in a floating window" })
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Move to the previous diagnostic" })
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Move to the next diagnostic" })
    vim.keymap.set('n', '<space>dq', vim.diagnostic.setloclist, { desc = "Add buffer diagnostics to the location list" })

    local on_attach = function(_, bufnr)
      -- hover functions arguments
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr, desc = "Hover function arguments" })

      -- Buffer local mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = bufnr, desc = "Jumps to the declaration"})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr, desc = "Jumps to the definition"})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = bufnr, desc = "Lists all the implementations"})
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { buffer = bufnr, desc = "Displays signature information"})
      vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, { buffer = bufnr, desc = "Jumps to the definition of the type"})
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, { buffer = bufnr, desc = "Renames all references"})
      vim.keymap.set({ 'n', 'v' }, '<space>A', vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code action"})
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = bufnr, desc = "Lists all the references to the symbol"})
      -- format according to lsp
      vim.keymap.set('n', '<space>f', function()
        vim.lsp.buf.format { async = true }
      end, { buffer = bufnr, desc = "Formats a buffer"})

      -- workspace
      vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, { buffer = bufnr, desc = "Add folder at path to the workspace folders"})
      vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, { buffer = bufnr, desc = "Remove folder at path from the workspace folders"})
      vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, { buffer = bufnr, desc = "List workspace folders"})

    end

    require('nvim-autopairs').setup({
      enable_moveright = true,
      enable_afterquote = true,  -- add bracket pairs after quote
      enable_check_bracket_line = true,  --- check bracket in same line
      enable_bracket_in_quote = true, --
      enable_abbr = false, -- trigger abbreviation

      break_undo = true, -- switch for basic rule break undo sequence
      check_ts = false,
      map_cr = true,
      map_bs = true,  -- map the <BS> key
    }
    )
    require('Comment').setup({ -- default settings
      padding = true,
      sticky = true, ---Whether the cursor should stay at its position
      ignore = nil, ---Lines to be ignored while (un)comment
      ---LHS of toggle mappings in NORMAL mode
      toggler = {
          line = 'gcc', ---Line-comment toggle keymap
          block = 'gbc', ---Block-comment toggle keymap
      },
      ---LHS of operator-pending mappings in NORMAL and VISUAL mode
      opleader = {
          line = 'gc', ---Line-comment keymap
          block = 'gb', ---Block-comment keymap
      },
      ---LHS of extra mappings
      extra = {
          above = 'gcO', ---Add comment on the line above
          below = 'gco', ---Add comment on the line below
          eol = 'gcA', ---Add comment at the end of line
      },
      ---Enable keybindings
      ---NOTE: If given `false` then the plugin won't create any mappings
      mappings = {
          basic = true, ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
          extra = true, ---Extra mapping; `gco`, `gcO`, `gcA`
      },
      pre_hook = nil, ---Function to call before (un)comment
      post_hook = nil, ---Function to call after (un)comment
    })

    require("neodev").setup()
    require("lspconfig").clangd.setup({
      on_attach = on_attach,
    })
    require("lspconfig").lua_ls.setup({
      on_attach = on_attach,
      settings = {
        Lua = {
          telemetry = { enable = false },
          workspace = { checkThirdParty = false },
        }
      }
    })
  end
}
