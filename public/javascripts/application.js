// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var cleared = "#E6F6F9"
var highlighted = "#F7E7B5"
var clicked = "#EBC747"

var Filter = {	
	highlight: function(id){
		$(id).style.background = highlighted;
	},
	
	clean: function(element){
		$(element).style.background = cleared;
	},
	
	loading: function(){
		Element.show('loading');
		Form.disable('filter_form');
	},
	
	complete: function(){
		Element.hide('loading');
		Form.enable('filter_form');	
	},
	
	uncheckAll: function(){
		Element.hide('log');
		Element.hide('hungry');
		filters = document.getElementsByName("cuisine_ids[]");
		for (i = 0; i < filters.length; i++){
			if(filters[i].checked){
				filters[i].checked = false;
			}
		}
		this.removeHighlights();
		//$('hungry').hide();
	},
	
	checkAll: function(){
		filters = document.getElementsByName("cuisine_ids[]");
		for (i = 0; i < filters.length; i++){
			if(filters[i].checked == false){
				filters[i].checked = true;
			}
		}
		//document.forms.filter_form.submit();
	},
	
	highlightClicked: function(r){
		$(r).style.background = clicked;
	},
	
	removeHighlights: function(){
		highlights = document.getElementsByClassName("restaurant");
		for (i=0; i<highlights.length; i++){
			highlights[i].style.background = "#E6F6F9";
		}
	},
	
	smoothScroll: function(id,offset){
		new Effect.ScrollTo(id, {offset: offset});
	}
}