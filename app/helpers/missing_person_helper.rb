# Helper methods defined here can be accessed in any controller or view in the application

SeekR::App.helpers do
  def image_tag(file, opts = {})
    # HORRENDOUS HACK... but its 3am and I don't care...
    if RACK_ENV == 'production'
      super "/endsvchack#{file}", opts
    end
  end
end
