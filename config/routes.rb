Rails.application.routes.draw do
  # どのコントローラーと紐づけるのかを明示する。今回は新規登録に必要なregistrationsコントローラーのみに適用
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  root to: "home#index"
end
