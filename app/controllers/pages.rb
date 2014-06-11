SeekR::App.controllers :pages do

  get :homepage, :map => '/' do
    render :"pages/homepage.html"
  end

end
