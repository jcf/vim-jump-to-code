module FixturesHelpers
  def fixtures_path
    File.expand_path('../../fixtures', __FILE__)
  end
end

RSpec.configure do |c|
  c.include FixturesHelpers
end
