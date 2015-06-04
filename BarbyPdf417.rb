#!/usr/bin/env ruby
require 'barby'
require 'barby/barcode/pdf_417'
require 'barby/outputter/prawn_outputter'

require 'pp'
class BarcodePdf < Prawn::Document
  def initialize()
    super()
  end
  
end


barcode_data = "Test Barcode"
postal_barcode = Barby::Pdf417.new(barcode_data)

pdf = BarcodePdf.new

postal_barcode.annotate_pdf(pdf, {:height => 25, :xdim => 1.2, :x => 8, :y => pdf.cursor - 25 })
pdf.render_file "barcode.pdf"