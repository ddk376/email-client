Email::Application.routes.draw do   #why is it Email::Application and not Rails::Application
  root to: 'static_pages#root'

  resources :users, only: [:create, :new]
  resource :session, only: [:create, :new, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :electronic_mails
    resources :sent_emails, only: [:index]
    resources :draft_emails
    resources :starred_emails, only: [:index]
    resources :important_emails, only: [:index]
    resources :trash_emails, only: [:index, :update, :destroy]
    resources :all_emails, only: [:index]
    resources :spam_emails, only: [:index]
    get "search", to: "searches#index"
  end

  # devise_for :users
  #
  # authenticated :user do
  #   root 'static_pages#root'
  # end
  #
  # unauthenticated :user do
  #   devise_scope :user do
  #     get "/" => "devise/sessions#new"
  #   end
  # end

  resources :conversations do
    resources :messages
  end


end
