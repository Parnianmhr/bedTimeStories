class PagesController < ApplicationController

  def index
      @pages = Page.all
    end

    def show
      @page = Page.find(params[:id])
    end

    def new
      @page = Page.new
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
        render 'edit'
      end
    end

    def destroy
      @page = Page.find(params[:id])

      @page.destroy

      redirect_to pages_path
    end


    private

    def page_params
      params.require(:page).permit(:image_url, :text, :book_id)
    end
  end
