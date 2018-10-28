require 'rspec'
require 'spec_helper'
require './lib/table'
require './lib/robot'
require './lib/handle_input'
require 'pry'

 describe HandleInput do
  describe '#initialize' do
    it 'should have a robot attribute which is nil' do
      handleinput = HandleInput.new(@robot, @table)
      expect(handleinput.robot).to be_nil
    end
     it 'should have a table attribute which is nil' do
      handleinput = HandleInput.new(@robot, @table)
      expect(handleinput.table).to be_nil
    end
  end
   describe '#interpret' do
    it 'should return a string if command matches place pattern' do
      # binding.pry
      handleinput = HandleInput.new(Robot.new, Table.new)
      command = 'PLACE 1,2'

      expect(handleinput.interpret(command)).to be_a String
      expect(handleinput.interpret(command)).to match(/^PLACE\s+\d+\s*,\s*\d+\s*$/)
    end
     it 'should return nil if command does not match a valid pattern' do
      handleinput = HandleInput.new(Robot.new, Table.new)
      command = 'hello'
      expect(handleinput.interpret(command)).to be_nil
    end
  end
end