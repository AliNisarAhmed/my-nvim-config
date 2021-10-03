-- Here you can define you own formatters
--[[ Formatters are independent programs, but you have to asociate them
-- with their respective languages. Just google how to install your
-- favourite formatter if it's not included in my config.
--
-- Note: You always have to pass the `vim.api.nvim_buf_get_name(0)` arg
-- in order to get your current file formatted.
-- ]]

-- Prettier
-- Using prettierd (as a daemon, for faster formatting)
local function prettier()
  return {
    exe = "prettierd",
    args = {
      vim.api.nvim_buf_get_name(0),
			"--print-width 100",
			"--tab-width 2",
			"--use-tabs",
			"--no-semi",
    },
    stdin = true
  }
end

-- Gofmt
local function gofmt()
	return {
		exe = "gofmt",
		args = {
                  vim.api.nvim_buf_get_name(0), 
                  "--mode inplace"
                },
		stdin = true
	}
end

-- Clangd-format
local function clang_format()
	return {
		exe = "clang-format",
		args = {
			vim.api.nvim_buf_get_name(0),
			"-style='{BasedOnStyle: llvm, IndentWidth: 4}'"
		},
		stdin = true
	}
end


local function haskell()
  return {
    exe = "ormolu", 
    args = {
      vim.api.nvim_buf_get_name(0)
    }, 
    stdin = true
  }
end

local function elm() 
  return {
    exe = "elm-format", 
    args = {
      vim.api.nvim_buf_get_name(0),
      "--yes"
    },
    stdin = false
  }
end

local function rust() 
  return {
    exe = "rustfmt",
    args = {
      vim.api.nvim_buf_get_name(0)
    },
    stdin = false
  }
end

local function elixir()
  return { 
    exe = "mix format",
    args = {
      vim.api.nvim_buf_get_name(0)
    },
    stdin = false
  }
end

-- Here you link each formatter to their respective langs.
require "formatter".setup {
  logging = false,
  filetype = {
		c = {clang_format},
		cpp = {clang_format},
    css = {prettier},
    html = {prettier},
    javascript = {prettier},
    javascriptreact = {prettier},
		go = {gofmt},
    typescript = {prettier},
    typescriptreact = {prettier},
    json = {prettier},
    haskell = {haskell},
    elm = {elm},
    rust = {rust},
    elixir = {elixir}
  }
}

-- If you want autoformatting on save, enable the following,
-- and add your desired language extension to the list.
-- vim.api.nvim_exec([[
-- augroup FormatAutogroup
  -- autocmd!
  -- autocmd BufWritePost *.js,*.rs,*.lua FormatWrite
-- augroup END
-- ]], true)
