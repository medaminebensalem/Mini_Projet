document.addEventListener('DOMContentLoaded', function () {
    const bouton = document.createElement("button");
    bouton.textContent = "Clique-moi";
    bouton.style.position = "fixed";
    bouton.style.bottom = "20px";
    bouton.style.right = "20px";
    bouton.style.padding = "10px";
    bouton.style.backgroundColor = "#f90";
    bouton.style.color = "#fff";
    bouton.style.border = "none";
    bouton.style.borderRadius = "8px";
    bouton.style.cursor = "pointer";

    bouton.addEventListener("click", function () {
      alert("Bienvenue chez AKA sport !");
    });

    document.body.appendChild(bouton);
  });

  // Sticky Header
window.addEventListener("scroll", function () {
  const header = document.querySelector("header");
  header.classList.toggle("sticky", window.scrollY > 100);
});

// Animation des sections au scroll
const sections = document.querySelectorAll("section");

const observer = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add("visible");
    }
  });
}, {
  threshold: 0.1
});

sections.forEach(section => {
  section.classList.add("invisible");
  observer.observe(section);
});

// Bouton "Retour en haut"
const btn = document.getElementById("backToTop");

window.onscroll = function () {
  btn.style.display = window.scrollY > 200 ? "block" : "none";
};

btn.onclick = function () {
  window.scrollTo({ top: 0, behavior: 'smooth' });
};
