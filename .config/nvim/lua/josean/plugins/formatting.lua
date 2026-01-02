return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        html = { "prettierd" },
        htmlangular = { "prettierd" },
        css = { "prettierd" },
        scss = { "prettierd" },
        json = { "prettierd" },
        yml = { "prettierd" },
        yaml = { "prettierd" },
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescriptreact = { "prettierd" },
        python = function(bufnr)
          if require("conform").get_formatter_info("ruff_format", bufnr).available then
            return { "ruff_format" }
          else
            return { "isort", "black" }
          end
        end,
      },

      formatters = {
        prettierd = {
          prepend_args = { "--single-quote" },
        },
      },

      -- format_on_save = {
      --   timeout_ms = 300,
      --   lsp_fallback = true,
      -- },
    })

    vim.api.nvim_create_user_command("Format", function()
      conform.format({
        async = true,
        lsp_fallback = true,
        timeout_ms = 300,
      })
    end, { desc = "" })

    vim.keymap.set("n", "<C-f>", "<cmd>Format<CR>", { desc = "Format current buffer" })
  end,
}
