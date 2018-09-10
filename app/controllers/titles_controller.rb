class TitlesController < ApplicationController
  before_action :set_title, only: [:show, :edit, :update, :destroy]

  def index
    @titles = Title.all
  end

  def show
    @contents = @title.contents
    @content = @title.contents.build
  end

  def new
    @titles = Title.all
    @title = Title.new
  end

  def edit
  end

  def create
    @category = Category.find(params[:category_id])
    @title = @category.titles.build(title_params)

    respond_to do |format|
      if @title.save
        format.html { redirect_to @title, notice: '新しいタイトルが作成されました' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @title.update(title_params)
        format.html { redirect_to @title, notice: 'タイトルを変更しました' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @title.destroy
    respond_to do |format|
      format.html { redirect_to titles_url, notice: 'タイトルと中の説明文が削除されました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title
      @title = Title.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def title_params
      params.require(:title).permit(:id, :title, :category_id)
    end
end
