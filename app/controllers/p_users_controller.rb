class PUsersController < ApplicationController
  before_action :set_p_user, only: [:show, :edit, :update, :destroy]

  # GET /p_users
  # GET /p_users.json
  def index
    @p_users = PUser.all
  end

  # GET /p_users/1
  # GET /p_users/1.json
  def show

    #make sure user is unverified before checking docs
    if (!@p_user.verified)
      verify_id_docs
    end

  end

  # GET /p_users/new
  def new
    @p_user = PUser.new
  end

  # GET /p_users/1/edit
  def edit
  end

  # POST /p_users
  # POST /p_users.json
  def create
    @p_user = PUser.new(p_user_params)

    respond_to do |format|
      if @p_user.save
        format.html { redirect_to @p_user, notice: 'P user was successfully created.' }
        format.json { render :show, status: :created, location: @p_user }
      else
        format.html { render :new }
        format.json { render json: @p_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_users/1
  # PATCH/PUT /p_users/1.json
  def update
    respond_to do |format|
      if @p_user.update(p_user_params)
        format.html { redirect_to @p_user, notice: 'P user was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_user }
      else
        format.html { render :edit }
        format.json { render json: @p_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_users/1
  # DELETE /p_users/1.json
  def destroy
    @p_user.destroy
    respond_to do |format|
      format.html { redirect_to p_users_url, notice: 'P user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_p_user
    @p_user = PUser.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def p_user_params
    params.require(:p_user).permit(:first_name, :last_name, :email, :id_number, :password, :password_confirmation, :pic_url, :verified, :avatar, :id_slash_passport_pic)
  end
end
