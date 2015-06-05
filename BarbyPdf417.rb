#!/usr/bin/env ruby
require 'barby'
require 'barby/barcode/pdf_417'
require 'barby/outputter/png_outputter'

barcode_data = "Test Barcode"
postal_barcode = Barby::Pdf417.new(barcode_data)

image = Barby::PngOutputter.new(postal_barcode).to_png

File.open('barcode.png', 'w'){|f| f.write image }

#pdf = BarcodePdf.new

#pdf.image(image, at: [0, pdf.cursor])
#pdf.render_file "barcode.pdf"