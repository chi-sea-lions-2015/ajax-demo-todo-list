get '/' do
  @items = Item.all
  erb :index
end

post '/items' do
  @item = Item.create(params[:item])
  redirect '/'
end
