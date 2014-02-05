Test2::Application.routes.draw do

  controller :public do
    get 'public', :to => :index
  end

  devise_for :users

  root 'private#index'
end
