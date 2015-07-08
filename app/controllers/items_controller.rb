class ItemsController < ApplicationController
	def index
		 @items = Item.all(:order => 'created_at DESC')
	end

	def new
  		@item = Item.new
  	end
  def create
  	@item = Item.create(item_params)
      redirect_to items_path

  end

  private

  def item_params
    params.require(:item).permit(:name, :serial, :description)
  end
end
