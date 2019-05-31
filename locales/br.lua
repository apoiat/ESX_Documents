Locales['br'] = {
    ['document_deleted'] = "Documento foi ~g~eliminado~w~.",
    ['document_delete_failed'] = "A exclusão do documento ~r~falhou~w~.",
    ['copy_from_player'] = "Você ~g~recebeu~w~ uma cópia do formulário de um jogador.",
    ['from_copied_player'] = "Formulário ~g~copiado~w~ para o jogador",
    ['could_not_copy_form_player'] = "Não foi ~r~possível copiar~w~ o formulário para o player.",
    ['document_options'] = "Opções de documento",
    ['public_documents'] = "Documentos Públicos",
    ['job_documents'] = "Documentos de trabalho",
    ['saved_documents'] = "Documentos salvos",
    ['close_bt'] = "Fechar",
    ['no_player_found'] = "Nenhum jogador encontrado",
    ['go_back'] = "Volte",
    ['view_bt'] = "Ver",
    ['show_bt'] = "Mostra",
    ['give_copy'] = "Dar cópia",
    ['delete_bt'] = "Excluir",
    ['yes_delete'] = "Sim Excluir",
}

Config.Documents['br'] = {
      ["public"] = {
        {
          headerTitle = "FORMULÁRIO DE AFIRMAÇÃO",
          headerSubtitle = "Forma de afirmação do cidadão.",
          elements = {
            { label = "CONTEÚDO DE AFIRMAÇÃO", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "TESTEMUNHO DE TESTEMUNHA",
          headerSubtitle = "Testemunho oficial.",
          elements = {
            { label = "DATA DE OCORRÊNCIA", type = "input", value = "", can_be_emtpy = false },
            { label = "CONTEÚDO DO TESTEMUNHO", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "DECLARAÇÃO DE TRANSPORTE DE VEÍCULOS",
          headerSubtitle = "Veículo transmitir declaração para outro cidadão.",
          elements = {
            { label = "NÚMERO DA PLACA", type = "input", value = "", can_be_emtpy = false },
            { label = "NOME DO CIDADÃO", type = "input", value = "", can_be_emtpy = false },
            { label = "PREÇO ACORDADO", type = "input", value = "", can_be_empty = false },
            { label = "OUTRAS INFORMAÇÕES", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "DECLARAÇÃO DA DÍVIDA PARA CIDADÃO",
          headerSubtitle = "Declaração da dívida oficial para outro cidadão.",
          elements = {
            { label = "CREDOR NOME", type = "input", value = "", can_be_emtpy = false },
            { label = "CREDOR SOBNOME", type = "input", value = "", can_be_emtpy = false },
            { label = "VALOR DEVIDO", type = "input", value = "", can_be_empty = false },
            { label = "DATA DE VENCIMENTO", type = "input", value = "", can_be_empty = false },
            { label = "OUTRAS INFORMAÇÕES", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "DECLARAÇÃO DA DÍVIDA DE HABILITAÇÃO",
          headerSubtitle = "Declaração de liquidação da dívida de outro cidadão.",
          elements = {
            { label = "DEVEDOR NOME", type = "input", value = "", can_be_emtpy = false },
            { label = "DEVEDOR SOBNOME", type = "input", value = "", can_be_emtpy = false },
            { label = "VALOR DA DÍVIDA", type = "input", value = "", can_be_empty = false },
            { label = "OUTRAS INFORMAÇÕES", type = "textarea", value = "DECLARO QUE O CIDADÃO AFORMENCIADO COMPLETOU UM PAGAMENTO COM O MONTANTE DE DÉBITO APROVISIONADO", can_be_emtpy = false, can_be_edited = false },
          }
        }
      },
      ["police"] = {
        {
          headerTitle = "AUTORIZAÇÃO DE ESTACIONAMENTO ESPECIAL",
          headerSubtitle = "Licença especial de estacionamento sem limite.",
          elements = {
            { label = "TITULAR NOME", type = "input", value = "", can_be_emtpy = false },
            { label = "TITULAR SOBNOME", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO ATÉ", type = "input", value = "", can_be_empty = false },
            { label = "INFORMAÇÃO", type = "textarea", value = "O CIDADÃO AFORMAMENCIADO FOI CONCEDIDO A PERMISSÃO ILIMITADA DE ESTACIONAMENTO EM CADA ZONA DA CIDADE E ESTÁ VÁLIDO ATÉ A DATA DE VENCIMENTO PREVISTA.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "Autorização de arma",
          headerSubtitle = "Licença especial para armas fornecida pela polícia.",
          elements = {
            { label = "TITULAR NOME", type = "input", value = "", can_be_emtpy = false },
            { label = "TITULAR SOBNOME", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO ATÉ", type = "input", value = "", can_be_empty = false },
            { label = "INFORMAÇÃO", type = "textarea", value = "O CIDADÃO PERMANENTE É PERMITIDO E CONCEDE UMA AUTORIZAÇÃO DE ARMA QUE SERÁ VÁLIDA ATÉ A DATA DE VALIDADE PREVISTA.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "REGISTRO CRIMINAL CIDADÃO LIMPO",
          headerSubtitle = "Registro oficial limpo, de propósito geral, de antecedentes criminais.",
          elements = {
            { label = "CIDADÃO NOME", type = "input", value = "", can_be_emtpy = false },
            { label = "CIDADÃO SOBNOME", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO ATÉ", type = "input", value = "", can_be_empty = false },
            { label = "REGISTRO", type = "textarea", value = "A POLÍCIA DECLARA QUE O CIDADÃO AFORO-NACIONADO TEM UMA GRAVAÇÃO CRIMINAL CLARA. ESTE RESULTADO É GERADO A PARTIR DE DADOS SUBMETIDOS NO SISTEMA DE GRADUAÇÃO PENAL ATRAVÉS DA DATA DO SINAL DO DOCUMENTO.", can_be_emtpy = false, can_be_edited = false },
          }         }
      },
      ["ambulance"] = {
        {
          headerTitle = "RELATÓRIO MÉDICO - PATOLOGIA",
          headerSubtitle = "Relatório médico oficial fornecido por um patologista.",
          elements = {
            { label = "SEGURADO NOME", type = "input", value = "", can_be_emtpy = false },
            { label = "SEGURADO SOBNOME", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO ATÉ", type = "input", value = "", can_be_empty = false },
            { label = "NOTAS MÉDICAS", type = "textarea", value = "O CIDADÃO ASSEGURADO CONSIDERADO FOI TESTADO POR UM OFICIAL DE SAÚDE E DETERMINADO SAUDÁVEL, SEM DETECÇÃO DE CONDIÇÕES DE LONGO PRAZO. ESTE RELATÓRIO É VÁLIDO ATÉ A DATA DE VALIDADE PREVISTA.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "RELATÓRIO MÉDICO - PSICOLOGIA",
          headerSubtitle = "Relatório médico oficial fornecido por um psicólogo.",
          elements = {
            { label = "SEGURADO NOME", type = "input", value = "", can_be_emtpy = false },
            { label = "SEGURADO SOBNOME", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO ATÉ", type = "input", value = "", can_be_empty = false },
            { label = "NOTAS MÉDICAS", type = "textarea", value = "O CIDADÃO ASSEGURADO CONSIDERADO FOI TESTADO POR UM OFICIAL DE SAÚDE E DETERMINADO MENTALMENTE SAUDÁVEL PELAS NORMAS DE PSICOLOGIA APROVADAS MAIS BAIXAS. ESTE RELATÓRIO É VÁLIDO ATÉ A DATA DE VALIDADE PREVISTA.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "RELATÓRIO MÉDICO - ESPECIALISTA DE OLHOS",
          headerSubtitle = "Relatório médico oficial fornecido por um oftalmologista.",
          elements = {
            { label = "SEGURADO NOME", type = "input", value = "", can_be_emtpy = false },
            { label = "SEGURADO SOBNOME", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO ATÉ", type = "input", value = "", can_be_empty = false },
            { label = "NOTAS MÉDICAS", type = "textarea", value = "O CIDADÃO ASSEGURADO CONSIDERADO FOI TESTADO POR UM OFICIAL DE CUIDADOS DE SAÚDE E DETERMINADO COM UM OLHOS SAUDÁVEL E PRECISO. ESTE RELATÓRIO É VÁLIDO ATÉ A DATA DE VALIDADE PREVISTA.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "AUTORIZAÇÃO DE USO DE MACONHA",
          headerSubtitle = "Licença oficial de uso de maconha medicinal para os cidadãos.",
          elements = {
            { label = "SEGURADO NOME", type = "input", value = "", can_be_emtpy = false },
            { label = "SEGURADO SOBNOME", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO ATÉ", type = "input", value = "", can_be_empty = false },
            { label = "NOTAS MÉDICAS", type = "textarea", value = "THE AFOREMENTIONED INSURED CITIZEN IS GRANTED, AFTER BEING THOROUGHLY EXAMINED BY A HEALTHCARE SPECIALIST, MARIJUANA USAGE PERMIT DUE TO UNDISCLOSED MEDICAL REASONS. THE LEGAL AND PERMITTED AMOUNT A CITIZEN CAN HOLD CAN NOT BE MORE THAN 100grams.", can_be_emtpy = false, can_be_edited = false },
          }
        },

      ["avocat"] = {
        {
          headerTitle = "CONTRATO DE SERVIÇOS JURÍDICOS",
          headerSubtitle = "Contrato de serviços jurídicos fornecido por um advogado.",
          elements = {
            { label = "CIDADÃO NOME", type = "input", value = "", can_be_emtpy = false },
            { label = "CIDADÃO SOBRENOME", type = "input", value = "", can_be_emtpy = false },
            { label = "VÁLIDO ATÉ", type = "input", value = "", can_be_empty = false },
            { label = "INFORMAÇÃO", type = "textarea", value = "ESTE DOCUMENTO É O PROVA DE REPRESENTAÇÃO LEGAL E COBERTURA DO CIDADÃO ACIMA DESENVOLVIDO. OS SERVIÇOS JURÍDICOS SÃO VÁLIDOS ATÉ A DATA DE VALIDADE PREVISTA.", can_be_emtpy = false },
          }
        }
      }
    }
  }
