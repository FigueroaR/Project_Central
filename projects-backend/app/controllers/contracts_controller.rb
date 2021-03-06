class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :update, :destroy]

  # GET /contracts
  def index
    
    @contracts = Contract.all

    render json: @contracts
  end

  # GET /contracts/1
  def show
    render json: @contract
  end

  # POST /contracts
  def create
    
    #binding.pry
    @contract = Contract.new(contract_params)

    if @contract.valid?
      @contract.save
      render json: @contract, status: :created, location: @contract
    else
      render json: @contract.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contracts/1
  def update
    #binding.pry
    if @contract.update(contract_params)
      render json: @contract
    else
      render json: @contract.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contracts/1
  def destroy
    @contract.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract
      @contract = Contract.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contract_params
      params.require(:contract).permit(:projectName, :projectStreet, :projectCity, :projectCountry, 
        :projectBudget, :projectBeginDate, :projectEndDate, :projectType, :projectInformation, :projectStaff, 
        :projectCompleted, :monthsEstimated, :monthsCurrent, :monthsOverDue, :contractor_id, :contractor_lastName)
    end
end
