# Mortgage calculator

def valid_number(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def ask(variable)
  answer = ''
  loop do
    puts "What is the #{variable}?"
    answer = gets.chomp
    break if valid_number(answer)

    puts "Invailid input for #{variable}. Please enter a number."
  end
  answer.to_f
end

puts 'Hello Welcome to the mortgage calculator'

loan_amount = ask('loan amout')
apr = ask('the Annual Percentage Rate (APR)')
loan_duration = ask('loan duration')

montly_interest_rate = apr / 12.0
loan_duration_months = loan_duration * 12.0
monthly_payment = loan_amount * (montly_interest_rate / (1 - (1 + montly_interest_rate)**(-loan_duration_months)))

puts "The monthly payment will be #{monthly_payment.round(2)} for #{loan_duration_months.round(2)} months." 
puts "The monthly interest rate will be #{montly_interest_rate.round(2)}."