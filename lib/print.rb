# frozen_string_literal: true

class Print
  def print_transactions(transaction)
    print "date || credit || debit || balance\n"

    @statement = transaction.reverse.each do |transaction|
      print "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}\n"
    end
  end
end
