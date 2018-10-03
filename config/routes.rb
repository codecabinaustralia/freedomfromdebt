Rails.application.routes.draw do
  post 'charge/make_charge'
  get 'charge/view_downloads'
  get 'charge/charge_table'
  get 'static/home'

  root to: "static#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
