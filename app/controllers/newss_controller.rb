class NewssController < ApplicationController
  def new
    @news = News.new
  end

  def create
    @news = News.find(news_params)
    @news.user_id = current_user.id
    @news.save
    redirect_to newss_path
  end

  def index
  end

  def show
  end

  def destroy
  end

  private #一種の境界線、「ここから下はcontrollerの中でしか呼び出せません」
  #privateより後に定義されたメソッドは、アクションとして認識されなくなる

  def news_params #list_paramsではフォームで入力されたデータを受け取る
    params.require(:news).permit(:title, :body)
    #paramsはRailsで送られてきた値を受け取るためのメソッド
    #requireでデータのオブジェクト名(ここでは:news)を指定し、permitでキー（:title,:body）を指定
  end
end
