class HomeController < ApplicationController
  def index
    @questions = Question.all
    @likes = Like.first
  end
  
  def questions
    @questions = Question.all
  end
  
  def memo_create
    memo = Question.find(params[:q_id]).memos.create(content: params[:content])
    memo.save
    
    redirect_to '/'
  end
  
  def memo_update
    @one_memo = Question.find(params[:q_id]).memos.find(params[:m_id])
    @questions = Question.all
  end
  
  def memo_update_post
    one_memo = Question.find(params[:q_id]).memos.find(params[:m_id])
    one_memo.content = params[:content]
    one_memo.save
    
    redirect_to '/'
  end
  
  def memo_destroy
    memo = Question.find(params[:q_id]).memos.find(params[:m_id])
    memo.destroy
    
    redirect_to '/'
  end
  
  def like_create
    like = Memo.find(params[:m_id]).likes.create(like_count: params[:like_count])
    like.save

    redirect_to '/'
  end
end
