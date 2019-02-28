class ToppagesController < ApplicationController
  def index
    # 本来は下記のように、ログインしているUserが所持するTaskのみを取得すべき
    if logged_in?
      @tasks = current_user.tasks.page(params[:page])
    end
  end
end