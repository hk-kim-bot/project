let pop = document.querySelectorAll(".pop");
    
    function ViewLayer(e){
      let enumber =e.dataset.ck;
     
     pop.forEach((popup) => {
       popup.style.display==""
       if(popup.dataset.pop==enumber && popup.style.display==""){
         popup.style.display="inline";
       }else{
        popup.style.display="";
       }
     }
     )
    }