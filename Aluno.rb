require './MatrizCurricular'

class Aluno 
  
  attr_accessor :nome, :matricula, :disciplinas_feitas, :preRequisito

  def initialize(nome, matricula)
    @nome = nome
    @matricula = matricula
    @disciplinas_feitas = []
  end


  def disciplinas_feitas
    return @disciplinas_feitas 
  end

  def verificaRequisito(disciplina_new, aluno)
    
    intersecao = aluno.disciplinas_feitas & disciplina_new.preRequisito

    puts intersecao

    if intersecao != [] or disciplina_new.preRequisito == []
       return true
    end
  end

  def adicionar_disciplinas(disciplina_new, aluno)
    a = verificaRequisito(disciplina_new, aluno) 
    if (a == true)
      @disciplinas_feitas.push(disciplina_new.nome)
    else
      puts ("Requisito Necessário")
    end
  end 

  def creditos_aluno(creditos)
    @creditos = creditos
  end 
end


