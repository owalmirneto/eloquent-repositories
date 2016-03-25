# frozen_string_literal: true
require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    before { get :index }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'render index template' do
      expect(response).to render_template(:index)
    end
  end
end
