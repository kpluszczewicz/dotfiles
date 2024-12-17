print("We are saying hello from nvim/lua/tj_course/something.lua")

print(vim.inspect(vim.fn.split("Ticket::ALDTicket", "::")))

-- TODO:  Try to match also strings like Tariff.where_special_offers_available_for_kd_keys
vim.keymap.set("n", "<leader>xe", function()
	local cword = vim.fn.expand("<cWORD>")
	local match1, match2 = string.find(cword, "[a-zA-z:]+")
	local constant = string.sub(cword, match1, match2)
	print(constant)
	local chunks = vim.split(constant, "::")
	for index, value in ipairs(chunks) do
		if index < #chunks then
			chunks[index] = string.lower(value)
		end
	end
	local new_text
	if #chunks > 1 then
		local last_part = chunks[#chunks]
		-- constant - does not contain lowercase characters
		if string.find(last_part, "[a-z]+") == nil then
			new_text = vim.fn.join(vim.fn.slice(chunks, 0, -1), "/") .. " " .. last_part
		else
			-- regular class or module name
			new_text = vim.fn.join(chunks, "/")
		end
	else
		new_text = chunks[1]
	end

	require("telescope.builtin").tags({
		default_text = new_text,
		cwd = "/Users/kamilpluszczewicz/koleo",
		fname_width = 50,
	})
end)
