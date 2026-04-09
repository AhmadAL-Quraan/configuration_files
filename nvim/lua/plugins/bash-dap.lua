return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      -- Bash Debug Adapter installed by Mason
      dap.adapters.bashdb = {
        type = "executable",
        command = vim.fn.expand("~/.local/share/nvim/mason/bin/bash-debug-adapter"),
        args = { "--interpreter=bashdb" },
      }

      -- Bash debugging configuration
      dap.configurations.sh = {
        {
          type = "bashdb",
          request = "launch",
          name = "Debug Bash script",
          program = "${file}",
          cwd = "${workspaceFolder}",
          pathBash = "/usr/bin/bash",
          bashdbPath = "/usr/bin/bashdb",
          args = {},
          env = {},
          trace = true,
        },
      }
    end,
  },
}
