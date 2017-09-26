class Foca < ApplicationRecord
  belongs_to :Venda, optional: true

  #pesquisa por texto
  def self.search(search)
    Foca.where('nome LIKE ?', "%#{search}%").order(created_at: :desc)
  end

end
