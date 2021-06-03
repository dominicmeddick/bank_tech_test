# frozen_string_literal: true

# class 3
class Print
  def print_transactions(transaction)
    print "date || credit || debit || balance\n"

    @statement = transaction.reverse.each do |transactions|
      print "#{transactions[:date]} || #{transactions[:credit]} || #{transactions[:debit]}
      || #{transactions[:balance]}\n"
    end
  end
end
