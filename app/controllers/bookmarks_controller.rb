class BookmarksController < ApplicationController

    def index
        @bookmarks = Bookmark.all
        @bookmark = Bookmark.new
    end
    
    def new
        @bookmark = Bookmark.new
        @categories = Category.all
        @url_types = UrlType.all
    end

    def create
        @bookmark =  Bookmark.new(bookmarks_params)
        respond_to do |format|
            if @bookmark.save
                format.js { render nothing: true, notice: 'Se creó el bookmark!'}
            else
                format.html { render nothing: true, notice: 'No se pudo crear el bookmark'}        
            end
        end
    end

    private

    def bookmarks_params
        params.require(:bookmark).permit(:name, :url, :category_id, :url_type_id)
        
    end
end