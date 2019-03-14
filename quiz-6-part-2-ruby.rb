# A Few Things to Try

# Make an OrangeTree class.
# It should have a  height method which returns its height,
# and a oneYearPasses method, which, when called, ages the tree one year.
# Each year the tree grows taller (however much you think an orange tree should grow in a year),
# and after some number of years (again, your call) the tree should die.
# For the first few years, it should not produce fruit, but after a while it should,
# and I guess that older trees produce more each year than younger trees...
# whatever you think makes most sense.
# And, of course, you should be able to countTheOranges (which returns the number of oranges on the tree),
# and pickAnOrange (which reduces the @orangeCount by one and returns a string telling you how delicious the orange was, or else it just tells you that there are no more oranges to pick this year).
# Make sure that any oranges you don't pick one year fall off before the next year.



# Write a program so that you can interact with your baby dragon.
# You should be able to enter commands like  feed and walk,
# and have those methods be called on your dragon.
# Of course, since what you are inputting are just strings,
# you will have to have some sort of method dispatch,
# where your program checks which string was entered,
# and then calls the appropriate method.

class Dragon

    def initialize 
      print "What would you name your baby dragon ... "
      name = gets.chomp.upcase
      @name = name
      @asleep = false
      @stuffInBelly     = 5  # He's full.
      @stuffInIntestine =  0  # He doesn't need to go.
  
      puts @name + ' is born.'
      dispatch
    end
  
    def dispatch
      print "What do you want to do with " + @name + " ... "
      while @stuffInBelly >= 0
        action = gets.chomp
        if action.downcase == 'feed'
          feed
        elsif action.downcase == 'toss'
          toss
        elsif action.downcase == 'rock'
          rock
        elsif action.downcase == 'walk'
          walk
        elsif action.downcase == 'putToBed'.downcase or action.downcase == 'sleep' 
          putToBed
        else
          puts "Enter a valid action (eg: 'feed', 'toss', 'rock', 'putToBed', 'sleep' or 'walk')"
        end
        print "What else would you like to do..."
      end
  
    end
  
    def feed
      puts 'You feed ' + @name + '.'
      @stuffInBelly += 3
      passageOfTime
    end
  
    def walk
      puts 'You walk ' + @name + '.'
      @stuffInIntestine = 0
      @stuffInBelly -= 1
      passageOfTime
    end
  
    def putToBed
      puts 'You put ' + @name + ' to bed.'
      @asleep = true
      3.times do
        if @asleep
          passageOfTime
        end
        if @asleep
          puts @name + ' snores, filling the room with smoke.'
        end
      end
      if @asleep
        @asleep = false
        puts @name + ' wakes up slowly.'
      end
    end
  
    def toss
      puts 'You toss ' + @name + ' up into the air.'
      puts 'He giggles, which singes your eyebrows.'
      @stuffInBelly -= 1
      passageOfTime
    end
  
    def rock
      puts 'You rock ' + @name + ' gently.'
      @asleep = true
      puts 'He briefly dozes off...'
      @stuffInBelly -= 1
      passageOfTime
      if @asleep
        @asleep = false
        puts '...but wakes when you stop.'
      end
    end
  
    private
  
    # "private" means that the methods defined here are
    # methods internal to the object.  (You can feed
    # your dragon, but you can't ask him if he's hungry.)
  
    def hungry?
      # Method names can end with "?".
      # Usually, we only do this if the method
      # returns true or false, like this:
      @stuffInBelly <= 2
    end
  
    def poopy?
      @stuffInIntestine >= 8
    end
  
    def passageOfTime
      if @stuffInBelly > 0
        # Move food from belly to intestine.
        @stuffInBelly     = @stuffInBelly     - 1
        @stuffInIntestine = @stuffInIntestine + 1
      else  # Our dragon is starving!
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts @name + ' is starving!  In desperation, he ate YOU!'
        exit  # This quits the program.
      end
  
      if @stuffInIntestine >= 10
        @stuffInIntestine = 0
        puts 'Whoops!  ' + @name + ' had an accident...'
      end
  
      if hungry?
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts @name + '\'s stomach grumbles...'
      end
  
      if poopy?
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts @name + ' does the potty dance...'
      end
    end
  
  end
  
  pet = Dragon.new