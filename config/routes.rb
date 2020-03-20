Rails.application.routes.draw do
  root "boards#index"
  # get '/' => "boards#index"
  get 'boards/index'
  get 'boards/new'
  post 'boards/create' => "boards#create"
  get 'boards/show/:id' => "boards#show"
  get 'boards/edit/:id' => "boards#edit"
  post 'boards/update/:id' => "boards#update"
  get 'boards/destroy/:id' => "boards#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
