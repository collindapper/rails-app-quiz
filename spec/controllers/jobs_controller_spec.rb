require 'rails_helper'

RSpec.describe JobsController, type: :controller do
  describe 'POST /jobs' do
    it 'create a new job object' do
      post :create, params: { employer_name: 'Amazon.com'}

      expect(Job.count).to eq(1)
    end
  end
end
