# frozen_string_literal: true
require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    before { get :index, params: { username: :wfsneto } }

    xit 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    xit 'render index template' do
      expect(response).to render_template(:index)
    end

    xit 'assigns repos' do
      expect(assigns(:repos)).not_to be_nil
    end

    xit 'assigns user' do
      expect(assigns(:user)).not_to be_nil
    end
  end
end
