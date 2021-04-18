Rails.application.routes.draw do
  resources :student_entities
  get 'student/sort' => "student_entities#sort"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
