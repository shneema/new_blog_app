module Admin
	class UsersController < AdminController
		def index
			@users = User.unscoped.where(role: 'user')
		end

		def update
			@user = User.unscoped.find(params[:id])
			if params[:value] == 'block'
				args = true
				message = 'Blocked'
			else
				args = false
				message = 'UnBlocked'
			end

			respond_to do |format|
				if @user.update(blocked: args)
					flash[:message] = "Successfully #{message}"
					format.js
				end
			end
		end
	end
end