Rails.application.routes.draw do
  resources :events
  post '/event_api' => 'events_controller#event_api'
end
