function imprimir() {
					if (window.print){
					window.print()
					}
					else {
					alert("Para imprimir presione Crtl+P.");
					}
}

function doPrint() {
				   document.all.item("noprint").style.visibility='hidden'
				   if (window.print){
				   window.print()
				   }
				   else {
				   alert("Para imprimir presione Crtl+P.");
				   }
				   document.all.item("noprint").style.visibility='visible'
}

function printing(){
					// Print the DIV.
					$( ".printable" ).print();
					// Cancel click event.
					//return( false );
}

function doPrinting(){
					 // When the document is ready, initialize the link so
					 // that when it is clicked, the printable area of the
					 // page will print.
					 $(
					 function(){
					 // Hook up the print link.
					 $( "a" )
					 .attr( "href", "javascript:void( 0 )" )
					 .click(
					 function(){
					 // Print the DIV.
					 $( ".printable" ).print();
					 // Cancel click event.
					 return( false );
					 }
					 )
					 ;
					 }
					 );
}