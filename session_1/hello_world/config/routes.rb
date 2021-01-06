Rails.application.routes.draw do
  get 'page/root'
  get 'page/about_me'
  get '/', to: 'page#root'
  get 'about_me', to: 'page#about_me'
end
