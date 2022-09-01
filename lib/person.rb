# your code goes here
class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(x)
        @happiness = if (x > 10)
                        10
                    elsif (x < 0)
                        0
                    else
                        x
                    end
    end

    def hygiene=(x)
        @hygiene = if (x > 10)
                        10
                    elsif (x < 0)
                        0
                    else
                        x
                    end
    end

    def clean?
        self.hygiene> 7
    end

    def happy?
        self.happiness> 7
    end

    def get_paid(amount)
        self.bank_account +=amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic 
        when "politics"
            [self, friend].each { |person| person.happiness -= 2 }
            "blah blah partisan blah lobbyist"
        when "weather"
            [self, friend].each { |person| person.happiness += 1 }
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end