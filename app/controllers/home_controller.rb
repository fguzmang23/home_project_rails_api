class HomeController < ApplicationController
  def method1
    puts "Method1 to simply print data to console"
    render status: 204
  end
  def method2
    puts 'the parameters'
    puts params[:id]

    render status: 200, json: {:response => "the id received: #{params[:id]}"}
  end

  def method3
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    result = number1 + number2

    render status: 200, json: {:response => "the sum: #{result}"}
  end
  def method4
    new_user = User.new(name: "Carlos22222", last_name: "Go22nzalez22")
    new_user.save()

    new_post = Post.new(user_id: new_user.id, text: "the te222xt the text")
    new_post.save()
  end

  def create_user
    if params.include?('name') && params.include?('last_name')
      new_user = User.new(name: params[:name], last_name: params[:last_name])
      new_user.save()
    end
  end
  def create_post
    if params.include?('text') && params.include?('user_id')
      user_matched = User.find_by(id: params[:user_id])
      unless user_matched.nil?
        new_post = Post.new(user_id: params[:user_id], thetext: params[:text])
        new_post.save()
      end
    end
  end
end
