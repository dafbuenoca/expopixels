Rails.application.routes.draw do
  devise_for :controllers
  devise_for :scaffolds
  devise_for :students
  resource :books
  root 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
