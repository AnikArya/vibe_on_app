Rails.application.routes.draw do
  root "welcome#vibe_on"

  get "upcoming_events", to: "events#upcoming", as: "upcoming_events"

  resources :events

  resources :bookings, only: [:new, :create] do
    collection do
      get 'success'     # /bookings/success?id=1
    end

    member do
      get 'verify'      # /bookings/:id/verify
    end
  end
end
