/**
 * 
 */

deleteServer = function(indata){
	$.ajax({
		url  :'/ddit_MiddleProject/ccdeleteController.do',
		type : 'post',
		data : {"data" : indata},
		success : function(res){
			//alert(res.flag);
			ccListShow(1);
		},
		error : function(xhr){
			 alert("상태 : " + xhr.status);
     	},
      	dataType : 'json'
	})
	
}

writerServer = function(){
   $.ajax({
      url : '/ddit_MiddleProject/ccWriterController.do',
      type : 'post',
      data : indata,
      success : function(res){
         //alert(res.flag);
         ccListShow(1);
         
      },
      error : function(xhr){
          alert("상태 : " + xhr.status);
        },
         dataType : 'json'
      
   })   
}
