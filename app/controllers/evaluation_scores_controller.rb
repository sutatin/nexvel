class EvaluationScoresController < ApplicationController
  before_action :set_evaluation_score, only: [:show, :edit, :update, :destroy]

  # GET /evaluation_scores
  # GET /evaluation_scores.json
  def index
    @evaluation_scores = EvaluationScore.all
  end

  # GET /evaluation_scores/1
  # GET /evaluation_scores/1.json
  def show
  end

  # GET /evaluation_scores/new
  def new
    @evaluation_score = EvaluationScore.new
  end

  # GET /evaluation_scores/1/edit
  def edit
  end

  # POST /evaluation_scores
  # POST /evaluation_scores.json
  def create
    @evaluation_score = EvaluationScore.new(evaluation_score_params)

    respond_to do |format|
      if @evaluation_score.save
        format.html { redirect_to @evaluation_score, notice: 'Evaluation score was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation_score }
      else
        format.html { render :new }
        format.json { render json: @evaluation_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluation_scores/1
  # PATCH/PUT /evaluation_scores/1.json
  def update
    respond_to do |format|
      if @evaluation_score.update(evaluation_score_params)
        format.html { redirect_to @evaluation_score, notice: 'Evaluation score was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation_score }
      else
        format.html { render :edit }
        format.json { render json: @evaluation_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_scores/1
  # DELETE /evaluation_scores/1.json
  def destroy
    @evaluation_score.destroy
    respond_to do |format|
      format.html { redirect_to evaluation_scores_url, notice: 'Evaluation score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation_score
      @evaluation_score = EvaluationScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_score_params
      params.require(:evaluation_score).permit(:selected_evaluation_item_id, :interest_id, :score)
    end
end
