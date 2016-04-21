Rails.application.routes.draw do

  root to: 'index#home'
  get '/contact' => 'index#contact'
  resources :students, :courses, :classrooms

end
