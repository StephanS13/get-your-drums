//select the element from the sidebar with id
const selector = document.getElementById("selector");

//select MPC product.name, product.content
const mpcName = document.getElementById("mpcName");
const mpcContent = document.getElementById("mpcContent");

//select the pads
const mpcPad1 = document.getElementById("pad1");
const mpcPad2 = document.getElementById("pad2");
const mpcPad3 = document.getElementById("pad3");
const mpcPad4 = document.getElementById("pad4");
const mpcPad5 = document.getElementById("pad5");
const mpcPad6 = document.getElementById("pad6");
const mpcPad7 = document.getElementById("pad7");
const mpcPad8 = document.getElementById("pad8");
const mpcPad9 = document.getElementById("pad9");

// connect
selector.addEventListener("click", (event) => {
  event.currentTarget.mpcName.change(product.name);
  event.currentTarget.mpcContent.change(product.content);
  event.currentTarget.mpcPad1.change(product.sound1);
  event.currentTarget.mpcPad2.change(product.sound2);
  
});


document.querySelectorAll("mpc").forEach((mpc) => {
  mpc.addEventListener("click", (event) => {
    event.currentTarget.classList.toggle("img-circle");
  });
});

// => change the name of the MPC to product.name
mpcName = selector.insertAdjacentElement(product.name)

// => change the content of the MPC to product.content

// => change the sound of the pads to product.sound1

debugger