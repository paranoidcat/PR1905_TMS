# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user ||  User.new #guest user
    if user.role == nil
      can :read, Course
      can :read, Subject
    elsif user.role == 0
      can :read, Course
      can :read, Subject
      can :read, Exam
    elsif user.role == 1
      can :read, :all
      can :manage, Exam 
    end
  end
end
