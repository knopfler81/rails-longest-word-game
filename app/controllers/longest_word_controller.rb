require "longest_word"

class LongestWordController < ApplicationController


  def game
    @grid = LongestWord.generate_grid.join(' ')
    session[:start_time] = Time.now
    session[:counter] = (session[:counter] || 0) + 1
  end

  def score
    start_time = session[:start_time].to_time
    @results     = LongestWord.run_game(
      attempt: params[:attempt],
      grid: params[:grid],
      start_time: start_time,
      end_time: Time.now
      )
  end

end
