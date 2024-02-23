local modes = {
  ["n"] = "NORMAL",
  ["no"] = "NORMAL",
  ["v"] = "VISUAL",
  ["V"] = "VISUAL LINE",
  ["␖"] = "VISUAL BLOCK",
  ["s"] = "SELECT",
  ["S"] = "SELECT LINE",
  ["␓"] = "SELECT BLOCK",
  ["i"] = "INSERT",
  ["ic"] = "INSERT",
  ["R"] = "REPLACE",
  ["Rv"] = "VISUAL REPLACE",
  ["c"] = "COMMAND",
  ["cv"] = "VIM EX",
  ["ce"] = "EX",
  ["r"] = "PROMPT",
  ["rm"] = "MOAR",
  ["r?"] = "CONFIRM",
  ["!"] = "SHELL",
  ["t"] = "TERMINAL",
}

local function mode(current_mode)
	local current_mode = vim.api.nvim_get_mode().mode
	return string.format(" %s ", modes[current_mode]):upper()
end

local function lsp()
  local count = {}
  local levels = {
    errors = "Error",
    warnings = "Warn",
    info = "Info",
    hints = "Hint",
  }

  for k, level in pairs(levels) do
    count[k] = vim.tbl_count(vim.diagnostic.get(0, { severity = level }))
  end

  local errors = ""
  local warnings = ""
  local hints = ""
  local info = ""

  if count["errors"] ~= 0 then
    errors = "×" .. count["errors"]
  end
  if count["warnings"] ~= 0 then
    warnings = "!" .. count["warnings"]
  end
  if count["hints"] ~= 0 then
    hints = "i" .. count["hints"]
  end
  if count["info"] ~= 0 then
    info = "i" .. count["info"]
  end

  return errors .. warnings .. hints .. info 
end

vim.api.nvim_create_autocmd({"BufEnter", "WinEnter","ModeChanged"}, {
  	pattern = "*",
	callback = function()
		vim.opt.statusline = string.format("%s %s %s%s%s",
			mode(),
			"%f",
			lsp(),
			"%=",
			" %P %l:%c ")
  end
})
