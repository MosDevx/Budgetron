class FinancialTransactionsController < ApplicationController
  before_action :set_financial_transaction, only: %i[ show edit update destroy ]

  # GET /financial_transactions or /financial_transactions.json
  def index
    @financial_transactions = FinancialTransaction.all
  end

  # GET /financial_transactions/1 or /financial_transactions/1.json
  def show
  end

  # GET /financial_transactions/new
  def new

    @financial_transaction = FinancialTransaction.new

    @categories = Category.all

    # @financial_transaction.category_id = params[:category_id]
    # puts params[:category_id]
  end
  
  # GET /financial_transactions/1/edit
  def edit
  end
  
  # POST /financial_transactions or /financial_transactions.json
  def create
    
    
    
    @financial_transaction = FinancialTransaction.new(name:financial_transaction_params[:name], amount:financial_transaction_params[:amount])
    
    @financial_transaction.user_id = current_user.id


    category_ids = financial_transaction_params[:category_ids].reject(&:empty?)
    
    # puts params[:category_ids]
    
    respond_to do |format|
      if @financial_transaction.save
        @financial_transaction.create_financial_transaction_categories(category_ids)
        
        format.html { redirect_to financial_transaction_url(@financial_transaction), notice: "Financial transaction was successfully created." }
        format.json { render :show, status: :created, location: @financial_transaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @financial_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financial_transactions/1 or /financial_transactions/1.json
  def update
    respond_to do |format|
      if @financial_transaction.update(financial_transaction_params)
        format.html { redirect_to financial_transaction_url(@financial_transaction), notice: "Financial transaction was successfully updated." }
        format.json { render :show, status: :ok, location: @financial_transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @financial_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_transactions/1 or /financial_transactions/1.json
  def destroy
    @financial_transaction.destroy

    respond_to do |format|
      format.html { redirect_to financial_transactions_url, notice: "Financial transaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_transaction
      @financial_transaction = FinancialTransaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def financial_transaction_params
      # params.fetch(:financial_transaction, {})
      params.require(:financial_transaction).permit(:name, :amount, :category_ids => [])
    end
end
