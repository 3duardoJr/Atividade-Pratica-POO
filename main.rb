require './Aluno'
require './MatrizCurricular'

calculo = Materia.new("Calculo I", 6)
calculo2 = Materia.new("Calculo II", 4)
calculo2.adicionar_preRequisito(calculo.nome)
geometria = Materia.new("Geometria Analitica", 6)
algebra = Materia.new("Algebra Linear", 6)
algebra.adicionar_preRequisito(geometria.nome)
redes = Materia.new("Redes de Computadores", 2)

joao = Aluno.new("João", 123)
joao.creditos_aluno(12)
joao.adicionar_disciplinas(geometria,joao)
joao.adicionar_disciplinas(calculo,joao)
joao.adicionar_disciplinas(calculo2,joao)
p(joao.disciplinas_feitas)

