module GenarateNumber  
    def generate_number(digits)
        Array.new(digits) { rand(1..100) }
    end
end