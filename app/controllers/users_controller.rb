class UsersController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
      name: 'Konstantin',
      username: 'taster_of_honey',
      avatar_url: 'http://allavatars.ru/images/joomgallery/thumbnails/_34/__6/winnie_puh_53_20120202_1653192351.jpg'
    )

    @questions = [
        Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
        Question.new(text: 'В чем смысл?', created_at: Date.parse('27.03.2016'))
    ]
    @new_question = Question.new
  end
end
