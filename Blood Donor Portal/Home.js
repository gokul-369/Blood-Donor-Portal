var bar = document.querySelector('.header');

window.onscroll = function () {
    var nav = window.scrollY;
    if (nav >= 100) {
        bar.classList.add('scroll');

    } else {
        bar.classList.remove('scroll');
    }
};