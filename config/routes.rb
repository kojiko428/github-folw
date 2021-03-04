Rails.application.routes.draw do
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: "/letter_opener"  if Rails.env.development?
 #
 # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 #
 root to: 'tops#index'  #こちらを追記します。
 resources :blogs
end
