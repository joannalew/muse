class Api::CompaniesController < ApplicationController
    def create
        @company = Company.create!(company_params)
        render :show
    end

    private
    def company_params
        params.require(:company).permit(:name, :logo)
    end
end
