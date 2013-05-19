require 'vimrunner'
require 'vimrunner/rspec'

Dir.glob('./spec/support/*.rb') { |f| require f }

Vimrunner::RSpec.configure do |config|
  config.reuse_server = true

  config.start_vim do
    vim = Vimrunner.start

    # Or, start a GUI instance:
    # vim = Vimrunner.start_gvim

    plugin_path = File.expand_path('../..', __FILE__)
    vim.add_plugin(plugin_path, 'plugin/jump_to_code.vim')

    vim
  end
end
