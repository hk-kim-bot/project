function openbox() {
  let box = document.querySelectorAll(".subpicture");
  let btn = document.getElementById("click2");
  let btn2 = document.getElementById("click1");
  btn.style.display="block"
  btn2.style.display="none"

  box.forEach((w)=> {
    w.style.display="block";
  });
}
function closebox() {
  console.log(1);
  let box = document.querySelectorAll(".subpicture");
  let btn = document.getElementById("click2");
  let btn2 = document.getElementById("click1");
  btn.style.display="none"
  btn2.style.display="block"

  box.forEach((w)=> {
    w.style.display="none";
  });
}

