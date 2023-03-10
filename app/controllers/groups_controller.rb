class GroupsController < ApplicationController
  def index
    @groups = current_user.groups
  end

  def new
    @group = Group.new
  end

  def show
    @group = Group.find(params[:id])
    @activities = @group.activities.order(created_at: :desc)
  end

  def create
    @group = Group.new(group_params)
    current_user.groups << @group

    respond_to do |format|
      if @group.save
        format.html { redirect_to groups_url, notice: 'Group was successfully created!.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
