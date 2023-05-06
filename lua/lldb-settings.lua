require('dap')

-- Настройки для отладки с использованием lldb
local dap = require('dap')
dap.adapters.lldb = {
  type = 'executable',
  command = 'lldb-vscode', -- или путь к исполняемому файлу lldb
  name = "lldb"
}

dap.configurations.c = {
  {
    name = "Launch",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
    runInTerminal = false,
  },
}
