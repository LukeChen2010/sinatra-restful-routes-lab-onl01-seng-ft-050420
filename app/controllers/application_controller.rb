class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  
  get '/recipes' do
    erb :index
  end
  
  get '/recipes/new' do
    erb :new
  end
  
  get '/recipes/:id' do
    id = params[:id]
    @recipe = Recipe.find_by_id(id)
    erb :recipe
  end
  
  get '/recipes/:id/edit' do
    id = params[:id]
    @recipe = Recipe.find_by_id(id)
    erb :edit
  end
  
  post '/recipes' do
    
  end
end
