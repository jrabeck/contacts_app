Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "contacts#home"
  get "/africa", to: "contacts#africa"
 
  
  

  #index (show everything)
  get "/index", to: "contacts#index"
  #new (form for creating new)
  get "contacts/new", to: "contacts#new"
  #create (message saying contact created)
  post "/contacts", to: "contacts#create"
  #show (show an individual contact)
  get "/contacts/:id", to: "contacts#show"
  #destroy (message saying destroyed)
  delete "contacts/:id", to: "contacts#destroy"
  #edit (form for updating)
  get "contacts/:id/edit", to: "contacts#edit"
  #update (same as create except saying updated)
  patch "/contacts/:id", to: "contacts#update"


end
