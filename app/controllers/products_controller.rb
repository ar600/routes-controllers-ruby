class ProductsController < ApplicationController
  def index
    render text: "What do you want me to say?"
  end
# ++++++++++++++++++++++++++++++++++++++++
  def new
  end
# ++++++++++++++++++++++++++++++++++++++++
  def hello
    render "hello"
  end
# ++++++++++++++++++++++++++++++++++++++++
  def sayHello
    puts "inside sayHello"
    render "sayHello"
  end
  # ++++++++++++++++++++++++++++++++++++++++
  def sayHelloJoe
    puts "inside sayHelloJoe"
    render "sayHelloJoe"
  end

  def sayHelloMichael
    puts "inside sayHelloMichael and Joe"
    redirect_to "/say/hello/joe"
  end

  def times
    # if session[:count] exists, leave it as is. Else set it to 0

    session[:count] ||=0
    render text: "You have visited this url #{session[:count]+=1} times"
  end

  def restart
    session.clear
    render text: "Destroyed Session!!!"
  end
end
