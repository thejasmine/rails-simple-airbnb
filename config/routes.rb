Rails.application.routes.draw do
  resources :flats do
    collection do
      get 'top', to: "flats#top"
      get 'worst', to: "flats#worst"
    end
  end
end
