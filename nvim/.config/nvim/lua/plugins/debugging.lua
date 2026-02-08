return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			-- EVENT TRIGGERS
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end

			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end

			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end

			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			-- GDB CONFIG (C, CPP, RUST)
			dap.adapters.gdb = {
				type = "executable",
				command = "gdb",
				args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
			}
			dap.configurations.c = {
				{
					name = "launch gdb",
					type = "gdb",
					request = "launch",
					program = function()
						return vim.fn.expand("%:r") -- returns current file name without .c extension
					end,
					args = {}, -- provide arguments if needed
					cwd = "${workspaceFolder}",
					stopAtBeginningOfMainSubprogram = false,
				},
			}

			-- KEYMAPS
			vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint, {})
			vim.keymap.set("n", "<Leader>dc", dap.continue, {})
			vim.keymap.set("n", "<Leader>do", dapui.toggle, {})

			-- STARTUP
			require("dapui").setup()
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
	},
}
