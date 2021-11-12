class BookmarksController < ApplicationController

    def index
        @bookmarks = Bookmark.all
    end

    def new
        @bookmark = Bookmark.new
    end

    def create
        @bookmark = Bookmark.new(bookmarks_params)
        respond_to do |format|
			if @bookmark.save!
			    format.html {redirect_to root_path, notice: 'si se creo'}
            else
                format.html {redirect_to root_path, notice: 'no se creo'}
			end
		end

    end
    
    def destroy
    end

    def update
        
    end

    def edit
        
    end

    private

    def bookmarks_params
        params.require(:bookmark).permit(:name, :url)
        
    end
end
