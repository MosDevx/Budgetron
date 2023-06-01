class GroupFinancialTransactionsController < ApplicationController
  before_action :set_group_financial_transaction, only: %i[ show edit update destroy ]

  # GET /group_financial_transactions or /group_financial_transactions.json
  def index
    @group_financial_transactions = GroupFinancialTransaction.all
  end

  # GET /group_financial_transactions/1 or /group_financial_transactions/1.json
  def show
  end

  # GET /group_financial_transactions/new
  def new
    @group_financial_transaction = GroupFinancialTransaction.new
  end

  # GET /group_financial_transactions/1/edit
  def edit
  end

  # POST /group_financial_transactions or /group_financial_transactions.json
  def create
    @group_financial_transaction = GroupFinancialTransaction.new(group_financial_transaction_params)

    respond_to do |format|
      if @group_financial_transaction.save
        format.html { redirect_to group_financial_transaction_url(@group_financial_transaction), notice: "Group financial transaction was successfully created." }
        format.json { render :show, status: :created, location: @group_financial_transaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group_financial_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_financial_transactions/1 or /group_financial_transactions/1.json
  def update
    respond_to do |format|
      if @group_financial_transaction.update(group_financial_transaction_params)
        format.html { redirect_to group_financial_transaction_url(@group_financial_transaction), notice: "Group financial transaction was successfully updated." }
        format.json { render :show, status: :ok, location: @group_financial_transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group_financial_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_financial_transactions/1 or /group_financial_transactions/1.json
  def destroy
    @group_financial_transaction.destroy

    respond_to do |format|
      format.html { redirect_to group_financial_transactions_url, notice: "Group financial transaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_financial_transaction
      @group_financial_transaction = GroupFinancialTransaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_financial_transaction_params
      params.fetch(:group_financial_transaction, {})
    end
end
