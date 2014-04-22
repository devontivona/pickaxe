Pickaxe::Application.routes.draw do
  root to: "programs#index"
  resources :programs do
    post 'compile', on: :member
  end
end
