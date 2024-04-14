Rails.application.routes.draw do
  # どのコントローラーと紐づけるのかを明示する。今回は新規登録に必要なregistrationsコントローラーのみに適用
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: "home#index"
end
