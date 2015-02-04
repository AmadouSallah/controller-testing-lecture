get '/articles' do
  @articles = Article.all
  erb :index
end

















# get '/articles' do
#   @articles = Article.all
#   erb :index
# end

# get '/articles/:id' do
#   @article = Article.find(params[:id])
# end

# post '/articles' do
#   Article.create(params)
# end
