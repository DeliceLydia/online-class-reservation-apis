Rails.application.routes.draw do
  get 'teachers/index'
  scope :api do
    scope :v1 do
      resources :users, only: %i[create]
      resources :authentications, only: %i[create]
      resources :teachers
    end
  end  
end
