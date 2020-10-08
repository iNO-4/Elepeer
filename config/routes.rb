Rails.application.routes.draw do

  get 'reviews/create'
	devise_for :customers

	get 'homes/top'
	root 'homes#top'

	get 'homes/about'

  	resources :customers, only: [:show, :edit, :update, :index] do
	  	member do
		  get 'mypage'
		  get 'unsubscribe'
		  patch 'unsubscribe'
		  get 'thanks'
		end
	end

	resources :posts do
		member do
		  get 'all'
		end
	end

	resources :reviews

end
