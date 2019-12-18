# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||=  User.new #guest user

    if user.role == 0
      can :all
    else
      can :read, :all
    end
  end
end
