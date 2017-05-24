Rails.application.routes.draw do
  get '/index' => 'home#index'
  
  post '/:q_id/memo_create' => 'home#memo_create'
  
  get '/:q_id/memo_update/:m_id' => 'home#memo_update'
  post '/:q_id/memo_update/:m_id' => 'home#memo_update_post'
  
  get '/:q_id/memo_destroy/:m_id' => 'home#memo_destroy'

  post '/:m_id/like_create' => 'home#like_create'
  
  get '/:q_id/like_update/:l_id' => 'home#like_update'
  post '/:q_id/like_update/:l_id' => 'home#like_update_post'
  
  get '/:q_id/like_destroy/:l_id' => 'home#like_destroy'
  
  get '/questions' => 'home#questions'
  
  
  root 'home#index'

end
