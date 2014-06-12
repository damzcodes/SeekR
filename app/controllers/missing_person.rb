SeekR::App.controllers :missing_person do

  get :new do
    @person = MissingPerson.new
    3.times { @person.images.build }
    render :"missing_person/new"
  end

  post :create do
    @person = MissingPerson.new(params[:missing_person])
    if @person.save
      # TODO - where should this really go?
      flash[:notice] = "Write me some copy!"
      redirect '/'
    else
      # TODO - Failed validation stuff
    end
  end

  get :show, :with => :id, :map => '/missing_person' do
    @person = MissingPerson.find(params[:id])
    render :"missing_person/show"
  end

  get :detect, :with => :id do
    @person = MissingPerson.find(params[:id])
    HTTParty.post("http://localhost:9292/photos/#{@person.id}/detect", :query => {
      :urls => @person.images.map {|i| "http://#{request.host_with_port}#{i.image.url}"}
    })
  end

end
