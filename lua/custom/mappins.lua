local M = {}

M.dap = {
    plugin = true,
    n = {
        ["<leader>db"] = {
            vim.cmd.DapToggleBreakpoint,
            "Add breakpoint at line",
        },
        ["<leader>dr"] = {
            function ()
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
            function ()
                local widgets = require('dap.ui.widgets');
                local sidebar = widgets.sidebar(widgets.scopes);
                sidebar.open();
            end,
            "Open debugging sidebar"
        }
    }
}

return M
