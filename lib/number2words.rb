
class String

  def number2words()
    final_number = []
    place1 = {"1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine"}

    place_teen = {"10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen"}

    place2 = {"2" => "twenty", "3" => "thirty", "4" => "fourty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}


    number_length = self.length
    backwards_number = self.reverse

    number_backwards = backwards_number.split("")
    first = number_backwards[0]
    second = number_backwards[1]
    third = number_backwards[2]
    fourth = number_backwards[3]
    fifth = number_backwards[4]
    sixth = number_backwards[5]
    seventh = number_backwards[6]
    eighth = number_backwards[7]
    nineth = number_backwards[8]

    # caulculates ones place
    if first != "0" && second != "1"
      final_number.push(place1.fetch(first))
      if second === nil
        return final_number.join()
      end
      if second === nil
        return final_number
      end
    end

    # caulculates tens place
    if second === "1"
      tens = number_backwards.slice(0,2).join().reverse()
      final_number.push(place_teen.fetch(tens))
      if third === nil
        return final_number.join()
      end
    elsif second != "1" && second != "0"
      final_number.unshift(place2.fetch(second))
      if third === nil
        return final_number.join()
      end
    end

    # caulculates hundreds place
    if third != "0"
      if second === "0"
      else
        final_number.unshift("-")
      end
      final_number.unshift("hundred")

      final_number.unshift("-")

      final_number.unshift(place1.fetch(third))
      if fourth === nil
        return final_number.join()
      end
    end

    # caulculates thousands place
    if fourth != "0"
      if first === "0" && second === "0" && third === "0"
      else
        final_number.unshift("-")
      end
      final_number.unshift("thousand")
      final_number.unshift("-")
      final_number.unshift(place1.fetch(fourth))
      if fifth === nil
        return final_number.join()
      end
    else
      final_number.push("")
    end

    # Calculates 10's thousands
    if fifth != "0"
      if first === "0" && second === "0" && third === "0" && fourth === "0"
      else
        final_number.unshift("-")
      end
      if fifth === "1"
        tens = number_backwards.slice(3,4).join().reverse()
        final_number.unshift("thousand")
        final_number.unshift("-")
        final_number.unshift(place_teen.fetch(tens))
        if sixth === nil
          return final_number.join()

        end
      else
        final_number.unshift(place2.fetch(fifth))
        if sixth === nil
          return final_number.join()
        end
      end
    end


    # Calculates 100 thounds place
    if sixth != "0"
      if first === "0" && second === "0" && third === "0" && fourth === "0" && fifth === "0"
      else
        final_number.unshift("-")
      end
      if fifth === "0"
        final_number.unshift("thousand")
        final_number.unshift("-")
        final_number.unshift("hundred")
        final_number.unshift("-")
        final_number.unshift(place1.fetch(sixth))
      else
        final_number.unshift("hundred")
        final_number.unshift("-")
        final_number.unshift(place1.fetch(sixth))
      end
      if seventh === nil
        return final_number.join()
      end
    end

    # Calculates millions place
    if seventh != "0"
      if first === "0" && second === "0" && third === "0" && fourth === "0" && fifth === "0" && sixth === "0"
      else
        final_number.unshift("-")
      end
      final_number.unshift("million")

      final_number.unshift("-")

      final_number.unshift(place1.fetch(seventh))
      if eighth === nil
        return final_number.join()
      end
    end

    # Calculates ten millionth place
    if eighth != "0"
      puts first
      puts second
      puts third
      puts fourth
      puts fifth
      puts sixth
      puts seventh
      puts eighth
      puts nineth
      if first === "0" && second === "0" && third === "0" && fourth === "0" && fifth === "0" && sixth === "0" && seventh === "0"
      else
        final_number.unshift("-")
      end
      if eighth === "1"
        tens = number_backwards.slice(6,7).join().reverse()
        puts tens
        if seventh === "0"
          final_number.unshift("million")
          final_number.unshift("-")
          final_number.unshift(place1.fetch(sixth))
        else
          final_number.unshift("million")
          final_number.unshift("-")
          final_number.unshift(place_teen.fetch(tens))
        end
        if nineth === nil
          return final_number.join()
        end
      else
        final_number.unshift(place2.fetch(nineth))
        if nineth === nil
          return final_number.join()
        end
      end
    end
    final_number.join()
  end
end
