# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                     items GET    /items(.:format)                                                                         items#index
#                           POST   /items(.:format)                                                                         items#create
#                  new_item GET    /items/new(.:format)                                                                     items#new
#                 edit_item GET    /items/:id/edit(.:format)                                                                items#edit
#                      item GET    /items/:id(.:format)                                                                     items#show
#                           PATCH  /items/:id(.:format)                                                                     items#update
#                           PUT    /items/:id(.:format)                                                                     items#update
#                           DELETE /items/:id(.:format)                                                                     items#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  devise_for :users
  resources :items

  root 'items#index'
end
