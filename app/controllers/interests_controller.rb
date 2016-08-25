class InterestsController < ApplicationController
  before_action :set_interest, only: [:show, :edit, :update, :destroy]

  # GET /interests
  # GET /interests.json
  def index
    @interests = Interest.all
  end

  # GET /interests/1
  # GET /interests/1.json
  def show
    @interest_memos = @interest.interest_memos
    @evaluation_scores = @interest.evaluation_scores.includes(:selected_evaluation_item)
    graph
    
  end

  # GET /interests/new
  def new
    @interest = Interest.new
  end

  # GET /interests/1/edit
  def edit
    @array_evaluation_titles = EvaluationItem.all.pluck(:title)
  end

  # POST /interests
  # POST /interests.json
  def create
    @interest = Interest.new(interest_params)

    respond_to do |format|
      if @interest.save
        format.html { redirect_to @interest, notice: '選考状況概要を更新しました。' }
        format.json { render :show, status: :created, location: @interest }
      else
        format.html { render :new }
        format.json { render json: @interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /interests/addCompany
  def add_company
    @interest = Interest.new()
    @interest.company_id = params['company_id']
    @interest.user_id = current_user.id
    @interest.score = 0
    @interest.status = "情報収集中"

    respond_to do |format|
      if @interest.save
        format.html { redirect_to current_user, notice: 'Interest was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  # PATCH/PUT /interests/1
  # PATCH/PUT /interests/1.json
  def update
    respond_to do |format|
      if @interest.update(interest_params)
        format.html { redirect_to @interest, notice: 'Interest was successfully updated.' }
        format.json { render :show, status: :ok, location: @interest }
      else
        format.html { render :edit }
        format.json { render json: @interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interests/1
  # DELETE /interests/1.json
  def destroy
    @interest.destroy
    respond_to do |format|
      format.html { redirect_to interests_url, notice: 'Interest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def graph
      array_evaluation_titles = EvaluationItem.all.pluck(:title)
      array_evaluation_scores = @evaluation_scores.pluck(:score)
      
      @graph = LazyHighCharts::HighChart.new('graph') do |f|
        f.chart(polar: true,type:'line') #グラフの種類
        f.pane(size:'80%')                  #グラフサイズの比
        f.title(text: "総合得点： #{@interest.score} / 10" )         #タイトル
        f.xAxis(categories: array_evaluation_titles,tickmarkPlacement:'on')
        #categories:各項目の名前,tickmarkPlacement:'on'だとメモリ表示がカテゴリーの表示に沿う
        f.yAxis(gridLineInterpolation: 'polygon',lineWidth:0,min:0,max:5) #各項目の最大値やら
        f.series(name:'あなたの評価',data: array_evaluation_scores,pointPlacement:'on')
       #各データ
        f.legend(align: 'right',
  	        verticalAlign: 'top',
  	        y: 70,
  	        layout: 'vertical')
	     
      end
  end    


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest
      @interest = Interest.find(params[:id])
      check_mine
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_params
      params.require(:interest).permit(:user_id, :company_id,:score, :status, :date, evaluation_scores_attributes: [:score,:id])
    end
    
    def check_mine
      redirect_to current_user unless mine?(@interest.user_id)
    end

end
