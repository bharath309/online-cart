$(function(){
	switch(menu){
	case 'About Us':
		$('#about').addClass('active');
		break;

	case 'Contact':
		$('#contact').addClass('active');
		break;

	case 'All Products' :
		$('#listProducts').addClass('active');
		break;


	default:
		if(menu=='Home') break;
	$('#listProducts').addClass('active');
	$('#a_'+menu).addClass('active');
	break;     


	}



	var $table=$('#productsListTable');
	var jsonUrl='';
	if(window.categoryID=''){
		jsonUrl=window.pageContext.request.contextPath+'/json/data/all/products';
	}else{
		jsonUrl=window.pageContext.request.contextPath+'json/data/category/'+window.categoryId+'/products';
	}

	if($table.length){
		$table.dataTable({
			lengthMenu:[[3,5,10,-1],['3 Records','5 Records','10 Records','All Records']],
			pageLength:5,
			
			ajax:{
				url:jsonUrl,
				dataSrc:
				
			},
			columns:[
				
				{
					date: 'name'
				},
				{
					date: 'brand'
				},
				{
					date: 'unitPrice'
				},
				{
					date: 'quantity'
				}
			
			]
		});
	}

});