return {
  "hrsh7th/nvim-cmp",
  lazy = false,
  enabled = true,
  dependencies = {
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-calc",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-nvim-lsp",
    "friendly-snippets"
  },

  opts = function(_, opts)
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    -- {{{ Confirmation options

    local confirm_opts = {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }
    -- --------------------------------------------------------------------- }}}
    -- {{{ Add boarders to completion windows.

    local window = {
      completion = {
        border = "rounded",
        winhighlight = 'Normal:Pmenu,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:Pmenu',
        scrollbar = false,
      },
      documentation = {
        border = "rounded",
        winhighlight = 'Normal:Pmenu,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:Pmenu',
        scrollbar = false,
      },
    }

    -- --------------------------------------------------------------------- }}}
    -- {{{ Setup filetype and cmdline preferences.

    cmp.setup.filetype("gitcommit", {
      sources = cmp.config.sources({
        { name = "fugitive" },
      },{
        { name = "buffer" },
        { name = "spell" },
      }),
    })

    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" },
      },
    })

    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      },{
        { name = "cmdline" , option = { ignore_cmds = { 'Man',"!'" } } },
      }),
    })

    -- --------------------------------------------------------------------- }}}
    -- {{{ Has words before

    local function has_words_before()
      local line, col = (unpack or table.unpack)(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
    end

    local check_backspace = function()
      local col = vim.fn.col "." - 1
      return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
    end

    -- --------------------------------------------------------------------- }}}

    -- {{{ Snippets

    local snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end,
    }

    -- --------------------------------------------------------------------- }}}
    -- {{{ Mappings

    local mapping = {
      ["<C-j>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
      ["<C-k>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-c>"] = cmp.mapping { i = cmp.mapping.abort(), c = cmp.mapping.close() },
      ["<CR>"] = cmp.mapping.confirm { select = true },

      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        elseif check_backspace() then
          fallback()
        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, { "i", "s" }),

      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { "i", "s" }),
    }

    -- --------------------------------------------------------------------- }}}
    -- {{{ Source mapping and formatting

    local source_mapping = {
      spell         = "[Spell]",
      buffer        = "[Buffer]",
      calc          = "[calc]",
      luasnip       = "[Snippet]",
      nvim_lsp      = "[LSP]",
      path          = "[Path]",
    }

    local formatting = {
      format = function(entry, vim_item)
        vim_item.menu = (source_mapping)[entry.source.name]
        return vim_item
      end
    }

    -- --------------------------------------------------------------------- }}}
    -- {{{ Sources

    local sources = {
      { name = "calc", keyword_length = 3, max_item_count = 10, priority = 250 },
      { name = "path", keyword_length = 3, max_item_count = 20, prioirty = 250 },
      { name = "spell", keyword_length = 4, max_item_count = 10, priority = 450 },
      { name = "buffer", keyword_length = 3, max_item_count = 10, prioirty = 500 },
      { name = "luasnip", keyword_length = 1, max_item_count = 10, prioirty = 825},
      { name = "nvim_lsp", keyword_length = 1, max_item_count = 10, priority = 900},
    }

    -- --------------------------------------------------------------------- }}}
    -- {{{ Update the function argument opts with local choices made.

    opts.confirm_opts = confirm_opts
    opts.formatting = formatting
    opts.mapping = mapping
    opts.snippet = snippet
    opts.sources = sources
    opts.window = window

    -- --------------------------------------------------------------------- }}}
  end,

  config = function(_, opts)
    for _, source in ipairs(opts.sources) do
      source.group_index = source.group_index or 1
    end
    require("cmp").setup(opts)
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
