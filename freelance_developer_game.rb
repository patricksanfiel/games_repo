

welcome_screen ="Welcome to Freelance Developer, the game where you sell your soul to sell some \ncode. \nType 'n' to continue"

game_instructions ="You are a Freelance Developer, going from client to client trying to sell your \nservices. Your coding knowledge is solid, but you're a little rusty when it \ncomes to networking. Correctly answer Ruby coding-based questions to tell \nclients what they want to hear. Be careful though, one wrong answer and you'll \nhave to hit the bricks.\nType 'n' to continue."

game_over ="\nGame Over.\nTry again?\nyes\nno"

goodbye ="Goodbye, thanks for playing!"
#client 1
first_client ="Looks like it's time to pay a visit to your first client. His name is Jeffrey, \nbut he keeps insisting you call him 'The Dude'. Whatever. He's looking to \ncommission someone to write a Solitaire game he can play on his computer. You \ndon't have the heart to tell him he may be a little behind the times on the \ntechnology front; besides, you've got rent due in a week. You tell him you'd be glad to do it, but before he hires you he's got some questions to ask to \nmake sure you know what your doing.\nType 'n' to continue."

client1_question1 ="\n\nputs \"No, Donny, these men are nihilists\"\n\nWill display which of the following outputs to the screen?\n\nA  \"No, Donny, these men are nihilists\"\nB  No, Donny, these men are nihilists\nC  \"No,Donny,thesemenarenihilists\"\nD  Error Message"

client1_gameover ="\nJeffrey \"The Dude\"\: \"Yeah, well, you know, that's just, like, your opinion, \nman.\"\nType \"n\" to continue."
client1_success ="\n\nJeffrey\"The Dude\"\: \"Whoa, that was, like, pretty good man. You're hired.\"\nType \"n\" to continue."

#Second Client
second_client ="\nWell, that was easier than expected. Unfortunately you celebrated your success a little too hard and ended up blowing your entire commission on umbrella drinks. Luckily, you've got another client lined up, a high ranking Pentagon official. Thanks to your umbrella drink hangover, all you can remember is his last name \nwas Hartman and he wanted to commission you for some sort of cybersecurity \nproject. Also, he seems like kind of a dick. You look over at him and panic as \nyou realize he's been talking while you've been lost in thought. He seems to be offering you the job, though, so that's good. He just needs to ask a couple \nquestions first to make sure you know what you're doing. Type \"n\" to continue"
client2_question1 = "\n\nWhich of the following is the correct way to set the variable \'rifle\' to equal \nthe string \"Charlene\"?\n\nA setvar(rifle) = \"Charlene\"\nB RIFLE = \"Charlene\"\nC \"Charlene\" = \"rifle\"\nD rifle = \"Charlene\""
client2_gameover1 = "\nSergeant Hartman\: \"It looks to me like the best part of you ran down the crack \nof your mama's ass and ended up as a brown stain on the mattress!\"\nType \"n\" to continue."
client2_success1 = "\nSergeant Hartman\: \"Outstanding!\""
client2_question2 = "\n\nWhich of the following is the correct way to unset the variable \"worth\"?\n\nA worth = 0\nB setvar \"worth\" = unset\nC worth = nil\nD worth = \"nil\""
client2_success2 = "\nSergeant Hartman\: \"Jesus H. Christ! I think I've got a hard-on!\""
client2_gameover2 = "\nSergeant Hartman\:\"What is your major malfunction, numbnuts?\"\nType \"n\" to continue."
#Third Client
third_client = "\nOkay, so that was interesting. You go home and cry in the shower for a while, \ncomforting yourself with the knowledge that you're one step closer to paying \nyour rent. You step out just in time to pick up a phone call from another \npotential client. He introduces himself as \"Humungus\", you decide its best if \nyou dont press the issue and you resist the urge to ask any other personal \nquestions. He's looking for someone to design an app to help him find nearby gas stations. You decide to take the job, because despite the unusual name, he \nseems like a reasonable fellow. You know the drill; answer the questions \ncorrectly and the job is yours, answer incorrectly and...\nLook, just answer them correctly. \nType \"n\" to continue."
client3_question1 = "\n\nWhich of the following is a way to create a new, empty hash called \"wasteland\"?\nA do new Hash[wasteland]\nB wasteland = Hash.new\nC wasteland = []\nD Both B and C."
client3_gameover1 = "Lord Humungus\: \"Just walk away\"\nType\"n\" to continue."
client3_success1 = "\nLord Humungus\: \"Impressive\""
client3_question2 = "\n\nWhich of the following is a way to return the value\"wait\" from this hash\nwasteland\={losers:\"wait\", tanker:\"gasoline\", max:\"mad\"}?\n\nA [1]\nB [0]\nC [:losers]\nD None of the above."
client3_gameover2 = "Lord Humungus\: \"I am gravely disappointed. Again you have made me unleash my \ndogs of war\"\nType \"n\" to continue."
client3_success2 = "\nLord Humungus\: \"The gasoline will be ours!\""
client3_question3 = "\n\nWhich of the following is a way to set the default value of this hash to \n\"ayatollah of rock and rolla\"\n\n humungus = {}\n\nA humungus = \"ayatollah of rock and rolla\"\nB humungus.default = \"ayatollah or rock and rolla\"\nC Humungus = \"ayatollah or rock and rolla\"\nD humungus.default(\"ayatollah or rock and rolla\")"
client3_gameover3 = "Lord Humungus\: \"What a puny plan.\"\nType \"n\" to continue."
client3_success3 = "\n\nLord Humungus\: \"I shall spare your life\""

you_win = "\n\nCongratulations!\nYou win!\nYou were able to come up with your rent money and you get to stay in your \napartment for another month. Good thing too, cause that \"Humungus\" dude is \nstanding outside your apartment with about thirty other provocatively dressed \ndudes holding bats and machine guns. Doesn't look like he'll be leaving anytime soon either.\nType \"n\" to continue. "
#methods

#requests user input
def request_user_input(screen,desired_input)
  puts screen
  input = gets.chomp.to_s.downcase
  until input == desired_input
    puts screen
    input = gets.chomp.to_s.downcase
  end
  input
end
#filters out answers other than a,b,c,d
def multiple_choice_filter(question)
  puts question
  user_answer = gets.chomp.to_s.downcase
  until ["a","b","c","d"].include?(user_answer)
    puts question
    user_answer = gets.chomp.to_s.downcase
  end
  return user_answer
end
#runs a game over
def game_over_input
  game_over ="\nGame Over.\nTry again?\nYes\nNo"
  puts game_over
  g_o = gets.chomp.to_s.downcase
  until ["yes","no"].include?(g_o)
    puts game_over
    g_o = gets.chomp.to_s.downcase
  end
  return g_o
end



loop do
  g_o = nil
  request_user_input(welcome_screen,"n")
  request_user_input(game_instructions, "n")
  request_user_input(first_client, "n")
  result = multiple_choice_filter(client1_question1)
  unless result == "b"
    request_user_input(client1_gameover,"n")
    g_o = game_over_input
  end
  if result == "b"
    request_user_input(second_client, "n")
    result =  multiple_choice_filter(client2_question1)
    unless result == "d"
      request_user_input(client2_gameover1,"n")
      g_o = game_over_input
    end
    if result == "d"
      puts client2_success1
      result = multiple_choice_filter(client2_question2)
      unless result == "c"
        request_user_input(client2_gameover2,"n")
        g_o = game_over_input
      end
      if result == "c"
        puts client2_success2
        request_user_input(third_client, "n")
        result = multiple_choice_filter(client3_question1)
        unless result == "b"
          request_user_input(client3_gameover1, "n")
          g_o = game_over_input
        end
        if result == "b"
          puts client3_success1
          result = multiple_choice_filter(client3_question2)
          unless result == "c"
            request_user_input(client3_gameover2, "n")
            g_o = game_over_input
          end
          if result == "c"
            puts client3_success2
            result = multiple_choice_filter(client3_question3)
            unless result == "b"
              request_user_input(client3_gameover3, "n")
              g_o = game_over_input
            end
            if result == "b"
              puts client3_success3
              request_user_input(you_win, "n")
              g_o = game_over_input
            end
          end
        end
      end
    end
  end
  break if g_o == "no"
end

# great work on the game
