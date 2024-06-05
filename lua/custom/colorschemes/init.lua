local function prioritize(any_tables)
  for _, any_table in pairs(any_tables) do
    vim.tbl_deep_extend('force', any_table, {
      priority = 1000,
    })
  end
  return any_tables
end

return prioritize {
  { 'folke/tokyonight.nvim' },
  {
    'nanotech/jellybeans.vim',
  },
}
