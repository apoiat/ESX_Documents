var toggleShow = false;
var activeform = {};
var id_count = 0;

function InputElement(_label, _type, _value, _can_be_empty, _can_be_edited)
{
	this.label 			= _label;
	this.type 			= _type;
	this.value 			= _value;
	this.can_be_empty	= _can_be_empty || true;
	this.can_be_edited 	= _can_be_edited;

	let _id = "_m" + String(id_count);
	id_count++;
	this.elementid 		= _id;
	
	this.getHTML 	= function(_editable) {

		let _html = "<div class=\"submit_input\">";
		if (this.type == "textarea") _html = "<div class=\"submit_text_area\">";

		if (this.type == "textarea") {
			_html += "<p class=\"input_label\">" + this.label + "</p>";
			_html += "<textarea id=\"" + this.elementid + "\">" + this.value + "</textarea>";
		}

		if (this.type == "input") {
			_html += "<p class=\"input_label\">" + this.label + "</p>";
			_html += "<input type=\"text\" id=\"" + this.elementid + "\" value=\"" + this.value + "\"/>";
		}

		_html += "</div>";
		return _html;
	}
}

function Form (_title, _subtitle, _elements, _submittable)
{
	this.headerTitle 		= _title,
	this.headerSubtitle 	= _subtitle,
	this.headerFirstName	= "",
	this.headerLastName		= "",
	this.headerDateOfBirth	= "",
	this.headerJobLabel 	= "",
	this.headerJobGrade 	= "",
	this.elements 			= _elements,
	this.signed				= false,
	this.submittable 		= _submittable || false;
	this.headerDateCreated 	= "",

	this.loadFromJson = function(obj) {
		//obj = JSON.parse(obj);
		this.headerTitle = obj.headerTitle;
		this.headerSubtitle = obj.headerSubtitle;
		this.headerFirstName = obj.headerFirstName;
		this.headerLastName = obj.headerLastName;
		this.headerDateOfBirth = obj.headerDateOfBirth;
		this.headerSubtitle = obj.headerSubtitle;
		this.headerJobLabel = obj.headerJobLabel;
		this.headerJobGrade = obj.headerJobGrade;
		
		let tmp_elements = []
		for (let i=0; i<obj.elements.length; i++)
		{
			let tmpIE = new InputElement(obj.elements[i].label, obj.elements[i].type, obj.elements[i].value, obj.elements[i].can_be_empty, obj.elements[i].can_be_edited)
			tmp_elements.push(tmpIE);
		}
		this.elements = tmp_elements;

		this.signed = obj.signed;
	}


	this.sign = function () {
		//alert("HMM?");
		this.signed = true;
		$("#signature_block").addClass("signature_block_signed");
		$("#signature_block").html(activeform.headerFirstName + " " + activeform.headerLastName + "<br>" + this.headerJobLabel + " - " + this.headerJobGrade + "<br>" + getCreationDate());
	}

	this.submit = function() { 

		activeform.headerDateCreated = getCreationDate();
		for (let i=0; i<activeform.elements.length; i++)
		{	
			/*
			let _element = activeform.elements[i];
			if (!_element.can_be_empty && (_element.val() == "" || _element.val() == " "))
			{

			}
			*/

			activeform.elements[i].value = String($("#" + activeform.elements[i].elementid).val());
		}

		var json_string = JSON.stringify(activeform);
		//console.log(json_string);
		$.post('http://esx_documents/form_submit', json_string);
		//alert("called submit!");
	}

	this.load = function() {}
	this.givecopy = function () {}

	this.print = function () { 

		/* Create Header */

		html_header  = "<div id=\"section_header\">";
		html_header += "<div id=\"button_close\">X</div>";
		html_header += "<div id=\"header_title\">" + this.headerTitle + "</div>";
		html_header += "<div id=\"header_seal\"></div>";
		html_header += "<div id=\"header_details\"><h2>" + this.headerSubtitle + "</h2>";
		html_header += "<div id=\"header_information_block\">ΠΛΗΡΟΦΟΡΙΕΣ</div>";
		html_header += "<div class=\"header_information_subblock\">";
		html_header += "<h3>First Name:</h3>";
		html_header += "<h4>" + this.headerFirstName + "</h4>";
		html_header += "</div>";
		html_header += "<div class=\"header_information_subblock\">";
		html_header += "<h3>Last Name:</h3>";
		html_header += "<h4>" + this.headerLastName + "</h4>";
		html_header += "</div>";
		html_header += "<div class=\"header_information_subblock\">";
		html_header += "<h3>Birth Date:</h3>";
		html_header += "<h4>" + this.headerDateOfBirth + "</h4>";
		html_header += "</div>";
		html_header += "<div class=\"header_information_subblock\">";
		html_header += "<h3>Occupation:</h3>";
		html_header += "<h4>" + this.headerJobLabel + " </h4><h4> " + this.headerJobGrade + "</h4>";
		html_header += "</div>";
		html_header += "</div>";
		html_header += "</div>";
		html_header += "<div id=\"section_block\">ΣΥΜΠΛΗΡΩΣΤΕ ΤΑ ΠΑΡΑΚΑΤΩ ΣΤΟΙΧΕΙΑ</div>";
		$("#main_container").append(html_header);

		/* Create main body */


		$("#main_container").append("<div id=\"section_input\"></div>");
		
		let count = 0;

		for (let i=0; i<this.elements.length; i++)
		{
			$("#main_container").append(this.elements[i].getHTML());
			if (this.elements[i].type == "textarea") count++;
			if (this.elements[i].can_be_edited == false) $("#" + this.elements[i].elementid).prop('readonly', true);
			count++;
		}

		/* Create footer */
		html_footer = "<div id=\"section_footer_block\">ΟΡΟΙ & ΥΠΟΓΡΑΦΗ</div>";
		html_footer += "<div id=\"section_footer\">";
		html_footer += "<div id=\"sign_terms_block\">";
	
		html_footer += "<ul>";
		for (let i=0; i<_U["sign_terms"].length; i++)
		{
			html_footer += "<li>" + _U["sign_terms"][i] + "</li>";
		}
		html_footer += "</ul>";
		
		html_footer += "</div>";
		html_footer += "<div id=\"signature_block\">Click to sign.</div>";

		

		/* submit / cancel button */
		if (this.submittable) {
			html_footer += "<button id=\"button_cancel\" type=\"button\">Cancel</button>";
			html_footer += "<button id=\"button_submit\" type=\"button\">Submit</button>";
		}

		html_footer += "</div>";

		$("#main_container").append(html_footer);

		html_script = "<script>\
		$(\"#signature_block\").on( \"click\", function() { activeform.sign(); }); \
		$(\"#button_submit\").on( \"click\", function() { activeform.submit(); activeform.close(); }); \
		$(\"#button_close\").on( \"click\", function() { activeform.close(); }); \
		</script>";

		$("#main_container").append(html_script);
		if (this.signed) this.sign();


	}

	this.close = function() {
		$("#main_container").html("");
		$("#main_container").css({display: 'none'});
		$.post('http://esx_documents/form_close', JSON.stringify({}));
	}
}




$(document).keyup(function(e) {
	if (e.keyCode === 27) activeform.close();
});


window.addEventListener('message', function(event){
   	var edata = event.data;
   	if (edata.type == "ShowDocument") {

   		activeform = new Form();
   		activeform.loadFromJson(edata.data);
   		activeform.submittable = false;
   		activeform.print();

 		$("#main_container").css({
   			display: 'block'
   		});
   	}

   	if (edata.type == "createNewForm") {
   		activeform = new Form();
   		activeform.loadFromJson(edata.data);
   		activeform.submittable = true;
   		activeform.print();

   		$("#main_container").css({
   			display: 'block'
   		});
   	}

   /*
    if (edata.type == "click") {
        triggerClick(cursorX - 1, cursorY - 1);
    }
    */

});



function getCreationDate()
{
	let d = new Date();

	let month = d.getMonth()+1;
	let day = d.getDate();
	let hours = d.getHours();
	let minutes = d.getMinutes();
	let seconds = d.getSeconds();

	let output = ((''+day).length<2 ? '0' : '') + day + '/' + ((''+month).length<2 ? '0' : '') + month + '/' + d.getFullYear() + " " + hours + ":" + minutes + ":" + seconds;

   	return output
}


$(document).ready(function(){

/*
  var documentWidth = document.documentElement.clientWidth;
  var documentHeight = document.documentElement.clientHeight;
  var cursor = $('#cursor');
  var cursorX = documentWidth / 2;
  var cursorY = documentHeight / 2;
*/

	/*
	var tmp = [
	new InputElement("ΗΜΕΡΟΜΗΝΙΑ ΣΥΜΒΑΝΤΟΣ", "input", "432", false),
	new InputElement("ΤΟΠΟΘΕΣΙΑ ΣΥΜΒΑΝΤΟΣ", "input", "321", false),
	new InputElement("ΛΟΙΠΕΣ ΠΛΗΡΟΦΟΡΙΕΣ", "input", "123", false, false),
	new InputElement("ΚΑΤΑΘΕΣΗ", "textarea", "12321313123131", false, false)
	];
	var tmp_form = new Form("ΚΑΤΑΘΕΣΗ", "Επίσημη κατάθεση μάρτυρα.", tmp);
	activeform = tmp_form;
	activeform.headerFirstName = "Alonzo";
	activeform.headerLastName = "Perrero";
	activeform.headerDateOfBirth = "25/08/1988";
	activeform.print();
	
	   		$("#main_container").css({
   			display: 'block'
   		});
   		*/
   		
});

















/* MOUSE MOVEMENT */
/*
$(document).mousemove(function(event) {
    cursorX = event.pageX;
    cursorY = event.pageY;

	//$("#signature_block").text(cursorX);
    UpdateCursorPos();
});

  function UpdateCursorPos() {
      $('#cursor').css('left', cursorX);
      $('#cursor').css('top', cursorY);
  }

function triggerClick(x, y) {
      var element = $(document.elementFromPoint(x, y));
      element.focus().click();
      return true;
}
*/