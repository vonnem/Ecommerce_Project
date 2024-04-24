document.addEventListener('DOMContentLoaded', () => {
  const navbarBurgers = Array.from(document.querySelectorAll('.navbar-burger'));

  if (navbarBurgers.length > 0) {
    navbarBurgers.forEach(el => {
      el.addEventListener('click', () => {
        const targetId = el.dataset.target;
        const target = document.querySelector(targetId);

        console.log('Burger clicked');
        el.classList.toggle('is-active');
        target.classList.toggle('is-active');
      });
    });
  }
});