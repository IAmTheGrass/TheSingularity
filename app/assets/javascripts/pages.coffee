jQuery ->

    $( "#new" ).draggable();
    $( ".show" ).draggable();
    $( "#Update" ).draggable();
    $( "#Destroy" ).draggable();
    $( "#calculate" ).draggable();
    $( "#ais" ).draggable();
    $( "#exploits" ).draggable();
    $( "#codes" ).draggable();
    $( "#aquisitions" ).draggable();



    $ido ="test";
    $ida ="test";

    $("#ObjectLand").droppable(tolerance: 'fit', accept: '.left', drop: (e,ui) -> (
    	$ido = ui.draggable.attr("id");
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	$("#ais").offset({top:16,left:8})
    	$("#exploits").offset({top:86,left:8})
    	$("#codes").offset({top:156,left:8})
    	$("#aquisitions").offset({top:226,left:8})
    	$( "#Display" ).load( $("#ObjectLand").attr("tracker") + ".html" );
    	$( "#TestLog" ).append(  " Object: " );
    	$( "#TestLog" ).append( $ido );
    	$( "#TestLog" ).append( "&" + $ida + " ");
    	$( "#TestLog" ).append( $("#ObjectLand").attr("tracker") + "/" + $("#Action").attr("tracker") + ".html" + "***" );
    ));

    $("#Action").droppable(tolerance: 'fit', accept: '.right', drop: (e,ui) -> (
    	$ida = ui.draggable.attr("id");
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	$("#new").css({left:0, top:-210})
    	$(".show").css({left:0, top:-210})
    	$("#Destroy").css({left:0, top:-210})
    	$("#calculate").css({left:0, top:-210})
    	$( "#Display" ).load( $("#ObjectLand").attr("tracker") + "/" + $("#Action").attr("tracker") + ".html" );
    	$( "#TestLog" ).append(  " Action: " );
    	$( "#TestLog" ).append( $ida );
    	$( "#TestLog" ).append( "&" + $ido + " ");
    	$( "#TestLog" ).append( $("#ObjectLand").attr("tracker") + "/" + $("#Action").attr("tracker") + ".html" + "***" );
    ));

    $("#Update").droppable(tolerance: 'touch', accept: '.testme', drop: (e,ui) -> (
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	$("#Update").css({left:0, top:-210})
    	$( "#Display" ).load( $("#ObjectLand").attr("tracker") + "/" + $("#Update").attr("tracker") + "/edit.html" );
    ));

    $("#Destroy").droppable(tolerance: 'touch', accept: '.testme', drop: (e,ui) -> (
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	$("#Destroy").css({left:0, top:-210})
    	$( "#Display" ).load( $("#ObjectLand").attr("tracker") + "/" + $("#Destroy").attr("tracker") + "/delete.html" );
    ));

    $(".show").droppable(tolerance: 'touch', accept: '.testme', drop: (e,ui) -> (
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	$(".show").css({left:0, top:-210})
    	$( "#Display" ).load( $("#ObjectLand").attr("tracker") + "/" + $(".show").attr("tracker") + ".html" );
    ));

    $("#calculate").droppable(tolerance: 'touch', accept: '.testme', drop: (e,ui) -> (
    	$(this).attr("tracker", ui.draggable.attr("id"));
    	$("#calculate").css({left:0, top:-210})
    	$( "#Display" ).load( $("#ObjectLand").attr("tracker") + "/" + $("#calculate").attr("tracker") + "/calculate.html" );
    ));