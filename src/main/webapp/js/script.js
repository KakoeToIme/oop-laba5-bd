const navButtons = document.querySelectorAll('.nav-link');

navButtons.forEach(button => {
    button.addEventListener('click', () => {
        const targetPage = button.getAttribute('href');

        window.location.href = targetPage;
    });
});
