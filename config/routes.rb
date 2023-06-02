Openai::Engine.routes.draw do
  resources :chats
  resources :api_keys
  resources :accounts
end
