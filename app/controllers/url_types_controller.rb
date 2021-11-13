class UrlTypesController < ApplicationController
    def index
        @url_types = UrlType.all
    end

    def show
        @url_type = UrlType.find(params[:id])
    end

    def new
        @url_type = UrlType.new
    end

    def create
        @url_type = UrlType.new(urltypes_params)
        respond_to do |format|
			if @url_type.save!
			    format.html {redirect_to url_types_path, notice: 'si se creo'}
            else
                format.html {redirect_to url_types_path, notice: 'no se creo'}
			end
		end

    end


    
    def destroy
        @url_type = UrlType.find(params[:id])
        @url_type.destroy
        respond_to do |format|
            format.html { redirect_to url_types_path, notice: "Type was successfully destroyed." }
        end
    end
   
    end
    def update
        
    def edit
        
    end

    private

    def urltypes_params
        params.require(:url_type).permit(:name)
        
    end
end
