Rails.application.routes.draw do
  get '/top' => 'homes#top'
  get 'list/show'
  get 'list/edit'
  get 'list/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
