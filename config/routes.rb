Rails.application.routes.draw do
  get  'game'    => 'longest_word#game'
  post 'score'   => 'longest_word#score'
  get  'score'   => 'longest_word#score'

end
