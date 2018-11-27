require 'spec_helper'

RSpec.describe 'rake', :type => :aruba do
  context 'sum' do
    it 'soma dois números' do
      run('rake sum[1,2]')

      expect(last_command_started).to have_output /3\.0/
    end
  end

  context 'sub' do
    it 'subtrai dois números' do
      run('rake sub[1,2]')

      expect(last_command_started).to have_output /-1\.0/
    end
  end

  context 'mult' do
    it 'multiplica dois números' do
      run('rake mult[2,2]')

      expect(last_command_started).to have_output /4\.0/
    end
  end

  context 'div' do
    it 'divide dois números' do
      run('rake div[2,2]')

      expect(last_command_started).to have_output /1\.0/
    end
  end
end
