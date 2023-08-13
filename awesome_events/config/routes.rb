Rails.application.routes.draw do
  resources :events
  root "welcome#index"
  get "/auth/:provider/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  get 'status' => 'status#index', defaults: { format: 'json' }

  resource :retirements, only: %i[new create]

  resources :events, only: %i[new create show edit update destroy] do
    resources :tickets, only: %i[new create destroy]
  end

  match "*path" => "application#error404", via: :all
end
