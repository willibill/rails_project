class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy,:admin_edit]
  before_filter :authorize, except: [:new, :create]

autocomplete :role, :name, full: true, multiple: true

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        #UserMailer.signup_confirmation(@user).deliver
        #format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.html { redirect_to "http://localhost:3000/users/#{@user.id}", notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
  flag =  params[:user].delete(:password) if params[:user][:password].blank?

  puts " --------------------- #{ params[:user ]}  --- "
    respond_to do |format|
      if @user.update(user_params)
        #format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.html { redirect_to "http://localhost:3000/users/#{@user.id}", notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def admin_edit
    @user.roles.build unless @user.roles.size > 0
  end

  #autocomplete function for roles
  def autocomplete_role_name
   term = params[:term]
   if term && !term.empty?
   items = Role.select("distinct name"). where("LOWER(name) like ?", term.downcase + '%'). limit(10).order(:name)
   else
   items = {}
   end
   render :json => json_for_autocomplete(items, :name)
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      #format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.html { redirect_to "http://localhost:3000/users/", notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end





  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:fname, :lname, :email, :role_name, :password, :password_confirmation, role_ids:[])
    end



end
