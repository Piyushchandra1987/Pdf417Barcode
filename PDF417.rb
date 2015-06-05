 require 'barby/barcode/pdf_417'
 
 class PDF417 < Pdf417

    def encoding
      @pdf417.paintCode()

      cols = (@pdf417.getBitColumns() - 1) / 8 + 1
      enc = []
      row = nil
      @pdf417.getOutBits.each_with_index do |byte, n|
        if n%cols == 0
          row = ""
          enc << row
        end
        row << sprintf("%08b", (byte & 0xff) | 0x100)[1.. -1]
      end
      enc
    end

  end
