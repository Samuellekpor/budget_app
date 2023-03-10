class ActivitiesController < ApplicationController
  load_and_authorize_resource

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user

    respond_to do |format|
      if @activity.save
        format.html do
          redirect_to group_path(@activity.groups.first.id), notice: 'Activity was successfully created!.'
        end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def activity_params
    params.require(:activity).permit(:name, :amount, group_ids: [])
  end
end
