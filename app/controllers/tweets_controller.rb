class TweetsController < ApplicationController
  def index
  end

  def show
    @tweet= Tweet.all.order('result DESC')
  end

  def new
  end

  def create
    @tweet= Tweet.new
    @tweet.username= params[:tweet][:username]
    @tweet.number= params[:tweet][:number]
    @tweet.question1= params[:tweet][:question1]
    @tweet.question2= params[:tweet][:question2]
    @tweet.question3= params[:tweet][:question3]
    @tweet.question4= params[:tweet][:question4]
    @tweet.question5= params[:tweet][:question5]
    @tweet.question6= params[:tweet][:question6]
    @tweet.question7= params[:tweet][:question7]
    @tweet.question8= params[:tweet][:question8]
    @tweet.question9= params[:tweet][:question9]
    @tweet.qustion10= params[:tweet][:question10]
    @tweet.result=params[:tweet][:question1].to_i+params[:tweet][:question2].to_i+params[:tweet][:question3].to_i+params[:tweet][:question4].to_i+params[:tweet][:question5].to_i+params[:tweet][:question6].to_i+params[:tweet][:question7].to_i+params[:tweet][:question8].to_i+params[:tweet][:question9].to_i+params[:tweet][:qustion10].to_i
    @tweet.save
    redirect_to '/tweets/index'
  end
end
