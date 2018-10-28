require 'rspec'
require 'spec_helper'
require './lib/handle_input'

describe HandleInput do
  describe '#initialize' do
    it 'should have a robot attribute which is nil' do
      handle_input = HandleInput.new(@robot, @table)

      expect(handle_input.robot).to be_nil
    end

    it 'should have a table attribute which is nil' do
      handle_input = HandleInput.new(@robot, @table)

      expect(handle_input.table).to be_nil
    end
  end

  describe '#interpret' do
    it 'should return an instance of Position command matches place pattern' do
      handle_input = HandleInput.new(Robot.new, Table.new)
      command = 'PLACE 1,2,NORTH'

      expect(handle_input.interpret(command)).to be_a Position
    end

    it 'should return nil if command does not match a valid pattern' do
      handle_input = HandleInput.new(Robot.new, Table.new)
      command = 'hello'

      expect(handle_input.interpret(command)).to be_nil
    end
  end
end