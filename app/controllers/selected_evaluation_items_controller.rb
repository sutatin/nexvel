class SelectedEvaluationItemsController < ApplicationController
  before_action :set_selected_evaluation_item, only: [:show, :edit, :update, :destroy]

  # GET /selected_evaluation_items
  # GET /selected_evaluation_items.json
  def index
    @selected_evaluation_items = SelectedEvaluationItem.all
  end

  # GET /selected_evaluation_items/1
  # GET /selected_evaluation_items/1.json
  def show
  end

  # GET /selected_evaluation_items/new
  def new
    @selected_evaluation_item = SelectedEvaluationItem.new
  end

  # GET /selected_evaluation_items/1/edit
  def edit
  end

  # POST /selected_evaluation_items
  # POST /selected_evaluation_items.json
  def create
    @selected_evaluation_item = SelectedEvaluationItem.new(selected_evaluation_item_params)

    respond_to do |format|
      if @selected_evaluation_item.save
        format.html { redirect_to @selected_evaluation_item, notice: 'Selected evaluation item was successfully created.' }
        format.json { render :show, status: :created, location: @selected_evaluation_item }
      else
        format.html { render :new }
        format.json { render json: @selected_evaluation_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selected_evaluation_items/1
  # PATCH/PUT /selected_evaluation_items/1.json
  def update
    respond_to do |format|
      if @selected_evaluation_item.update(selected_evaluation_item_params)
        format.html { redirect_to @selected_evaluation_item, notice: 'Selected evaluation item was successfully updated.' }
        format.json { render :show, status: :ok, location: @selected_evaluation_item }
      else
        format.html { render :edit }
        format.json { render json: @selected_evaluation_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selected_evaluation_items/1
  # DELETE /selected_evaluation_items/1.json
  def destroy
    @selected_evaluation_item.destroy
    respond_to do |format|
      format.html { redirect_to selected_evaluation_items_url, notice: 'Selected evaluation item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selected_evaluation_item
      @selected_evaluation_item = SelectedEvaluationItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selected_evaluation_item_params
      params.require(:selected_evaluation_item).permit(:user_id, :evaluation_item_id, :importance)
    end
end
