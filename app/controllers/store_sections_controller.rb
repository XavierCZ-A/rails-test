class StoreSectionsController < ApplicationController

  def index
    @store_sections = StoreSection.all
  end

  def new
    @store_section = StoreSection.new
  end

  def create
    @store_section = StoreSection.new(store_section_params)
      if @store_section.save
        redirect_to store_sections_path, notice: "Store section was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
  end

  private
    def set_store_section
      @store_section = StoreSection.find(params[:id])
    end

    def store_section_params
      params.require(:store_section).permit(:name)
    end
end
