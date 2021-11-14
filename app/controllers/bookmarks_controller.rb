class BookmarksController < ApplicationController

    def index
        @bookmarks = Bookmark.all
        @bookmark = Bookmark.new
    end

    def show
        @bookmark = Bookmark.find(params[:id])
    end
    
    def new
        @bookmark = Bookmark.new
        @categories = Category.all
        @url_types = UrlType.all
    end

    def create
        @bookmark =  Bookmark.new(bookmark_params)
        respond_to do |format|
            if @bookmark.save
                format.js { render nothing: true, notice: 'Se creó el bookmark!'}
            else
                format.html { render nothing: true, notice: 'No se pudo crear el bookmark'}        
            end
        end
    end

    def edit
        @bookmark = Bookmark.find(params[:id])
        @categories = Category.all
        @url_types = UrlType.all
    end
    
    def update
        @bookmark = Bookmark.find(params[:id])
        respond_to do |format|
            if @bookmark.update(bookmark_params)
                format.js { render nothing: true, notice: 'El bookmark se ha actualizado!' }
            else
                format.html { redirect_to bookmarks_path, notice: 'El bookmark no se ha actualizado' }
            end
        end
    end

    def destroy
        @bookmark = Bookmark.find(params[:id])
        @bookmark.destroy
        respond_to do |format|
            format.js { render nothing: true, notice: 'Se ha borrado el bookmark.' }
        end
    end    

    private

    def bookmark_params
        params.require(:bookmark).permit(:name, :url, :category_id, :url_type_id)
        
    end
end