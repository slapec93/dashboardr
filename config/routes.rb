Rails.application.routes.draw do
  resources :charts
  resources :dashboards
  resources :data_sources
  resources :data_source_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/data_source/available_tables' => 'data_sources#available_table_names'
end
