class UsersController < ApplicationController
  def index
    @users = [
      User.new(
        id: 1,
        name: 'Konstantin',
        username: 'taster_of_honey',
        avatar_url: 'http://allavatars.ru/avatarki/image.raw?view=image&type=img&id=81'
      ),
      User.new(
         id: 2,
         name: 'Olya',
         username: 'Greate_Waiter',
         avatar_url: 'http://allavatars.ru/avatarki/image.raw?view=image&type=img&id=103'
       )
    ]
  end

  def new
  end

  def edit
  end

  def show
    @user =  User.new(
        name: 'Konstantin',
        username: 'taster_of_honey',
        avatar_url: 'http://allavatars.ru/images/joomgallery/thumbnails/_34/__6/winnie_puh_53_20120202_1653192351.jpg'
    )


    @questions = [
        Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
        Question.new(text: 'В чем смысл жизни?', created_at: Date.parse('27.03.2016'))
    ]
    @new_question = Question.new
  end
end
