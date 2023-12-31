---@diagnostic disable: missing-fields

-- since this is just an example spec, don't actually load anything here and return an empty spec
-- if true then return {} end

return {
    {
        "mcchrish/zenbones.nvim",
        "rktjmp/lush.nvim",
    },

    {
        "EdenEast/nightfox.nvim",
        config = function()
            require("nightfox").setup({
                options = {
                    transparent = true,
                },
            })
        end,
    },

    {
        "Exafunction/codeium.vim",
        config = function()
            require("codeium").setup()

            vim.keymap.set("i", "<C-g>", function()
                return vim.fn["codeium#Accept"]()
            end, { expr = true })

            vim.keymap.set("i", "<C-\\>", function()
                return vim.fn["codeium#Complete"]()
            end, { expr = true })

            vim.keymap.set("i", "<c-]>", function()
                return vim.fn["codeium#CycleCompletions"](1)
            end, { expr = true })

            vim.keymap.set("i", "<c-[>", function()
                return vim.fn["codeium#CycleCompletions"](-1)
            end, { expr = true })

            vim.keymap.set("i", "<c-x>", function()
                return vim.fn["codeium#Clear"]()
            end, { expr = true })

            vim.g.codeium_manual = true
        end,
    },

    {
        { "xiyaowong/transparent.nvim" },
    },

    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            ---@type lspconfig.options
            servers = {
                lua_ls = { enabled = false },
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "VimEnter" },
    },

    {
        "LuckasRanarison/nvim-devdocs",
        config = function()
            require("nvim-devdocs").setup({
                previewer_cmd = "glow",
                cmd_args = { "-s", "~/Documents/glow_monochrome.json" },
                picker_cmd = "glow",
                picker_cmd_args = { "-s", "~/Documents/glow_monochrome.json" },
            })
        end,
    },

    {

        { "ahmedkhalf/project.nvim", enabled = false },
    },
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require("kanagawa").setup({
                colors = {
                    palette = {

                        dragonBlack0 = "#000000",
                        dragonBlack1 = "#000000",
                        dragonBlack2 = "#000000",
                        dragonBlack3 = "#000000",
                        dragonBlack4 = "#000000",
                        dragonBlack5 = "#000000",
                        -- dragonBlack6 = "#050608",
                        waveBlue1 = "#151515",
                        waveBlue2 = "#202020",

                        dragonWhite = "#c5c9c5",
                        dragonGreen = "#87a987",
                        dragonGreen2 = "#8a9a7b",
                        dragonPink = "#a292a3",
                        dragonOrange = "#b6927b",
                        dragonOrange2 = "#b98d7b",
                        dragonGray = "#a6a69c",
                        dragonGray2 = "#9e9b93",
                        dragonGray3 = "#7a8382",
                        dragonBlue2 = "#8ba4b0",
                        dragonViolet = "#8992a7",
                        dragonRed = "#c4746e",
                        dragonAqua = "#8ea4a2",
                        dragonAsh = "#737c73",
                        dragonTeal = "#949fb5",
                        dragonYellow = "#c4b28a",
                    },
                },
                theme = {
                    ui = {
                        float = {
                            bg = "none",
                        },
                    },
                },
                keywordStyle = { italic = false },

                background = {
                    dark = "dragon",
                },
            })
        end,
    },
    -- {
    --     "nvim-lualine/lualine.nvim",
    --     config = function()
    --         require("lualine").setup({
    --             options = {
    --                 theme = "auto",
    --                 component_separators = { left = "", right = "" },
    --                 section_separators = { left = "", right = "" },
    --             },
    --         })
    --     end,
    -- },
    {
        "hrsh7th/cmp-cmdline",
        config = function()
            local cmp = require("cmp")
            cmp.setup.cmdline("/", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = "buffer" },
                },
            })
            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = "path" },
                }, {
                    {
                        name = "cmdline",
                        option = {
                            ignore_cmds = { "Man", "!" },
                        },
                    },
                }),
            })
        end,
    },

    {
        "folke/noice.nvim",
        enabled = false,
    },
    {
        "rcarriga/nvim-notify",
        enabled = true,
        config = function()
            local stages = require("notify.stages.slide")("top_down")
            local notify = require("notify")

            notify.setup({
                render = "compact",
                stages = {
                    function(...)
                        local opts = stages[1](...)
                        if opts then
                            opts.border = "single"
                            opts.row = opts.row + 1
                        end
                        return opts
                    end,
                    unpack(stages, 2),
                },
                timeout = 4000,
            })
        end,
    },

    { "amedoeyes/eyes.nvim" },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "zenwritten",
        },
    },

    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup({
                direction = "horizontal",
                size = 30,
                shade_terminals = false,
                start_in_insert = true,
                autochdir = true,
                hide_numbers = true,
                float_opts = {
                    border = "single",
                },
            })
        end,
    },

    {
        "nvim-telescope/telescope.nvim",

        config = function()
            require("telescope").setup({
                defaults = {
                    sorting_strategy = "ascending",
                    borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
                    -- borderchars = { "", "", "", "", "", "", "", "" },
                    -- prompt_position = "top",
                    preview_cutoff = 120,
                    border = true,
                    layout_strategy = "vertical",
                    layout_config = {
                        vertical = { height = 0.999, width = 0.999 },
                    },
                },
            })
        end,

        -- require("telescope").load_extension("project"),
        -- require("telescope").load_extension("file-browser"),
    },
    {

        "nvim-telescope/telescope-project.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
    },
    {

        {
            "telescope.nvim",
            dependencies = {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
                config = function()
                    require("telescope").load_extension("fzf")
                end,
            },
        },
    },

    {
        "folke/noice.nvim",
        config = function()
            require("noice").setup({
                cmdline = {
                    view = "cmdline",
                },
            })
        end,
    },

    {
        { "nvim-neo-tree/neo-tree.nvim", enabled = false },
    },
}
