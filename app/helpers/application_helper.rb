module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "CVP"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def converter_para_moeda(valor_entrada)
    number_to_currency(valor_entrada, :separator => ',', :delimiter => '.', :precision => 2, :scale => 2, :format => '%u %n', :unit => 'R$')
  end


  def converter_desconto porcentagem
    number_to_currency(porcentagem, :format => "%u %n", :separator => ",", :delimiter => ".", :precision => 4, :scale => 2, :unit => "")

  end

end
