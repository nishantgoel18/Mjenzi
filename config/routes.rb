Rails.application.routes.draw do

  get '/home', to: 'dashboards#home', as: :home
  get '/contact_us', to: 'dashboards#contact_us', as: :contact_us
  get '/about_us', to: 'dashboards#about_us', as: :about_us
  get '/faqs', to: 'dashboards#faq', as: :faq
  get 'services/web_design', to: 'dashboards#web_design', as: :web_design
  get 'services/internet', to: 'dashboards#internet', as: :internet
  get 'services/digital', to: 'dashboards#digital', as: :digital
  get '/services/big_data', to: 'dashboards#big_data', as: :big_data
  get '/services', to: 'dashboards#services', as: :services
  get '/cloud_solutions/retail_cloud', to: 'dashboards#retail_cloud', as: :retail_cloud
  get '/cloud_solutions/other_cloud', to: 'dashboards#other_cloud', as: :other_cloud
  get '/cloud_solutions/backup_cloud', to: 'dashboards#backup_cloud', as: :backup_cloud
  get '/cloud_solutions', to: 'dashboards#cloud_solutions', as: :cloud_solutions
  post '/contact_message', to: 'dashboards#contact_message', as: :contact_message
  get '/price_calculator', to: 'dashboards#price_calculator', as: :price_calculator

  namespace :admin do
    resources :blogs
    resources :categories, except: :show
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: 'dashboards#home'

  resources :categories, only: :show
  resources :blogs, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "application#index"
  # get 'web-application-development' => 'application#webDesign', as: :web_design
  # get 'internet-of-things' => 'application#internet', as: :internet
  # get 'digital-strategy-consulting' => 'application#digital', as: :digital
  # get 'big-data-analytics' => 'application#bigData', as: :big_data

  # get 'faq' => 'application#faq'
  # get 'cloud_solutions' => 'application#cloud_solutions'
  # get 'about' => 'application#about'
  # get 'services' => 'application#services'
  # get 'contacts' => 'application#contact'
  # post 'contact_message' => 'application#contact_message'
  # root to: 'welcome#index'
end
