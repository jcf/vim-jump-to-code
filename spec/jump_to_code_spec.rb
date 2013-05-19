require 'spec_helper'

describe 'Jump To Code' do
  before do
    vim.command("let g:jump_to_code_base='#{fixtures_path}'")
  end

  def working_directory
    vim.command('pwd')
  end

  it 'switches directory' do
    vim.command('C albert')
    expect(working_directory).to eq(File.join(fixtures_path, 'albert'))
  end

  it 'tab completes' do
    pending 'Being able to send tab keypress'

    vim.feedkeys(':C alb\<C-i>\<CR>')
    vim.feedkeys(':C n\<C-i>\<CR>')

    expect(working_directory).to eq(File.join(fixtures_path, 'newton'))
  end
end
