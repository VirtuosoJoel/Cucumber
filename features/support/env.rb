require 'rubyexcel'
require 'rspec'

module Helpers
  def new_workbook
    @wb = RubyExcel::Workbook.new
  end
end

World(Helpers)

Before do
  @wb = new_workbook #RubyExcel::Workbook.new
end

After do
  @wb = nil
end