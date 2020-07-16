module Admin
	class UsersController < AdminController
		include Userable
		
		def index
			@pagy, @users = pagy(User.unscoped.where(role: 'user'), items: 5)
		end

		def invite_user; end

    def close_dialog; end

		def send_mail
		  User.invite!(email: params[:anything][:email])
		  redirect_to admin_users_path
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
					UserMailer.with(user: @user, args: args, subject: 'Account Updates').account_update_email.deliver_now
					flash[:message] = "Successfully #{message}"
					format.js
				end
			end
		end
	end
end