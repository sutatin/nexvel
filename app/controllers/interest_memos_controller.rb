class InterestMemosController < ApplicationController
  before_action :set_interest_memo, only: [:show, :edit, :update, :destroy]

  # GET /interest_memos
  # GET /interest_memos.json
  def index
    @interest_memos = InterestMemo.all
  end

  # GET /interest_memos/1
  # GET /interest_memos/1.json
  def show
  end

  # GET /interest_memos/new
  def new
    @interest_memo = InterestMemo.new({'interest_id':params['interest_id']})
  end

  # GET /interest_memos/1/edit
  def edit
  end

  # POST /interest_memos
  # POST /interest_memos.json
  def create
    @interest_memo = InterestMemo.new(interest_memo_params)

    respond_to do |format|
      if @interest_memo.save
        format.html { redirect_to interest_path(@interest_memo.interest_id), notice: '新しいメモを作成しました' }
        format.json { render :show, status: :created, location: @interest_memo }
      else
        format.html { render :new }
        format.json { render json: @interest_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interest_memos/1
  # PATCH/PUT /interest_memos/1.json
  def update
    respond_to do |format|
      if @interest_memo.update(interest_memo_params)
        format.html { redirect_to @interest_memo, notice: 'Interest memo was successfully updated.' }
        format.json { render :show, status: :ok, location: @interest_memo }
      else
        format.html { render :edit }
        format.json { render json: @interest_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interest_memos/1
  # DELETE /interest_memos/1.json
  def destroy
    @interest_memo.destroy
    respond_to do |format|
      format.html { redirect_to interest_memos_url, notice: 'Interest memo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest_memo
      @interest_memo = InterestMemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_memo_params
      params.require(:interest_memo).permit(:interest_id, :date, :memo)
    end
end
