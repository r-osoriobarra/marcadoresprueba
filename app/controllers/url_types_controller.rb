class UrlTypesController < ApplicationController

    def index
        @url_types = UrlType.all
        @bookmarks = Bookmark.all
    end

    def show
        @url_type = UrlType.find(params[:id])
    end 
    
    def new
        @url_type = UrlType.new
        @url_types = UrlType.all
    end

    def create
        @url_type =  UrlType.new(url_type_params)
        respond_to do |format|
            if @url_type.save
                format.html { redirect_to url_types_path, notice: 'Se ha creado un tipo!'}
            else
                format.html { redirect_to url_types_path, notice: 'No se ha creado un tipo'}        
            end
        end
    end

    def edit
        @url_type = UrlType.find(params[:id])
        @url_types = UrlType.all
    end
    
    def update
        @url_type = UrlType.find(params[:id])
        respond_to do |format|
            if @url_type.update(url_type_params)
                format.html { redirect_to url_types_path, notice: 'Tipo se ha actualizado!' }
            else
                format.html { redirect_to url_types_path, notice: 'El tipo no se ha actualizado' }
            end
        end
    end

    def destroy
        @url_type = UrlType.find(params[:id])
        @url_type.destroy
        respond_to do |format|
            format.html { redirect_to url_types_path, notice: 'Se ha borrado el tipo' }
        end
    end    
    
    private
    
    def url_type_params
        params.require(:url_type).permit(:name)
    end
end
