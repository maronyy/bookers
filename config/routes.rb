Rails.application.routes.draw do
  post 'lists' => 'lists#create'
  get '/top' => 'homes#top'
  get 'lists/edit'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end