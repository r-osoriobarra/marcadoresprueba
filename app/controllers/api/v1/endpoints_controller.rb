module Api
    module V1
        class EndpointsController < V1Controller
            def api
                @category = Category.find(params[:id])
                render json: @category.to_json(include: [:sub_categories, :bookmarks])
            end
        end
    end
end
