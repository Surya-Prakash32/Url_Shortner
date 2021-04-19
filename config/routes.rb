Rails.application.routes.draw do
  post 'link', to: "link#long_to_short"
  get '/:short_url', to: "link#short_to_long"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
