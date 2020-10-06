Rails.application.routes.draw do

  	resources :customers, only: [:show, :edit, :update, :index] do
	  	member do
		  get 'mypage'
		  get 'unsubscribe'
		  patch 'unsubscribe'
		  get 'thanks'
		end
	end

	devise_for :customers

	get 'homes/top'
	root 'homes#top'

	get 'homes/about'

end
