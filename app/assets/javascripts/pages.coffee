jQuery ->

    $( "#new" ).draggable();
    $( ".show" ).draggable();
    $( "#Update" ).draggable();
    $( "#drop" ).draggable();
    $( "#calculate" ).draggable();
    $( "#ais" ).draggable();
    $( "#exploits" ).draggable();
    $( "#codes" ).draggable();
    $( "#aquisitions" ).draggable();
    $( ".testme" ).draggable();
    $("#ObjectLand").droppable(tolerance: 'fit', accept: '.left', drop: (e,ui) -> (
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	$("#ais").offset({top:171,left:8})
    	$("#exploits").offset({top:241,left:8})
    	$("#codes").offset({top:311,left:8})
    	$("#aquisitions").offset({top:381,left:8})
    	$( "#Display" ).load( $("#ObjectLand").attr("tracker") + "/" + $("#Action").attr("tracker") + ".html" );
    	e.stopPropagation();
    	ui.stopPropagation();
    	e.preventDefault();
    	ui.stopImmediatePropagation();
    	this.stopPropagation();
    	this.preventDefault();
    	this.stopImmediatePropagation();
    	drop.stopImmediatePropagation();
    ));
    $("#Action").droppable(tolerance: 'fit', accept: '.right', drop: (e,ui) -> (
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	ui.draggable.css({left:0, top:-210})
    	$( "#Display" ).load( $("#ObjectLand").attr("tracker") + "/" + $("#Action").attr("tracker") + ".html" );
    ));
    $("#Update").droppable(tolerance: 'touch', accept: '.testme', drop: (e,ui) -> (
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	$("#Update").css({left:0, top:-210})
    	$( "#Display" ).load( $("#ObjectLand").attr("tracker") + "/" + $("#Update").attr("tracker") + "/edit.html" );
    ));
    $("#drop").droppable(tolerance: 'touch', accept: '.testme', drop: (e,ui) -> (
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	$("#drop").css({left:0, top:-210})
    	$( "#Display" ).load( $("#ObjectLand").attr("tracker") + "/" + $("#drop").attr("tracker") + "/delete.html" );
    ));
    $(".show").droppable(tolerance: 'touch', accept: '.testme', drop: (e,ui) -> (
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	$( "#Display" ).load( $("#ObjectLand").attr("tracker") + "/" + $(".show").attr("tracker") + ".html" );
    ));
    $("#calculate").droppable(tolerance: 'touch', accept: '.testme', drop: (e,ui) -> (
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	$( "#Display" ).load( $("#ObjectLand").attr("tracker") + "/" + $("#calculate").attr("tracker") + "/calculate.html" );
    ));