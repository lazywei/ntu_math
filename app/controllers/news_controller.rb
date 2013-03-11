class NewsController < ApplicationController
  # GET /news
  # GET /news.json
  def index
    @news = News.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @news }
    end
  end

  # GET /news/1
  # GET /news/1.json
  def show
    @news = News.find(params[:id])
    data = {
      :title => @news.title,
      :id => @news.id,
      :content => @news.content,
      :content_html => @news.content_html,
      :created_at => @news.created_at,
      :updated_at => @news.updated_at
    }

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: data.to_json }
    end
  end
end
