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
      redirect url_for(:missing_person, :show, :id => @person.id)
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
    # TODO - Obviously not sustainable... possibly OK for proof of concept?
    @result = HTTParty.post("http://localhost:9292/photos/#{@person.id}/detect", :query => {
      :urls => (Image.all - @person.images).map do |i|
        # More horrendous hacks...
        if RACK_ENV == "production"
          "http://#{request.host_with_port}/endsvchack#{i.image.url}"
        else
          "http://#{request.host_with_port}#{i.image.url}"
        end
      end
    })

    if @result.is_a? String
      flash[:notice] = "Sorry something went wrong"
      redirect url_for(:missing_person, :show, params[:id])
    else
      render :"missing_person/detect"
    end
  end

end
