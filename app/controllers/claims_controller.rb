class ClaimsController < ApplicationController
	
	before_action :set_claim, only: [:show]

	def new
		@claim = Claim.new
	end

	def create
		@claim = Claim.new(claim_params)
		if @claim.save
			flash[:success] = "Your claim has been created successfully"
			redirect_to @claim
		else
			flash[:danger] = "Oops, claim creation failed. #{@claim.errors.full_messages.to_sentence}"
			redirect_back fallback_location: new_claim_path
		end
	end

	def show
		
	end

	private 

	def claim_params
		params.require(:claim).permit(
			:terms_of_services,
			:damage_room_overview_1,
			:damage_room_overview_2,
			:detail_of_damage_1,
			:detail_of_damage_2,
			:additional_photos
		)
	end

	def set_claim
		@claim = Claim.find(params[:id])
	end
end
