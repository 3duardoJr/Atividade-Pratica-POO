class Materia

  def initialize(nome, creditos)
    @nome = nome
    @creditos = creditos
    @preRequisito = []
  end

  attr_accessor :nome, :creditos, :preRequisito

  def adicionar_preRequisito(materia)
    @preRequisito.push(materia)
    @preRequisitoExiste == true
  end

  def preRequisito
    return @preRequisito
  end

  def preRequisitoExiste
    return @preRequisitoExiste
  end

  def getNome
    return @nome
  end

end 

