Locales['fr'] = {
    ['document_deleted'] = "Le document a été ~g~supprimé~w~.",
    ['document_delete_failed'] = "~r~Erreur~w~ lors de la suppression du document .",
    ['copy_from_player'] = "Vous avez ~g~reçu~w~ la copie d'un formulaire d'un autre citoyen.",
    ['from_copied_player'] = "Copie du formulaire ~g~envoyée~w~ au citoyen",
    ['could_not_copy_form_player'] = "~r~Impossible~w~ de copier ce formulaire au citoyen.",
    ['document_options'] = "Options du document",
    ['public_documents'] = "Documents publics",
    ['job_documents'] = "Documents de métier",
    ['saved_documents'] = "Documents enregistrés",
    ['close_bt'] = "Fermer",
    ['no_player_found'] = "Personne aux alentours",
    ['go_back'] = "Retour",
    ['view_bt'] = "Voir",
    ['show_bt'] = "Montrer",
    ['give_copy'] = "Donner une copie",
    ['delete_bt'] = "Supprimé",
    ['yes_delete'] = "Confirmer la suppression",
}

Config.Documents['fr'] = {
      ["public"] = {
        {
          headerTitle = "FORMULAIRE DE CITOYENNETE",
          headerSubtitle = "Formulaire de citoyenneté pour les citoyens.",
          elements = {
            { label = "CONTENU DU FORMULAIRE", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "TEMOIGNAGE",
          headerSubtitle = "Témoignage officiel d'un citoyen.",
          elements = {
            { label = "DATE DE L'EVENEMENT", type = "input", value = "", can_be_emtpy = false },
            { label = "CONTENU DU TEMOIGNAGE", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "FORMULAIRE DE CESSION DE VEHICULE",
          headerSubtitle = "Cession d'un véhicule entre citoyens.",
          elements = {
            { label = "PLATE D'IMMATRICULATION", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU NOUVEAU PROPRIETAIRE", type = "input", value = "", can_be_emtpy = false },
            { label = "PRIX DE VENTE", type = "input", value = "", can_be_empty = false },
            { label = "AUTRE INFORMATIONS", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "FORMULAIRE DE DETTE",
          headerSubtitle = "Déclaration de dette d'un citoyen.",
          elements = {
            { label = "PRENOM DE L'ENDETTE", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DE L'ENDETTE", type = "input", value = "", can_be_emtpy = false },
            { label = "MONTANT DÛ", type = "input", value = "", can_be_empty = false },
            { label = "DATE DE PAIEMENT", type = "input", value = "", can_be_empty = false },
            { label = "AUTRE INFORMATIONS", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "FORMULAIRE DE FIN DE DETTE",
          headerSubtitle = "Déclaration de fin de dette d'un citoyen.",
          elements = {
            { label = "PRENOM DE L'ENDETTE", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DE L'ENDETTE", type = "input", value = "", can_be_emtpy = false },
            { label = "MONTANT DE LA DETTE", type = "input", value = "", can_be_empty = false },
            { label = "AUTRE INFORMATIONS", type = "textarea", value = "JE DECLARE SOLENNELLEMENT QUE LE CITOYEN A BIEN PAYER L'ENTIERETE DE SA DETTE.", can_be_emtpy = false, can_be_edited = false },
          }
        }
      },
      ["police"] = {
        {
          headerTitle = "PERMIS SPECIAL DE PARKING",
          headerSubtitle = "Permis autorisant le citoyen à garer son véhicule n'importe où.",
          elements = {
            { label = "PRENOM", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE DE FIN DE VALIDITE", type = "input", value = "", can_be_empty = false },
            { label = "INFORMATION", type = "textarea", value = "LE CITOYEN CI NOMMER A ETE AUTORISER A STATIONNE DANS N'IMPORTE QUELLE ZONE DE LA VILLE A N'IMPORTE QUELLE JUSQU'A LA DATE DE FIN MENTIONNER SUR LE PRESENT DOCUMENT.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "PERMIS DE PORT D'ARME",
          headerSubtitle = "Permis de port d'arme délivré par les autoritées fédérales.",
          elements = {
            { label = "PRENOM", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE FIN DE VALIDITE", type = "input", value = "", can_be_empty = false },
            { label = "INFORMATION", type = "textarea", value = "LE CITOYEN CI NOMMER EST AUTORISER A PORTER UNE ARME DE LA CATEGORIE DEFINIE DANS LE PRESENT DOCUMENT JUSQU'A LA DATE DE FIN PRECISER SUR LE DOCUMENT.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "SUPPRESSION DU CASIER JUDICIAIRE",
          headerSubtitle = "La suppression totale du casier judiciaire du citoyen agrée par les autoritées fédérales.",
          elements = {
            { label = "PRENOM", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE FIN DE VALIDITE", type = "input", value = "", can_be_empty = false },
            { label = "PEINES SUPPRIMEES", type = "textarea", value = "LA POLICE FEDERALE DECLARE SOLENNELLEMENT SUPPRIMER LES PEINES CI DESSOUS DU CASIER JUDICIAIRE DE L'INDIVIDU NOMME. LE RESULTAT PROVIENT DES DONNEES ENTREES PAR LES AUTORITEES FEDERALES DU PAYS.", can_be_emtpy = false, can_be_edited = false },
          }         }
      },
      ["ambulance"] = {
        {
          headerTitle = "RAPPORT MEDICAL - MEDECIN GENERAL",
          headerSubtitle = "Rapport médical officiel remplis par un médecin agréer.",
          elements = {
            { label = "PRENOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE DE FIN DE VALIDITE", type = "input", value = "", can_be_empty = false },
            { label = "NOTES MEDICALES", type = "textarea", value = "LE PRESENT CITOYEN A ETE EXAMINER ET DIAGNOSTIQUER PAR UN MEDECIN AGREER PAR LE SERVICE DE L'ORDRE DES MEDECINS DU PAYS. CE RAPPORT EST VALIDE JUSQU'A LA DATE DE FIN DE VALIDITE.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "RAPPORT MEDICAL - PSYCHOLOGIE",
          headerSubtitle = "Rapport médical officiel remplis par un psychologue ou psychiatre agréer.",
          elements = {
            { label = "PRENOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE DE FIN DE VALIDITE", type = "input", value = "", can_be_empty = false },
            { label = "NOTES MEDICALES", type = "textarea", value = "LE PRESENT CITOYEN A ETE EXAMINER ET DIAGNOSTIQUER PAR UN MEDECIN AGREER PAR LE SERVICE DE L'ORDRE DES MEDECINS DU PAYS. CE RAPPORT EST VALIDE JUSQU'A LA DATE DE FIN DE VALIDITE.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "RAPPORT MEDICAL - OPHTALMOLOGIE",
          headerSubtitle = "Rapport médical officiel remplis par un ophtalmologiste agréer.",
          elements = {
            { label = "PRENOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE DE FIN DE VALIDITE", type = "input", value = "", can_be_empty = false },
            { label = "NOTES MEDICALES", type = "textarea", value = "LE PRESENT CITOYEN A ETE EXAMINER ET DIAGNOSTIQUER PAR UN MEDECIN AGREER PAR LE SERVICE DE L'ORDRE DES MEDECINS DU PAYS. CE RAPPORT EST VALIDE JUSQU'A LA DATE DE FIN DE VALIDITE.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "AUTORISATION DE CONSOMMATION DE MARIJUANA",
          headerSubtitle = "Permis médical officiel de consommation de marijuana rédiger par un médecin agréer.",
          elements = {
            { label = "PRENOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE DE FIN DE VALIDITE", type = "input", value = "", can_be_empty = false },
            { label = "NOTES MEDICALES", type = "textarea", value = "LE PRESENT CITOYEN EST AUTORISER APRES EXAMIN MEDICAL REALISER PAR UN MEDECIN AGREER PAR LE SERVICE DE L'ORDRE DES MEDECINS QUE POUR DES RAISONS MEDICAL, CET INDIVIDU EST AUTORISER A CONSOMMER LEGALEMENT DU CANNABIS.", can_be_emtpy = false, can_be_edited = false },
          }
        },

      ["avocat"] = {
        {
          headerTitle = "CONTRAT DE SERVICES",
          headerSubtitle = "Contrat légal réalisé par un avocat afin de représenter un citoyen.",
          elements = {
            { label = "PRENOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE DE FIN DE VALIDITE", type = "input", value = "", can_be_empty = false },
            { label = "INFORMATIONS", type = "textarea", value = "CE DOCUMENT EST UNE PREUVE LEGALE DE LA REPRESENTATION DU DIS AVOCAT POUR LE CITOYEN MENTIONNE. SES SERVICES SERONT LEGALS JUSQU'A LA DATE DE FIN DE VALIDITE DU CONTRAT.", can_be_emtpy = false },
          }
        }
      }
    }
  }
