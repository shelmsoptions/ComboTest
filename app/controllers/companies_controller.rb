class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new( company_params )
    @company.name = params[:new_name] unless params[:new_name].empty?
    
    respond_to do |format|
      if @company.save
        format.html { redirect_to root_path, notice: 'New Company Entered' }
      else
        bleh
      end
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
  
  private
  
  def company_params
    params.require( :company ).permit( :name, :new_name )
  end
end
