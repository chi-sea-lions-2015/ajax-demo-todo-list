get '/' do
  sleep 2
  @items = Item.all
  erb :index
end

post '/items' do
  @item = Item.create(params[:item])
  if request.xhr?
    erb :"_item", locals: {item: @item}, layout: false
  else
    redirect '/'
  end
end
