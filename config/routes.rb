Pickaxe::Application.routes.draw do
  root to: "programs#index"
  resources :programs
end
