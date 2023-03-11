require 'rails_helper'

RSpec.describe Activity, type: :model do
  describe 'Validations' do
    image = 'https://www.pselaw.com/wp-content/uploads/2016/08/istockpikachu-160x160.jpg'
    user = User.create(name: 'Anna', email: 'anna@gmail.com', password: '123456')
    group = Group.create(name: 'Cakes', icon: image, user_id: user.id)
    activity = Activity.new(name: 'Cup cakeake', amount: 100.0, author_id: user.id, group_ids: group.id)

    it 'name should be present' do
      activity.name = nil
      expect(activity).to_not be_valid
    end

    it 'amount should be present' do
      activity.amount = nil
      expect(activity).to_not be_valid
    end

    it 'aleast one group should be present' do
      activity.groups = []
      expect(activity).to_not be_valid
    end

    it 'activity user should be present' do
      activity.author = nil
      expect(activity).to_not be_valid
    end
  end
end
