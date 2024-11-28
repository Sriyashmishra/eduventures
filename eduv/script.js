let ham = document.querySelector(".ham");
let sidebar = document.querySelector(".sidebar");

ham.addEventListener("click", () => {
    sidebar.classList.toggle("move");
});



const boxes = document.querySelectorAll(".box");

boxes.forEach(box => {
    box.style.cursor = "pointer"; 
    box.addEventListener("click", () => {
        const link = box.querySelector("a");
        if (link) {
            window.location.href = link.href; 
        }
    });
});
