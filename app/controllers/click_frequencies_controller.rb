class ClickFrequenciesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_click_frequency, only: [:show, :edit, :update, :destroy]

  # GET /click_frequencies
  # GET /click_frequencies.json
  def index
    @click_frequencies = ClickFrequency.all
  end

  # GET /click_frequencies/1
  # GET /click_frequencies/1.json
  def show
  end

  # GET /click_frequencies/new
  def new
    @click_frequency = ClickFrequency.new
  end

  # GET /click_frequencies/1/edit
  def edit
  end

  # POST /click_frequencies
  # POST /click_frequencies.json
  def create
    @click_frequency = ClickFrequency.new(click_frequency_params)
    @click_frequency.user = current_user

    respond_to do |format|
      if @click_frequency.save
        format.html { redirect_to @click_frequency, notice: 'Click frequency was successfully created.' }
        format.json { render :show, status: :created, location: @click_frequency }
      else
        format.html { render :new }
        format.json { render json: @click_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /click_frequencies/1
  # PATCH/PUT /click_frequencies/1.json
  def update
    respond_to do |format|
      if @click_frequency.update(click_frequency_params)
        format.html { redirect_to @click_frequency, notice: 'Click frequency was successfully updated.' }
        format.json { render :show, status: :ok, location: @click_frequency }
      else
        format.html { render :edit }
        format.json { render json: @click_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /click_frequencies/1
  # DELETE /click_frequencies/1.json
  def destroy
    @click_frequency.destroy
    respond_to do |format|
      format.html { redirect_to click_frequencies_url, notice: 'Click frequency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_click_frequency
      @click_frequency = ClickFrequency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def click_frequency_params
      params.require(:click_frequency).permit(:user_id, :click_count)
    end
end
