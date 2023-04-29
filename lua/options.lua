local options = {
    syntax = 'on',
    number = true, -- add numbering of lines
    relativenumber = true,
    mouse = 'a',
    encoding = "utf-8",
    backup = false,
    writebackup = false,
    swapfile = false,
    tabstop = 4, -- count of spaces in one tab
    shiftwidth = 4, -- count of spaces
    softtabstop = 4, -- count of spaces in tab when removing
    expandtab = true, -- replace tabs to spaces
    smarttab = true, -- when clicking tab add at begging line add count of spaces equal shiftwidth 
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
