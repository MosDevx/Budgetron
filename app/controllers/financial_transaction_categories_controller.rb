class FinancialTransactionCategoriesController < ApplicationController
  before_action :set_financial_transaction_category, only: %i[ show edit update destroy ]

  # GET /financial_transaction_categories or /financial_transaction_categories.json
  def index
    @financial_transaction_categories = FinancialTransactionCategory.all
  end

  # GET /financial_transaction_categories/1 or /financial_transaction_categories/1.json
  def show
  end

  # GET /financial_transaction_categories/new
  def new
    @financial_transaction_category = FinancialTransactionCategory.new
  end

  # GET /financial_transaction_categories/1/edit
  def edit
  end

  # POST /financial_transaction_categories or /financial_transaction_categories.json
  def create
    @financial_transaction_category = FinancialTransactionCategory.new(financial_transaction_category_params)

    respond_to do |format|
      if @financial_transaction_category.save
        format.html { redirect_to financial_transaction_category_url(@financial_transaction_category), notice: "Financial transaction category was successfully created." }
        format.json { render :show, status: :created, location: @financial_transaction_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @financial_transaction_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financial_transaction_categories/1 or /financial_transaction_categories/1.json
  def update
    respond_to do |format|
      if @financial_transaction_category.update(financial_transaction_category_params)
        format.html { redirect_to financial_transaction_category_url(@financial_transaction_category), notice: "Financial transaction category was successfully updated." }
        format.json { render :show, status: :ok, location: @financial_transaction_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @financial_transaction_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_transaction_categories/1 or /financial_transaction_categories/1.json
  def destroy
    @financial_transaction_category.destroy

    respond_to do |format|
      format.html { redirect_to financial_transaction_categories_url, notice: "Financial transaction category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_transaction_category
      @financial_transaction_category = FinancialTransactionCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def financial_transaction_category_params
      params.fetch(:financial_transaction_category, {})
    end
end
