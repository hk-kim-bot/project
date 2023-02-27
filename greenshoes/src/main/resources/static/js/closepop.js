function close_popup() {
  let layer=document.querySelectorAll(".pop")
  let btn = document.getElementById("pop_close");
  layer.forEach((e)=> {
e.style.display="";
});
}