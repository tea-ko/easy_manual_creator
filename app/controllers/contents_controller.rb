class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]
  before_action :require_loggin, only: [:new, :edit, :create, :update, :destroy]

  def index
    @contents = Content.all
  end

  def show
    @content = Content.find(params[:id])
  end

  def new
    if params[:back]
      @content = Content.new(content_params)
    else
      @content = Content.new
    end
  end

  def edit
  end

  def confirm
    @content = Content.new(content_params)
  end  

  def create
    @content = Content.all
    @title = Title.find(content_params[:title_id])
    @content = @title.contents.build(content_params)
    #@content.user_id = current_user.id
    
    respond_to do |format|
      if @content.save
        format.html { redirect_to @title, notice: '手順の説明が追加されました' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @title = Title.find(content_params[:title_id])
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to @title, notice: '手順の説明が更新されました' }
        format.json { render :show, status: :ok, location: @content }
      else
        format.html { render :edit }
        format.json { render json: @title.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to contents_url, notice: '説明文と画像が削除されました。' }
      format.json { head :no_content }
    end
  end

  private

    def set_content
      @content = Content.find(params[:id])
    end

    def content_params
      params.require(:content).permit(:id, :content, :image, :image_cache, :title_id)
    end
    
    def require_loggin
      unless logged_in? then
        render new_session_path
      end
    end    
end
