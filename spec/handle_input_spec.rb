require 'rspec'
require 'spec_helper'
require './lib/handle_input'

describe HandleInput do
  describe '#initialize' do
    it 'should have a robot attribute which is nil' do
      handle_input_object = HandleInput.new(@robot, @table)

      expect(handle_input_object.robot).to be_nil
    end

    it 'should have a table attribute which is nil' do
      handle_input_object = HandleInput.new(@robot, @table)

      expect(handle_input_object.table).to be_nil
    end
  end

  describe '#interpret' do
    it 'should return an instance of Position command matches PLACE pattern' do
      handle_input_object = HandleInput.new(Robot.new, Table.new)
      command = 'PLACE 1,2,NORTH'

      expect(handle_input_object.interpret(command)).to be_a Position
    end

    it 'should return nil if robot is not in place' do
      handle_input_object = HandleInput.new(Robot.new, Table.new)
      command = ''

      expect(handle_input_object.interpret(command)).to be_nil
    end

    it 'should return an instance of Position if command matches MOVE pattern' do
      handle_input_object = HandleInput.new(Robot.new, Table.new)
      command1 = 'PLACE 1,2,NORTH'
      command2 = 'MOVE'

      handle_input_object.interpret(command1)

      expect(handle_input_object.interpret(command2)).to be_a Position
    end

    it 'should return an instance of Position if command matches LEFT pattern' do
      handle_input_object = HandleInput.new(Robot.new, Table.new)
      command1 = 'PLACE 1,2,NORTH'
      command2 = 'LEFT'

      handle_input_object.interpret(command1)

      expect(handle_input_object.interpret(command2)).to be_a Position
    end

    it 'should return an instance of Position if command matches RIGHT pattern' do
      handle_input_object = HandleInput.new(Robot.new, Table.new)
      command1 = 'PLACE 1,2,NORTH'
      command2 = 'RIGHT'

      handle_input_object.interpret(command1)

      expect(handle_input_object.interpret(command2)).to be_a Position
    end

    it 'should return nil if command matches REPORT pattern' do
      handle_input_object = HandleInput.new(Robot.new, Table.new)
      command1 = 'PLACE 1,2,NORTH'
      command2 = 'REPORT'

      handle_input_object.interpret(command1)

      expect(handle_input_object.interpret(command2)).to be_nil
    end
  end

  describe '#exec' do
    it 'should return an instance of Position if position is a valid table position' do
      handle_input_object = HandleInput.new(Robot.new, Table.new)
      position = Position.new(0, 0, 'NORTH')

      expect(handle_input_object.exec(position)).to be_a Position
    end

    it 'should return nil if position is not a valid table position' do
      handle_input_object = HandleInput.new(Robot.new, Table.new)
      position = Position.new(0, 6, 'NORTH')

      expect(handle_input_object.exec(position)).to be_nil
    end
  end
end