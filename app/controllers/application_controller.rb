class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # 本来Viewでしか使えないはずのヘルパーモジュールのメソッドを、Controller内で使えるようにするために、下記の記述をしている。
  # これをMix-inという
  include SessionsHelper
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

  def counts(user)
    @count_tasks = user.tasks.count
  end
end