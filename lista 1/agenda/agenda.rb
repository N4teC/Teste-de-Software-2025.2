################################### incluir_contato() #####################################
# Regras para inclusão de contato na agenda:
# a. Todo contato deve possuir um número telefônico
# b. Não pode haver dois contatos com o mesmo número telefônico
# c. Um número telefônico deve ter entre 8 e 15 dígitos numéricos
# d. Cada contato tem que possuir um email no formato alfanumérico e deve seguir a regra: *@*.*
# =========================== CASOS DE TESTE ==============================================
# (nome = "João", telefone = "12345678", email = "joao@email.com") => contato incluído
# (nome = "Maria", telefone = "12345678", email = "maria@email.com") => ERRO: Telefone já cadastrado
# (nome = "Ana", telefone = "", email = "ana@email.com") => ERRO: Telefone não pode estar vazio
# (nome = "Beto", telefone = "1234", email = "beto@email.com") => ERRO: Telefone deve ter no mínimo 8 dígitos
# (nome = "Carla", telefone = "1234567890123456", email = "carla@email.com") => ERRO: Telefone deve ter no máximo 15 dígitos
# (nome = "Davi", telefone = "1234abcd", email = "davi@email.com") => ERRO: Telefone deve conter apenas números
# (nome = "Eva", telefone = "12345678", email = "evaemail.com") => ERRO: Email inválido
# (nome = "Fábio", telefone = "12345678", email = "fabio@.com") => ERRO: Email inválido
# (nome = "Gabi", telefone = "12345678", email = "gabi@emailcom") => ERRO: Email inválido
# (nome = "Hugo", telefone = "12345678", email = "hugo@email.com") => contato incluído
###########################################################################################
require_relative 'contato'

class Agenda
  def initialize
    @contatos = []
  end

  def incluir_contato(contato)
    if @contatos.any? { |c| c.telefone == contato.telefone }
      raise "Telefone já cadastrado"
    end
    @contatos << contato
  end
end