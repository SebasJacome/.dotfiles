function _G.capitalize_filetype()
	local ft = vim.bo.filetype
	if ft == "" then
		return "NoType"  -- Handle empty filetype case
	end
	return ft:sub(1,1):upper() .. ft:sub(2):lower()  -- Capitalize first letter
end

function Mode_name()
	local mode = vim.api.nvim_get_mode().mode
	return mode == 'n' and 'NORMAL' or
		mode == 'i' and 'INSERT' or
		mode == 'v' and 'VISUAL' or
		mode == 'V' and 'V-LINE' or
		mode == "\22" and 'V-BLOCK' or  -- CTRL+V (block visual mode)
		mode == 'c' and 'COMMAND' or
		mode == 'R' and 'REPLACE' or
		mode == 't' and 'TERMINAL' or
		'UNKNOWN'
end

