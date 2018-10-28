require 'rspec'
require 'spec_helper'
require './lib/actions/report'

describe Report do
  describe '#initialize' do
    it 'should have a robot attribute which is nil' do
      report = Report.new(@robot)
      expect(report.robot).to be_nil
    end
  end
end