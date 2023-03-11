class Ability
  include CanCan::Ability

  def initialize(_user)
    include CanCan::Ability

    def initialize(user)
      return unless user.present?

      can(:manage, Category, user:)
      can(:manage, Product, user:)
      can :read, Category
      can :create, :all
    end
  end
end
