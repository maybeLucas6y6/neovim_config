local M = {}

M.dap = {
    plugin = true,
    n = {
        ["<leader>db"] = {
            vim.cmd.DapToggleBreakpoint,
            "Add breakpoint at line",
        },
        ["<leader>dr"] = {
            function()
                vim.cmd.NvimTreeClose();
                vim.cmd.DapContinue();
            end,
            "Start or continue the debugger",
        },
        ["<leader>dt"] = {
            vim.cmd.DapTerminate,
            "Terminate the debugger",
        },
        ["<leader>dus"] = {
            function()
                local widgets = require('dap.ui.widgets');
                local sidebar = widgets.sidebar(widgets.scopes);
                sidebar.open();
            end,

            "Open debugging sidebar"
        }
    }
}

M.theprimeagen = {
    n = {
        ["J"] = { "mzJ`z", "Append next line to current line" },
        ["<C-d>"] = { "<C-d>zz", "Navigate half page down and center" },
        ["<C-u>"] = { "<C-u>zz", "Navigate half page up and center" },
        ["n"] = { "nzzzv", "Find next and center" },
        ["N"] = { "Nzzzv", "Find previous and center" },
        ["<leader>y"] = { [["+y]], "Copy to system clipboard" },
        ["<leader>Y"] = { [["+Y]], "Copy to system clipboard ?" },
        ["<leader>d"] = { [["_d]], "Delete without copying" },
        --["Q"] = { "<nop>", "idk" },
        --["<C-f>"] = { "<cmd>silent !tmux neww tmux-sessionizer<CR>", "idk" }
        ["<C-k>"] = { "<cmd>cnext<CR>zz", "idk yet" },
        ["<C-j>"] = { "<cmd>cprev<CR>zz", "idk yet" },
        ["<leader>k"] = { "<cmd>lnext<CR>zz", "idk yet" },
        ["<leader>j"] = { "<cmd>lprev<CR>zz", "idk yet" },
    },
    v = {
        ["J"] = { ":m '>+1<CR>gv=gv", "Move line down" },
        ["K"] = { ":m '<-2<CR>gv=gv", "Move line up" },
        ["<leader>y"] = { [["+y]], "Copy to system clipboard" },
        ["<leader>d"] = { [["_d]], "Delete without copying" },
    },
    i = {
        --["<Esc>"] = { "<C-c>", "idk" },
    }
}

return M
