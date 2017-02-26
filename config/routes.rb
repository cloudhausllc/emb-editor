Rails.application.routes.draw do
  get '/test_file' => 'home#test_file', as: :test_file
  root 'home#index'
end
