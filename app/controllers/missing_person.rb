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

end
