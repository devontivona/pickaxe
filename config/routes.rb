Pickaxe::Application.routes.draw do
  root to: "programs#index"
  

  resources :programs
  get 'robot/halt' => 'programs#halt', as: :robot_halt
  resources :programs do
    post 'compile', on: :member
  end
  
end
