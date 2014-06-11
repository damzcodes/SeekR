SeekR::App.controllers :user do
  
  
  get :index do
    render 'index'
  end

  get :login do
    render 'login'
  end

  post :login do
    redirect_to '/user'
  end 
  

end
