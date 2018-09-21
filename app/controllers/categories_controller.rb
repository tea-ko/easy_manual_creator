class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :require_loggin, only: [:new, :edit, :create, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
    @titles = @category.titles
    @title = @category.titles.build
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: '新しいカテゴリが作成されました' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'カテゴリ名が更新されました' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'カテゴリと中のマニュアルが全て削除されました' }
    end
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:id, :name)
    end
    
    def require_loggin
      unless logged_in? then
        render new_session_path
      end
    end
end
