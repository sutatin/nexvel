class EvaluationItemsController < ApplicationController
  before_action :set_evaluation_item, only: [:show, :edit, :update, :destroy]

  # GET /evaluation_items
  # GET /evaluation_items.json
  def index
    @evaluation_items = EvaluationItem.all
  end

  # GET /evaluation_items/1
  # GET /evaluation_items/1.json
  def show
  end

  # GET /evaluation_items/new
  def new
    @evaluation_item = EvaluationItem.new
  end

  # GET /evaluation_items/1/edit
  def edit
  end

  # POST /evaluation_items
  # POST /evaluation_items.json
  def create
    @evaluation_item = EvaluationItem.new(evaluation_item_params)

    respond_to do |format|
      if @evaluation_item.save
        format.html { redirect_to @evaluation_item, notice: 'Evaluation item was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation_item }
      else
        format.html { render :new }
        format.json { render json: @evaluation_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluation_items/1
  # PATCH/PUT /evaluation_items/1.json
  def update
    respond_to do |format|
      if @evaluation_item.update(evaluation_item_params)
        format.html { redirect_to @evaluation_item, notice: 'Evaluation item was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation_item }
      else
        format.html { render :edit }
        format.json { render json: @evaluation_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_items/1
  # DELETE /evaluation_items/1.json
  def destroy
    @evaluation_item.destroy
    respond_to do |format|
      format.html { redirect_to evaluation_items_url, notice: 'Evaluation item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation_item
      @evaluation_item = EvaluationItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_item_params
      params.require(:evaluation_item).permit(:title)
    end
end
