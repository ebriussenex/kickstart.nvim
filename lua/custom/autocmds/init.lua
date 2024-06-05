local group = vim.api.nvim_create_augroup('ebrius', { clear = true })

local save_colorscheme = function(scheme_name)
  local config_path = vim.fn.stdpath 'config' .. '/theme.lua'
  local file = io.open(config_path, 'w')
  file:write('vim.cmd.colorscheme("' .. scheme_name .. '")\n')
  file:close()
end

return {
  {
    vim.api.nvim_create_autocmd('ColorScheme', {
      group = group,
      callback = function()
        local matched_scheme = vim.fn.expand '<amatch>'
        save_colorscheme(matched_scheme)
      end,
    }),
  },
}
