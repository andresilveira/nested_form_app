NestedFormApp::Application.routes.draw do
  resources :comments


  resources :posts


  resources :comments
  resources :posts
  
  root to: "posts#index"
end
