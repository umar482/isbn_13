class IsbnCheck
  def exec(isbn_barcode = nil)
    return nil unless isbn_barcode

    multiplier, sum = [1, 0]
    
    isbn_barcode.digits.reverse.each do |barcode_digit|
      sum += barcode_digit * multiplier
      multiplier = (multiplier == 1 ? 3 : 1)
    end
    
    check_digit = 10 - sum%10

    "Compelete ISBN: #{isbn_barcode}#{( check_digit.zero? ? 0 : check_digit )}"
  end
end

pp IsbnCheck.new.exec(978014300723)
