class ScoreCardsController < ApplicationController
  before_action :set_applicant
  before_action :set_score_card, only: [:show, :edit, :update, :destroy]

  # GET /score_cards
  # GET /score_cards.json
  def index
    @score_cards = @applicant.score_cards
  end

  # GET /score_cards/1
  # GET /score_cards/1.json
  def show
    @score_card = @applicant.score_cards.find(params[:id])
    @position_attributes = PositionAttribute.where(position_id: @score_card.position_id)
  end

  # GET /score_cards/new
  def new
    @score_card = @applicant.score_cards.build
    @position_attributes = @applicant.position.position_attributes

    @position_attributes.each do |attr|
      @score_card.scores.build(position_attribute_id: attr.id)
    end
  end

  # GET /score_cards/1/edit
  def edit
  end

  # POST /score_cards
  # POST /score_cards.json
  def create
    @score_card = @applicant.score_cards.new(score_card_params)

    respond_to do |format|
      if @score_card.save
        format.html { redirect_to applicant_score_cards_path(@applicant), notice: 'Score card was successfully created.' }
        format.json { render :show, status: :created, location: @score_card }
      else
        format.html { render :new }
        format.json { render json: @score_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /score_cards/1
  # PATCH/PUT /score_cards/1.json
  def update
    respond_to do |format|
      if @score_card.update(score_card_params)
        format.html { redirect_to @score_card, notice: 'Score card was successfully updated.' }
        format.json { render :show, status: :ok, location: @score_card }
      else
        format.html { render :edit }
        format.json { render json: @score_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /score_cards/1
  # DELETE /score_cards/1.json
  def destroy
    @score_card.destroy
    respond_to do |format|
      format.html { redirect_to score_cards_url, notice: 'Score card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score_card
      @score_card = ScoreCard.find(params[:id])
    end

    def set_applicant
      @applicant = Applicant.find(params[:applicant_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def score_card_params
      params.require(:score_card).permit(:score, scores_attributes: [:position_attribute_id, :score])
    end
end
