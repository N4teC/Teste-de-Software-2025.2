################################### Contato ###############################################
# Regras para os atributos de um contato:
# a. Todo contato deve possuir um número telefônico
# b. Não pode haver dois contatos com o mesmo número telefônico (verificado na agenda)
# c. Um número telefônico deve ter entre 8 e 15 dígitos numéricos
# d. Cada contato tem que possuir um email no formato alfanumérico e deve seguir a regra: *@*.*
# =========================== CASOS DE TESTE ==============================================
# (nome = "João", telefone = "12345678", email = "joao@email.com") => contato válido
# (nome = "Maria", telefone = "12345678", email = "maria@email.com") => válido (duplicidade verificada na agenda)
# (nome = "Ana", telefone = "", email = "ana@email.com") => ERRO: Telefone não pode estar vazio
# (nome = "Beto", telefone = "1234", email = "beto@email.com") => ERRO: Telefone deve ter no mínimo 8 dígitos
# (nome = "Carla", telefone = "1234567890123456", email = "carla@email.com") => ERRO: Telefone deve ter no máximo 15 dígitos
# (nome = "Davi", telefone = "1234abcd", email = "davi@email.com") => ERRO: Telefone deve conter apenas números
# (nome = "Eva", telefone = "12345678", email = "evaemail.com") => ERRO: Email inválido
# (nome = "Fábio", telefone = "12345678", email = "fabio@.com") => ERRO: Email inválido
# (nome = "Gabi", telefone = "12345678", email = "gabi@emailcom") => ERRO: Email inválido
# (nome = "Hugo", telefone = "12345678", email = "hugo@email.com") => contato válido
###########################################################################################
class Contato
  def initialize(nome, telefone, email)
    self.nome = nome
    self.telefone = telefone
    self.email = email
  end

  attr_reader :nome, :telefone, :email

  def nome=(valor)
    if valor == ""
      raise "Nome não pode estar vazio"
    end
    @nome = valor
  end

  def telefone=(valor)
    if valor == ""
      raise "Telefone não pode estar vazio"
    elsif valor.length < 8
      raise "Telefone deve ter no mínimo 8 dígitos"
    elsif valor.length > 15
      raise "Telefone deve ter no máximo 15 dígitos"
    elsif valor =~ /[^0-9]/
      raise "Telefone deve conter apenas números"
    end
    @telefone = valor
  end

  def email=(valor)
    if valor == ""
      raise "Email não pode estar vazio"
    elsif !(valor =~ /\A[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\z/)
      raise "Email inválido"
    end
    @email = valor
  end

  def to_s
    "Nome: #{@nome}, Telefone: #{@telefone}, Email: #{@email}"
  end
end