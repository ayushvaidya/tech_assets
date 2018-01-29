Rails.application.routes.draw do
	resources :tech_assets
	resources :searches
	root "tech_assets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
