class PagesController < ApplicationController

  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def create
    @page = Page.new(page_params)

    if @page.save
       redirect_to @page
    else
       render 'new'
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    if @page.update_attributes(page_params)
      redirect_to @page
    else
      render "edit"
    end
  end

  private

  def page_params
    params.require(:page).permit(:text, :image_url, :book_id)
  end
end
