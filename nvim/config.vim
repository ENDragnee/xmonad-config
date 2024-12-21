
lua << EOF
require'cmp'.setup {
    sources = {
        { name = 'cmp_ai' },
    },
}

local cmp_ai = require('cmp_ai.config')

cmp_ai:setup({
  max_lines = 1000,
  provider = 'OpenAI',
  provider_options = {
    model = 'gpt-3.5-turbo',
  },
  notify = true,
  notify_callback = function(msg)
    vim.notify(msg)
  end,
  run_on_every_keystroke = true,
  ignored_file_types = {
    -- default is not to ignore
    -- uncomment to ignore in lua:
    -- lua = true
  },
})

--cmp-ai notify
notify_callback = function(msg)
  require('notify').notify(msg, vim.log.levels.INFO, {
    title = 'OpenAI',
    render = 'compact',
  })
end

