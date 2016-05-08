require 'spec_helper'

RSpec.describe ArticlesController, :type => :controller do
  describe 'GET #index' do

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'loads all of the posts into @articles' do
      article_a = Article.create!(title: 'Article A', text: 'Text of A')
      article_b = Article.create!(title: 'Article B', text: 'Text of B')
      get :index
      expect(assigns(:articles)).to match_array([article_a, article_b])
    end

  end
end