# GET =================================================================
get '/' do
  @contacts = Contact.order('last_name').limit(10)
  erb :index
end

get '/contact' do
  @contacts = Contact.order('last_name')
  erb :index
end

get '/contacts/new' do
  erb :new
end



# POST ==========================================

post '/contacts' do
    @contact = Contact.new(params[:contact])
    if @contact.save
      redirect to("/contacts/#{@contact.id}")
    else
      erb :new
    end

end
