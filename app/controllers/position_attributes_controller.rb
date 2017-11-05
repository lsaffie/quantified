class PositionAttributesController < ApplicationController
  before_action :set_attribute, only: [:show, :edit, :update, :destroy]

  # GET /attributes
  # GET /attributes.json
  def index
    @attributes = PositionAttribute.all
  end

  # GET /attributes/1
  # GET /attributes/1.json
  def show
  end

  # GET /attributes/new
  def new
    @attribute = PositionAttribute.new
  end

  # GET /attributes/1/edit
  def edit
  end

  # POST /attributes
  # POST /attributes.json
  def create
    @attribute = PositionAttribute.new(attribute_params)

    respond_to do |format|
      if @attribute.save
        format.html { redirect_to @attribute, notice: 'PositionAttribute was successfully created.' }
        format.json { render :show, status: :created, location: @attribute }
      else
        format.html { render :new }
        format.json { render json: @attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attributes/1
  # PATCH/PUT /attributes/1.json
  def update
    respond_to do |format|
      if @attribute.update(attribute_params)
        format.html { redirect_to @attribute, notice: 'PositionAttribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @attribute }
      else
        format.html { render :edit }
        format.json { render json: @attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attributes/1
  # DELETE /attributes/1.json
  def destroy
    @attribute.destroy
    respond_to do |format|
      format.html { redirect_to attributes_url, notice: 'PositionAttribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute
      @attribute = PositionAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attribute_params
      params.require(:attribute).permit(:name)
    end
end
