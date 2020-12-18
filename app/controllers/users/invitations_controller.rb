module Api
  class Users::InvitationsController < Devise::InvitationsController
    include InvitableMethods
    before_action :authenticate_user!, only: :create

    def create
      User.invite!({ email: params[:email] }, current_user)

      render json: { success: "Invitation sent!" }, status: :created
    end

    def edit
      redirect_to "http://localhost:3001/invitation?invitation_token=#{params[:invitation_token]}"
    end

    def update
      user = User.accept_invitation!(accept_invitation_params)
      if @user.errors.empty?
        render json: { success: ["User updated."] }, status: :accepted
      else
        render json: { errors: user.errors.full_messages },
          status: :unprocessable_entity
      end
    end

    private

    def invite_params
      params.permit(:email)
    end

    def accept_invitation_params
      params.permit(:password, :password_confirmation, :invitation_token)
    end
  end
end
