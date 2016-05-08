require 'spec_helper'

RSpec.describe Article, :type => :model do
  it 'finds by title' do
    article_a = Article.create!(title: 'Article A', text: 'Text of A')
    Article.create!(title: 'Article B', text: 'Text of B')

    expect(Article.find_by_title('Article A')).to eq(article_a)
  end
end