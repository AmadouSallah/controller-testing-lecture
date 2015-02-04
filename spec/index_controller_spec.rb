require_relative 'spec_helper'

describe "articles_controller" do
  describe "GET /articles" do
    it "renders a successful status" do
      # arrange
      # act
      get '/articles'
      # assert
      expect(last_response.status).to eq(200)
    end

    it "renders a list of articles" do
      # arrange
      Article.create(title: "My Article")
      # act
      get '/articles'
      # assert
      expect(last_response.body).to include("My Article")
    end
  end

  describe "GET /articles/:id" do
    describe "if the article exists" do
      it "renders a successful status" do
        # arrange
        @article = Article.create(title: "Woah awesome article")
        # act
        get "/articles/#{@article.id}"
        # assert
        expect(last_response.status).to eq(200)
      end
    end

  end

  describe "POST /articles" do
    it "create a new article" do
      Article.delete_all

      expect {
        post "/articles", title: "That's not cool. Fingers. Come on."
      }.to change { Article.count }
    end
  end
end
