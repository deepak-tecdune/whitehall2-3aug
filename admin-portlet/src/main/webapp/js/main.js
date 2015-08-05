$(function() {
	
	$("#deleteCompany").dialog({
		autoOpen : false,
		resizable : false,
		width : 415,
		height : 200,
		modal : true,
		buttons : {
			"Continue" : function () {
				var url = $("#deleteURL").val();
				submitForm(url);
			},
			Cancel : function () {
				$(this).dialog("close");
			}
		}
	});
	
	$("#deleteCompany").hide();
	 $('table').tablesorter();
	
	
	

 /* var $table = $('table').tablesorter({
    theme: 'blue',
    widgets: ["zebra", "filter"],
    widgetOptions : {
      // filter_anyMatch replaced! Instead use the filter_external option
      // Set to use a jQuery selector (or jQuery object) pointing to the
      // external filter (column specific or any match)
      filter_external : '.search',
      // add a default type search to the first name column
      filter_defaultFilter: { 1 : '~{query}' },
      // include column filters
      filter_columnFilters: true,
      filter_placeholder: { search : 'Search...' },
      filter_saveFilters : true,
      filter_reset: '.reset'    
    },
    headers: { 
  		10: 
  		{ 
  			sorter: false
			} 
		   }
  });

  // make demo search buttons work
  $('button[data-column]').on('click', function(){
    var $this = $(this),
      totalColumns = $table[0].config.columns,
      col = $this.data('column'), // zero-based index or "all"
      filter = [];

    // text to add to filter
    filter[ col === 'all' ? totalColumns : col ] = $this.text();
    $table.trigger('search', [ filter ]);
    return false;
  });*/

});

$(document).ready(function(){
	
	$("#cmpUpdate,#cmpAdd,#cmpback").click(function(){
		console.log("hello1");
		var url = $(this).attr('data-url');
		submitTradeForms(url);
	});
	
	$("#userAdd,#userUpdate").click(function(){
		console.log("hello1");
		var url = $(this).attr('data-url');
		submitUserForms(url);
	});
	 
});

function deleteCompany() {
	$("#deleteCompany").dialog("open");
}

function submitTradeForms(url) {
	console.log("hello2");
	document.forms["companyDetail"].action = url;
	document.forms["companyDetail"].submit();
}

function submitUserForms(url) {
	console.log("hello2");
	document.forms["userDetail"].action = url;
	document.forms["userDetail"].submit();
}