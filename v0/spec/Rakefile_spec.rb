require 'spec_helper'

RSpec.describe 'rake', :type => :aruba do
  context 'sum' do
    it 'soma dois números' do
      run('rake sum[1,2]')

      expect(last_command_started).to have_output /3\.0/
    end
  end
end
