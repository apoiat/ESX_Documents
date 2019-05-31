Locales['gr'] = {
  	['document_deleted'] = "Document was ~g~deleted~w~.",
  	['document_delete_failed'] = "Document delete ~r~failed~w~.",
    ['copy_from_player'] = "You ~g~received~w~ a form copy from a player.",
    ['from_copied_player'] = "Form ~g~copied~w~ to player",
    ['could_not_copy_form_player'] = "Could ~r~not~w~ copy form to player.",
    ['document_options'] = "Document Options",
    ['public_documents'] = "Public Documents",
    ['job_documents'] = "Job Documents",
    ['saved_documents'] = "Saved Documents",
    ['close_bt'] = "Close",
    ['no_player_found'] = "No players found",
    ['go_back'] = "Go Back",
    ['view_bt'] = "View",
    ['show_bt'] = "Show",
    ['give_copy'] = "Give Copy",
    ['delete_bt'] = "Delete",
    ['yes_delete'] = "Yes Delete",
}

Config.Documents['gr'] = {
  		["public"] = {
			{
				headerTitle = "ΥΠΕΥΘΥΝΗ ΔΗΛΩΣΗ",
				headerSubtitle = "Υπεύθυνη δήλωση πολίτη.",
				elements = {
					{ label = "ΠΕΡΙΕΧΟΜΕΝΟ ΔΗΛΩΣΗΣ", type = "textarea", value = "", can_be_emtpy = false },
				}
			},
			{
				headerTitle = "ΚΑΤΑΘΕΣΗ ΜΑΡΤΥΡΑ",
				headerSubtitle = "Επίσημη κατάθεση μάρτυρα.",
				elements = {
					{ label = "ΗΜΕΡΟΜΗΝΙΑ ΣΥΜΒΑΝΤΟΣ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΠΕΡΙΕΧΟΜΕΝΟ ΚΑΤΑΘΕΣΗΣ", type = "textarea", value = "", can_be_emtpy = false },
				}
			},
			{
				headerTitle = "ΑΙΤΗΣΗ ΜΕΤΑΒΙΒΑΣΗΣ ΑΥ/ΤΟΥ",
				headerSubtitle = "Μεταβίβαση αυτοκινήτου προς 3ο πρόσωπο.",
				elements = {
					{ label = "ΠΙΝΑΚΙΔΑ ΟΧΗΜΑΤΟΣ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΠΡΟΣ ΠΡΟΣΩΠΟ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΕΝΑΝΤΙ ΠΟΣΟΥ", type = "input", value = "", can_be_empty = false },
					{ label = "ΑΛΛΕΣ ΠΛΗΡΟΦΟΡΙΕΣ", type = "textarea", value = "", can_be_emtpy = true },
				}
			},
			{
				headerTitle = "ΔΗΛΩΣΗ ΔΑΝΕΙΣΜΟΥ",
				headerSubtitle = "Δήλωση χρέους απένταντι σε 3ο πρόσωπο.",
				elements = {
					{ label = "ΟΝΟΜΑ ΧΡΕΩΣΤΗ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΕΠΙΘΕΤΟ ΧΡΕΩΣΤΗ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΧΡΕΟΣ - ΠΟΣΟ", type = "input", value = "", can_be_empty = false },
					{ label = "ΠΡΟΘΕΣΜΙΑ ΑΠΟΠΛΗΡΩΜΗΣ", type = "input", value = "", can_be_empty = false },
					{ label = "ΑΛΛΕΣ ΠΛΗΡΟΦΟΡΙΕΣ", type = "textarea", value = "", can_be_emtpy = true },
				}
			},
			{
				headerTitle = "ΔΗΛΩΣΗ ΑΠΟΠΛΗΡΩΜΗΣ ΔΑΝΕΙΟΥ",
				headerSubtitle = "Δήλωση χρέους απένταντι σε 3ο πρόσωπο.",
				elements = {
					{ label = "ΟΝΟΜΑ ΟΦΕΙΛΕΤΗ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΕΠΙΘΕΤΟ ΟΦΕΙΛΕΤΗ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΧΡΕΟΣ - ΠΟΣΟ", type = "input", value = "", can_be_empty = false },
					{ label = "ΑΛΛΕΣ ΠΛΗΡΟΦΟΡΙΕΣ", type = "textarea", value = "ΔΗΛΩΝΩ ΥΠΕΥΘΥΝΑ ΟΤΙ Ο ΟΦΕΙΛΕΤΗΣ ΜΕ ΤΙΣ ΠΑΡΑΠΑΝΩ ΠΛΗΡΟΦΟΡΙΕΣ / ΣΤΟΙΧΕΙΑ ΠΡΟΧΩΡΗΣΕ ΣΕ ΑΠΟΠΛΗΡΩΜΗ ΤΟΥ ΑΝΑΦΕΡΟΜΕΝΟΥ ΧΡΕΟΥΣ.", can_be_emtpy = false, can_be_edited = false },
				}
			}
		},
		["police"] = {
			{
				headerTitle = "ΕΙΔΙΚΗ ΑΔΕΙΑ ΕΛΕΥΘΕΡΗΣ ΣΤΑΘΜΕΥΣΗΣ",
				headerSubtitle = "Ειδική αδειοδότηση στάθμευσης οχήματος σε όλες τις ζώνες της πόλης.",
				elements = {
					{ label = "ΟΝΟΜΑ ΑΔΕΙΟΥΧΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΕΠΙΘΕΤΟ ΑΔΕΙΟΥΧΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΙΣΧΥΕΙ ΕΩΣ", type = "input", value = "", can_be_empty = false },
					{ label = "ΠΛΗΡΟΦΟΡΙΕΣ", type = "textarea", value = "ΣΤΟΝ ΠΑΡΑΠΑΝΩ ΑΝΑΦΕΡΟΜΕΝΟ ΕΠΙΤΡΕΠΕΤΑΙ ΑΔΕΙΑ ΣΤΑΘΜΕΥΣΗΣ ΑΝΕΞΑΡΤΗΤΟΥ ΟΡΩΝ ΚΑΙ ΠΕΡΙΟΡΙΣΜΩΝ ΣΕ ΟΛΕΣ ΤΙΣ ΠΕΡΙΟΧΕΣ ΚΑΙ ΖΩΝEΣ ΤΗΣ ΠΟΛΗΣ Η ΟΠΟΙΑ ΘΑ ΕΙΝΑΙ ΣΕ ΙΣΧΥΗ ΕΩΣ ΤΗΝ ΑΝΑΓΡΑΦΟΜΕΝΗ ΗΜΕΡΟΜΗΝΙΑ ΛΗΞΗΣ ΤΗΣ.", can_be_emtpy = false },
				}
			},
			{
				headerTitle = "ΑΔΕΙΑ ΟΠΛΟΦΟΡΙΑΣ",
				headerSubtitle = "Ειδική αδειοδότηση οπλοφορίας. Παραχωρείται από την αστυνομία.",
				elements = {
					{ label = "ΟΝΟΜΑ ΑΔΕΙΟΥΧΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΕΠΙΘΕΤΟ ΑΔΕΙΟΥΧΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΙΣΧΥΕΙ ΕΩΣ", type = "input", value = "", can_be_empty = false },
					{ label = "ΠΛΗΡΟΦΟΡΙΕΣ", type = "textarea", value = "ΣΤΟΝ ΠΑΡΑΠΑΝΩ ΑΝΑΦΕΡΟΜΕΝΟ ΕΠΙΤΡΕΠΕΤΑΙ ΚΑΙ ΠΑΡΑΧΩΡΕΙΤΑΙ ΑΔΕΙΑ ΟΠΛΟΦΟΡΙΑΣ Η ΟΠΟΙΑ ΘΑ ΕΙΝΑΙ ΣΕ ΙΣΧΥΗ ΕΩΣ ΤΗΝ ΑΝΑΓΡΑΦΟΜΕΝΗ ΗΜΕΡΟΜΗΝΙΑ ΛΗΞΗΣ ΤΗΣ.", can_be_emtpy = false },
				}
			},
			{
				headerTitle = "ΒΕΒΑΙΩΣΗ ΚΑΤΑΣΤΑΣΗΣ ΠΟΙΝΙΚΟΥ ΜΗΤΡΩΟΥ",
				headerSubtitle = "Βεβαίωση κατάστασης ποινικού μητρώου πολίτη για γενική χρήση.",
				elements = {
					{ label = "ΟΝΟΜΑ ΠΟΛΙΤΗ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΕΠΙΘΕΤΟ ΠΟΛΙΤΗ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΙΣΧΥΕΙ ΕΩΣ", type = "input", value = "", can_be_empty = false },
					{ label = "ΒΕΒΑΙΩΣΗ", type = "textarea", value = "Βεβαιώνεται ότι η ποινική κατάσταση του ανωτέρω αναφερόμενου, σύμφωνα με τα στοιχεία που μέχρι σήμερα έχουν καταχωρηθεί στη βάση δεδομένων του πληροφοριακού συστήματος εθνικού μητρώου είναι: ΚΑΘΑΡΗ.", can_be_emtpy = false, can_be_edited = false },
				}
			}
		},
		["ambulance"] = {
			{
				headerTitle = "ΙΑΤΡΙΚΗ ΒΕΒΑΙΩΣΗ ΠΑΘΟΛΟΓΟΥ",
				headerSubtitle = "Επίσημη βεβαίωση - γνωμάτευση ιατρικής και φυσικής κατάστασης.",
				elements = {
					{ label = "ΟΝΟΜΑ ΑΣΦΑΛΙΣΜΕΝΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΕΠΙΘΕΤΟ ΑΣΦΑΛΙΣΜΕΝΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΜΠΟΡΕΙ ΝΑ ΧΡΗΣ/ΘΕΙ ΕΩΣ", type = "input", value = "", can_be_empty = false },
					{ label = "ΣΗΜΕΙΩΣΕΙΣ ΦΟΡΕΑ", type = "textarea", value = "ΒΕΒΑΙΩΝΟΥΜΕ ΟΤΙ Ο ΥΠΟ ΤΑ ΑΝΩΤΕΡΩ ΣΤΟΙΧΕΙΑ ΑΣΦΑΛΙΖΟΜΕΝΟΣ ΕΞΑΤΑΣΘΗΚΕ ΑΠΟ ΙΑΤΡΙΚΟ ΦΟΡΕΑ ΤΟΥ ΕΚΑΒ ΠΑΘΟΛΟΓΙΚΗΣ ΜΟΝΑΔΑΣ ΚΑΙ ΚΡΙΘΗΚΕ ΥΓΙΗΣ ΚΑΘΩΣ ΚΑΙ ΜΗ ΠΑΣΧΟΝΤΑΣ ΚΑΠΟΙΑΣ ΠΑΘΗΣΗΣ. Η ΠΑΡΟΥΣΑ ΒΕΒΑΙΩΣΗ ΜΠΟΡΕΙ ΝΑ ΧΡΗΣΙΜΟΠΟΙΗΘΕΙ ΕΩΣ ΟΤΟΥ ΤΗΝ ΑΝΑΦΕΡΟΜΕΝΗ ΛΗΞΗ ΤΗΣ", can_be_emtpy = false },
				}
			},
			{
				headerTitle = "ΙΑΤΡΙΚΗ ΒΕΒΑΙΩΣΗ ΨΥΧΟΛΟΓΟΥ",
				headerSubtitle = "Επίσημη βεβαίωση - γνωμάτευση ψυχολογικής κατάστασης.",
				elements = {
					{ label = "ΟΝΟΜΑ ΑΣΦΑΛΙΣΜΕΝΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΕΠΙΘΕΤΟ ΑΣΦΑΛΙΣΜΕΝΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΜΠΟΡΕΙ ΝΑ ΧΡΗΣ/ΘΕΙ ΕΩΣ", type = "input", value = "", can_be_empty = false },
					{ label = "ΣΗΜΕΙΩΣΕΙΣ ΦΟΡΕΑ", type = "textarea", value = "ΒΕΒΑΙΩΝΟΥΜΕ ΟΤΙ Ο ΥΠΟ ΤΑ ΑΝΩΤΕΡΩ ΣΤΟΙΧΕΙΑ ΑΣΦΑΛΙΖΟΜΕΝΟΣ ΕΞΑΤΑΣΘΗΚΕ ΑΠΟ ΕΙΔΙΚΟ ΙΑΤΡΙΚΟ ΦΟΡΕΑ ΤΟΥ ΕΚΑΒ ΨΥΧΟΛΟΓΙΚΗΣ ΜΟΝΑΔΑΣ ΚΑΙ ΚΡΙΘΗΚΕ ΠΝΕΥΜΑΤΙΚΑ ΥΓΙΗΣ ΚΑΘΩΣ ΚΑΙ ΔΙΑΝΟΗΤΙΚΑ ΙΚΑΝΟΣ ΜΕ ΒΑΣΗ ΤΑ ΚΑΤΩΤΕΡΑ ΕΥΡΕΩΣ ΨΥΧΟΛΟΓΙΚΑ ΚΡΙΤΗΡΙΑ. Η ΠΑΡΟΥΣΑ ΒΕΒΑΙΩΣΗ ΜΠΟΡΕΙ ΝΑ ΧΡΗΣΙΜΟΠΟΙΗΘΕΙ ΕΩΣ ΟΤΟΥ ΤΗΝ ΑΝΑΦΕΡΟΜΕΝΗ ΛΗΞΗ ΤΗΣ", can_be_emtpy = false },
				}
			},
			{
				headerTitle = "ΙΑΤΡΙΚΗ ΒΕΒΑΙΩΣΗ ΟΦΘΑΛΜΙΑΤΡΟΥ",
				headerSubtitle = "Επίσημη βεβαίωση - γνωμάτευση οφθαλμολογικής κατάστασης.",
				elements = {
					{ label = "ΟΝΟΜΑ ΑΣΦΑΛΙΣΜΕΝΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΕΠΙΘΕΤΟ ΑΣΦΑΛΙΣΜΕΝΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΜΠΟΡΕΙ ΝΑ ΧΡΗΣ/ΘΕΙ ΕΩΣ", type = "input", value = "", can_be_empty = false },
					{ label = "ΣΗΜΕΙΩΣΕΙΣ ΦΟΡΕΑ", type = "textarea", value = "ΒΕΒΑΙΩΝΟΥΜΕ ΟΤΙ Ο ΥΠΟ ΤΑ ΑΝΩΤΕΡΩ ΣΤΟΙΧΕΙΑ ΑΣΦΑΛΙΖΟΜΕΝΟΣ ΕΞΑΤΑΣΘΗΚΕ ΑΠΟ ΕΙΔΙΚΟ ΙΑΤΡΙΚΟ ΦΟΡΕΑ ΤΟΥ ΕΚΑΒ ΟΦΘΑΛΜΟΛΟΓΙΚΗΣ ΜΟΝΑΔΑΣ ΚΑΙ ΚΡΙΘΗΚΕ ΥΓΙΗΣ ΚΑΘΩΣ ΚΑΙ ΜΗ ΠΑΣΧΟΝΤΑΣ ΚΑΠΟΙΑΣ ΠΑΘΗΣΗΣ. Η ΠΑΡΟΥΣΑ ΒΕΒΑΙΩΣΗ ΜΠΟΡΕΙ ΝΑ ΧΡΗΣΙΜΟΠΟΙΗΘΕΙ ΕΩΣ ΟΤΟΥ ΤΗΝ ΑΝΑΦΕΡΟΜΕΝΗ ΛΗΞΗ ΤΗΣ", can_be_emtpy = false },
				}
			},
			{
				headerTitle = "ΑΔΕΙΑ ΧΡΗΣΗΣ ΚΑΝΝΑΒΗΣ",
				headerSubtitle = "Επίσημη άδεια χρήσης ιατρικής κάνναβης, χορηγούμενη από ιατιρκό φορέα.",
				elements = {
					{ label = "ΟΝΟΜΑ ΑΣΦΑΛΙΣΜΕΝΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΕΠΙΘΕΤΟ ΑΣΦΑΛΙΣΜΕΝΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΜΠΟΡΕΙ ΝΑ ΧΡΗΣ/ΘΕΙ ΕΩΣ", type = "input", value = "", can_be_empty = false },
					{ label = "ΣΗΜΕΙΩΣΕΙΣ ΦΟΡΕΑ", type = "textarea", value = "Στον ανωτέρω υπό τα στοιχεία ασφαλιζόμενο, χορηγήθηκε άδεια χρήσης κάνναβης, για ιατρικούς σκοπούς και χρήση για καταπολέμηση δυνητικής πάθησης. Η άδεια χορηγήθηκε μετά από εξέταση εγκεκριμένου ιατρικού φορέα. Η χορηγούμενη και αδειοδοτούμενη ποσότητα που μπορεί να έχει στην κατοχή του ο ασθενής ΔΕΝ μπορεί να ξεπερνάει τα 100 γραμμάρια σε αριθμό.", can_be_emtpy = false, can_be_edited = false },
				}
			},
			{
				headerTitle = "ΓΝΩMAΤΕΥΣΗ ΝΟΗΤΙΚΗΣ ΣΤΕΡΗΣΗΣ",
				headerSubtitle = "Επίσημη βεβαίωση - γνωμάτευση βαριάς νοητικής στέρησης.",
				elements = {
					{ label = "ΟΝΟΜΑ ΑΣΦΑΛΙΣΜΕΝΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΕΠΙΘΕΤΟ ΑΣΦΑΛΙΣΜΕΝΟΥ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΜΠΟΡΕΙ ΝΑ ΧΡΗΣ/ΘΕΙ ΕΩΣ", type = "input", value = "", can_be_empty = false },
					{ label = "ΣΗΜΕΙΩΣΕΙΣ ΦΟΡΕΑ", type = "textarea", value = "ΒΕΒΑΙΩΝΟΥΜΕ ΟΤΙ Ο ΥΠΟ ΤΑ ΑΝΩΤΕΡΩ ΣΤΟΙΧΕΙΑ ΑΣΦΑΛΙΖΟΜΕΝΟΣ ΕΞΑΤΑΣΘΗΚΕ ΑΠΟ ΕΙΔΙΚΟ ΙΑΤΡΙΚΟ ΦΟΡΕΑ ΤΟΥ ΕΚΑΒ ΨΥΧΟΛΟΓΙΚΗΣ ΜΟΝΑΔΑΣ ΚΑΙ ΚΡΙΘΗΚΕ ΠΝΕΥΜΑΤΙΚΑ ΑΝΙΚΑΝΟΣ ΚΑΘΩΣ ΚΑΙ ΒΑΡΙΑ ΔΙΑΝΟΗΤΙΚΑ ΣΤΕΡΗΜΕΝΟΣ ΜΕ ΒΑΣΗ ΤΑ ΚΑΤΩΤΕΡΑ ΕΥΡΕΩΣ ΨΥΧΟΛΟΓΙΚΑ ΚΡΙΤΗΡΙΑ. Η ΠΑΡΟΥΣΑ ΒΕΒΑΙΩΣΗ ΜΠΟΡΕΙ ΝΑ ΧΡΗΣΙΜΟΠΟΙΗΘΕΙ ΕΩΣ ΟΤΟΥ ΤΗΝ ΑΝΑΦΕΡΟΜΕΝΗ ΛΗΞΗ ΤΗΣ", can_be_emtpy = false },
				}
			},
		},
		["avocat"] = {
			{
				headerTitle = "ΣΥΜΒΟΛΑΙΟ ΠΑΡΟΧΗΣ ΝΟΜΙΚΩΝ ΥΠΗΡΕΣΙΩΝ",
				headerSubtitle = "Συμβόλαιο παροχής νομικών υπηρεσιών σε πολίτη.",
				elements = {
					{ label = "ΟΝΟΜΑ ΠΟΛΙΤΗ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΕΠΙΘΕΤΟ ΠΟΛΙΤΗ", type = "input", value = "", can_be_emtpy = false },
					{ label = "ΙΣΧΥΕΙ ΕΩΣ", type = "input", value = "", can_be_empty = false },
					{ label = "ΒΕΒΑΙΩΣΗ", type = "textarea", value = "Το παρόν έγγραφο αποτελεί αποδεικτικό νομικής εκπροσώπησης και κάλυψης του αναφερόμενου πολίτη από τον πάροχο αυτού του εγγράφου. Η νομική κάλυψη που παρέχεται, έχει ισχύη έως την αναφερόμηνη ημερομηνία λήξης.", can_be_emtpy = false },
				}
			}
		}
	  }
