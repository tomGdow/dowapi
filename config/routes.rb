Rails.application.routes.draw do
  resources :hurling_all_irelands
  resources :football_all_irelands

	resources :taoisigh do
		collection do
			get 'fiannafail'
			get 'finegael'
		end
	end

	get '/fiannafail' => redirect('/taoisigh/fiannafail')
	get '/finegael' => redirect('/taoisigh/finegael')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
