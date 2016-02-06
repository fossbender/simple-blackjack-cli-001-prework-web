def welcome
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  random_num = Random.new
  random_num.rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end



def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.strip
end

def hit?(player_total)
  prompt_user
  choice = get_user_input
  case choice
    when 'h'
      player_total += deal_card
    when 's'
      player_total
    else
      invalid_command
  end
end

def invalid_command
  puts 'Please enter a valid command'
  get_user_input
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
