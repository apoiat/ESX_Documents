Locales['de'] = {
    ['document_deleted'] = "Dokument wurde ~g~gelöschtr~w~.",
    ['document_delete_failed'] = "Dokument löschen ~r~fehlgeschlagen~w~.",
    ['copy_from_player'] = "Du ~g~erhälst~w~ eine Dokumentkopie.",
    ['from_copied_player'] = "Dokument ~g~Kopie~w~ gegeben",
    ['could_not_copy_form_player'] = "Kann Dokument ~r~nicht~w~ kopieren.",
    ['document_options'] = "Dokument Optionen",
    ['public_documents'] = "Öffentliche Dokumente",
    ['job_documents'] = "Job Dokumente",
    ['saved_documents'] = "Gespeicherte Dokument",
    ['close_bt'] = "Schliessen",
    ['no_player_found'] = "Kein Spieler gefunden",
    ['go_back'] = "zurück",
    ['view_bt'] = "Ansehen",
    ['show_bt'] = "Zeigen",
    ['give_copy'] = "Gebe Kopie",
    ['delete_bt'] = "Lösche",
    ['yes_delete'] = "Ja Löschen",
}

Config.Documents['de'] = {
      ["public"] = {
        {
          headerTitle = "BESTÄTIGUNGSFORMULAR",
          headerSubtitle = "Formular zur Bestätigung",
          elements = {
            { label = "BESTÄTIGUNGS GEGENSTAND", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "Zeugenaussage",
          headerSubtitle = "Rechtlich verwertbare Zeugenaussage",
          elements = {
            { label = "ZEITPUNKT", type = "input", value = "", can_be_emtpy = false },
            { label = "VORFALL SCHILDERUNG", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "FAHRZEUG ÜBERGABE FORMULAR",
          headerSubtitle = "KFZ Übergabeformular",
          elements = {
            { label = "Kennzeichen", type = "input", value = "", can_be_emtpy = false },
            { label = "Name", type = "input", value = "", can_be_emtpy = false },
            { label = "Preis", type = "input", value = "", can_be_empty = false },
            { label = "Zusatzinformationen", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "SCHULDENERKLÄRUNG",
          headerSubtitle = "Schuldanerkennung gegenüber einem anderen Bürger.",
          elements = {
            { label = "Schuldner Vorname", type = "input", value = "", can_be_emtpy = false },
            { label = "Schuldner Nachname", type = "input", value = "", can_be_emtpy = false },
            { label = "Betrag", type = "input", value = "", can_be_empty = false },
            { label = "Zurückzuzahlen bis", type = "input", value = "", can_be_empty = false },
            { label = "Zusatzangaben", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "SCHULD RÜCKZAHLUNGS ERKLÄRUNG",
          headerSubtitle = "Entschuldungserklärung eines anderen Bürgers.",
          elements = {
            { label = "Vorname", type = "input", value = "", can_be_emtpy = false },
            { label = "Nachname", type = "input", value = "", can_be_emtpy = false },
            { label = "Betrag", type = "input", value = "", can_be_empty = false },
            { label = "Erklärung", type = "textarea", value = "Hiermit erkläre ich, dass der zuvor genannte Bürger eine Zahlung mit dem zuvor genannten Schuldenbetrag abgeschlossen hat", can_be_emtpy = false, can_be_edited = false },
          }
        }
      },
      ["police"] = {
        {
          headerTitle = "PARK ERLAUBNIS",
          headerSubtitle = "Park Sondergehnehmigung",
          elements = {
            { label = "Vorname", type = "input", value = "", can_be_emtpy = false },
            { label = "Nachname", type = "input", value = "", can_be_emtpy = false },
            { label = "Gültig bis", type = "input", value = "", can_be_empty = false },
            { label = "Sondergehnehmigung", type = "textarea", value = "DER EINGETRAGENE BÜRGER HAT IN JEDER STADTZONE EINE UNBEGRENZTE PARKERLAUBNIS GEWÄHRT UND DIESE IST BIS ZUM VORGESEHENEN DATUM GÜLTIG.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "ZUSATZ WAFFENSCHEIN",
          headerSubtitle = "Waffenerlaubnis für Spezielle Waffen.",
          elements = {
            { label = "Vorname", type = "input", value = "", can_be_emtpy = false },
            { label = "Nachname", type = "input", value = "", can_be_emtpy = false },
            { label = "Gültig bis", type = "input", value = "", can_be_empty = false },
			{ label = "Waffe", type = "input", value = "", can_be_empty = false },
            { label = "INFORMATION", type = "textarea", value = "Der Bürger darf die oben gennante Waffe führen bis zum Ablauf der gültigkeit.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "FÜHRUNGSZEUGNIS",
          headerSubtitle = "Polizeiliches Führungszeugnis",
          elements = {
            { label = "Vorname", type = "input", value = "", can_be_emtpy = false },
            { label = "Nachname", type = "input", value = "", can_be_emtpy = false },
            { label = "Gültig bis", type = "input", value = "", can_be_empty = false },
            { label = "Eintragunen", type = "textarea", value = "Der Bürger hat folgende Einträge - ", can_be_emtpy = false, can_be_edited = true },
          }         }
      },
      ["ambulance"] = {
        {
          headerTitle = "MEDIZINISCHER BERICHT - PATHOLOGIE",
          headerSubtitle = "Offizieller ärztlicher Bericht eines Pathologen.",
          elements = {
            { label = "Vorname", type = "input", value = "", can_be_emtpy = false },
            { label = "Nachname", type = "input", value = "", can_be_emtpy = false },
            { label = "Gültig bis", type = "input", value = "", can_be_empty = false },
            { label = "MEDIZINISCHER BEFUND", type = "textarea", value = "DER BÜRGER WURDE VON EINEM PATHOLOGEN UNTERSUCHT UND FÜR GESUND ERKLÄRT, OHNE ERKANNTE LANGZEITERKRANKUNG. DIESER BERICHT GILT BIS ZUM GENANNTEN DATUM.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "MEDIZINISCHER BERICHT - PSYCHOLOGIE",
          headerSubtitle = "Offizieller ärztlicher Bericht eines Psychologen.",
          elements = {
            { label = "Vorname", type = "input", value = "", can_be_emtpy = false },
            { label = "Nachname", type = "input", value = "", can_be_emtpy = false },
            { label = "Gültig bis", type = "input", value = "", can_be_empty = false },
            { label = "MEDIZINISCHER BEFUND", type = "textarea", value = "DER BÜRGER WURDE VON EINEM PSYCHOLOGEN UNTERSUCHT UND FÜR GESUND ERKLÄRT, OHNE ERKANNTE LANGZEITERKRANKUNG. DIESER BERICHT GILT BIS ZUM GENANNTEN DATUM.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "MEDIZINISCHER BERICHT - AUGENSPEZIALIST",
          headerSubtitle = "Offizieller ärztlicher Bericht eines Augenarztes.",
          elements = {
            { label = "Vorname", type = "input", value = "", can_be_emtpy = false },
            { label = "Nachname", type = "input", value = "", can_be_emtpy = false },
            { label = "Gültig bis", type = "input", value = "", can_be_empty = false },
            { label = "MEDIZINISCHER BEFUND", type = "textarea", value = "DER BÜRGER WURDE VON EINEM AUGENARZT UNTERSUCHT UND FÜR GESUND ERKLÄRT, OHNE ERKANNTE LANGZEITERKRANKUNG. DIESER BERICHT GILT BIS ZUM GENANNTEN DATUM.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "Marihuana-Nutzungserlaubnis",
          headerSubtitle = "Offizielle Erlaubnis zur Verwendung von Marihuana für Bürger.",
          elements = {
            { label = "Vorname", type = "input", value = "", can_be_emtpy = false },
            { label = "Nachname", type = "input", value = "", can_be_emtpy = false },
            { label = "Gültig bis", type = "input", value = "", can_be_empty = false },
            { label = "ERLAUBNIS", type = "textarea", value = "Die rechtliche und zulässige Menge, die der Bürger mitführen kann, darf nicht mehr als 50 Gramm betragen. Nur in Verbindung mit einem ärtzlichen Bericht gültig welcher klärt woran der Bürger leidet.", can_be_emtpy = false, can_be_edited = false },
          }
        },

      ["avocat"] = {
        {
          headerTitle = "LEGAL SERVICES CONTRACT",
          headerSubtitle = "Legal services contract provided by a lawyer.",
          elements = {
            { label = "CITIZEN FIRSTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "CITIZEN LASTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false },
            { label = "INFORMATION", type = "textarea", value = "THIS DOCUMENT IS PROOF OF LEGAL REPRESANTATION AND COVERAGE OF THE AFOREMENTIONED CITIZEN. LEGAL SERVICES ARE VALID UNTIL THE AFOREMENTIONED EXPIRATION DATE.", can_be_emtpy = false },
          }
        },
		["ballas"] = {
        {
          headerTitle = "Teilezulassung",
          headerSubtitle = "Teilezulassung für Sonderteile am KFZ",
          elements = {
            { label = "Vorname", type = "input", value = "", can_be_emtpy = false },
            { label = "Nachname", type = "input", value = "", can_be_emtpy = false },
            { label = "KFZ & Kenzeichen", type = "input", value = "", can_be_empty = false },
            { label = "Teile Welche Zugelassen und Eingebaut wurden.", type = "textarea", value = "Hier bitte alle Teile und Umbauten Eintragen.", can_be_emtpy = false },
          }
        }
      }
    }
  }
}
