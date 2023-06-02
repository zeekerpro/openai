Rails.application.routes.draw do
  mount Openai::Engine => "/openai"
end
