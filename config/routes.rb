Rails.application.routes.draw do
  scope :api do
    scope :v1 do
      resources :users, only: %i[create]
      resources :authentications, only: %i[create]
      resources :teachers, only:%i[index show]
      resources :reservations
    end
  end  
end
