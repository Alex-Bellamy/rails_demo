Rails.application.routes.draw do
  get 'articles/index'
  root controller: :articles, action: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
