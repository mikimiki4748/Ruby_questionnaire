Rails.application.routes.draw do
  get 'tweets/index'

  get 'tweets/show'

  get 'tweets/new'

  post 'tweets' => 'tweets#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
