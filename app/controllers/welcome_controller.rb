# -*- encoding : utf-8 -*-
class WelcomeController < ApplicationController
  def index
    redirect_to 'http://www.math.ntu.edu.tw/~camp'
  end
end
