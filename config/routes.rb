Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "contacts#home"
  get "/africa", to: "contacts#africa"
  get "/new_contact", to: "contacts#new_contact"
  post "/saved_contact", to: "contacts#saved_contact"
end
