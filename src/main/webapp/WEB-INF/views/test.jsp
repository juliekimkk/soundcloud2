<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>3d carousel / slideshow</title>
<style>
html,
body {
  height: 100%;
}

body {
  background: #120d0b;
  overflow: hidden;
  display: flex;
  align-items: center;
  font-family: 'Montserrat', sans-serif;
  color: #fff;
}

.slider {
  margin: 0 auto;
  width: 100% !important;
  height: 100% !important;
  position: relative;
  -webkit-perspective: 1000px;
          perspective: 1000px;
  max-height: 100%;
  max-width: 100%;
  will-change: transform;
}
.slider:not(.zoom) .item {
  transition: all 900ms ease-in-out, opacity 400ms linear 0ms;
  opacity: 0;
}
.slider:not(.zoom) .item.active {
  width: 100% !important;
  height: 100% !important;
  line-height: 100%;
  position: relative;
  display: flex;
  opacity: 1;
  pointer-events: all;
}
.slider:not(.zoom) .item.active span {
  top: 0;
  -webkit-transform: scale(1);
          transform: scale(1);
}
.slider:not(.zoom) .item.active .btn {
  -webkit-transform: scale(1);
          transform: scale(1);
  height: 44px;
}
.slider:not(.zoom) .item.active .btn span {
  top: 16px;
}
.slider:not(.zoom) .item.item1 {
  -webkit-transform: rotateY(0deg) translateZ(0);
          transform: rotateY(0deg) translateZ(0);
}
.slider:not(.zoom) .item.item2 {
  -webkit-transform: rotateY(120deg) translateZ(0);
          transform: rotateY(120deg) translateZ(0);
}
.slider:not(.zoom) .item.item3 {
  -webkit-transform: rotateY(240deg) translateZ(0);
          transform: rotateY(240deg) translateZ(0);
}
.slider.zoom .item {
  transition: all 900ms ease-in-out, opacity 300ms linear 500ms;
  opacity: 0.5;
}

.wrapper {
  height: 100%;
  width: 100%;
  position: absolute;
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: -webkit-transform 900ms ease-in-out;
  transition: transform 900ms ease-in-out;
  transition: transform 900ms ease-in-out, -webkit-transform 900ms ease-in-out;
  display: flex;
  align-items: center;
  justify-content: center;
  will-change: transform;
}

.item {
  display: flex;
  align-items: center;
  justify-content: center;
  position: absolute;
  width: 39%;
  height: 50%;
  line-height: 50%;
  color: #fff;
  background-repeat: no-repeat;
  background-size: cover !important;
  background-position: center;
  transition: all 900ms ease-in-out;
  -webkit-transform-origin: center;
          transform-origin: center;
  pointer-events: none;
  will-change: transform;
}
.item.item1 {
  -webkit-transform: rotateY(0deg) translateZ(500px);
          transform: rotateY(0deg) translateZ(500px);
  background-position: 50% 0%;
}
.item.item1.active {
  -webkit-transform: rotateY(0deg) translateZ(250px);
          transform: rotateY(0deg) translateZ(250px);
  opacity: 1;
}
.item.item2 {
  -webkit-transform: rotateY(120deg) translateZ(500px);
          transform: rotateY(120deg) translateZ(500px);
}
.item.item2.active {
  -webkit-transform: rotateY(120deg) translateZ(250px);
          transform: rotateY(120deg) translateZ(250px);
  opacity: 1;
}
.item.item3 {
  -webkit-transform: rotateY(240deg) translateZ(550px);
          transform: rotateY(240deg) translateZ(550px);
}
.item.item3.active {
  -webkit-transform: rotateY(240deg) translateZ(250px);
          transform: rotateY(240deg) translateZ(250px);
  opacity: 1;
}
.item__info {
  text-align: center;
  text-transform: uppercase;
  font-weight: bold;
  will-change: transform;
}
.item__year {
  font-size: 30px;
  letter-spacing: 3px;
  margin-bottom: 35px;
  overflow: hidden;
  line-height: 30px;
  will-change: transform;
}
.item__year span {
  position: relative;
  top: 27px;
  transition: all 900ms linear;
  display: inline-block;
  -webkit-transform: scale(0.7);
          transform: scale(0.7);
  white-space: nowrap;
  will-change: transform;
}
.item__name {
  font-size: 55px;
  letter-spacing: 3px;
  margin-bottom: 62px;
  overflow: hidden;
  line-height: 55px;
  will-change: transform;
}
.item__name span {
  position: relative;
  top: 48px;
  transition: all 900ms ease-in-out;
  display: inline-block;
  -webkit-transform: scale(0.7);
          transform: scale(0.7);
  white-space: nowrap;
  will-change: transform;
}

.btn {
  background: #fff;
  color: #120d0b;
  padding: 0 33px;
  text-decoration: none;
  display: inline-block;
  -webkit-transform: scale(0.7);
          transform: scale(0.7);
  height: 0;
  position: relative;
  overflow: hidden;
  transition: all 900ms ease-in-out;
  will-change: transform;
}
.btn span {
  position: relative;
  top: 16px;
  will-change: transform;
}

.arrow {
  background: #8e2037;
  position: absolute;
  top: 50%;
  -webkit-transform: translateY(-50%);
          transform: translateY(-50%);
  cursor: pointer;
  border-radius: 50%;
  width: 70px;
  height: 70px;
  transition: all .1s ease-in-out;
  -webkit-transform-origin: 50% 50%;
          transform-origin: 50% 50%;
  will-change: transform;
}
.arrow:hover {
  -webkit-transform: translateY(-50%) scale(1.1);
          transform: translateY(-50%) scale(1.1);
}
.arrow.arrow-next {
  right: 5em;
  background: url("https://alikinvv.github.io/3d-carousel/build/img/arrow-right.svg") no-repeat center #8e2037;
  background-size: 38px !important;
}
.arrow.arrow-prev {
  left: 5em;
  background: url("https://alikinvv.github.io/3d-carousel/build/img/arrow-left.svg") no-repeat center #8e2037;
  background-size: 38px !important;
}

@media (min-width: 1400px) {
  .slider {
    max-height: 700px;
    max-width: 1500px;
  }

  .arrow-next {
    right: -110px !important;
  }

  .arrow-prev {
    left: -110px !important;
  }
}
</style>



<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
</head>
<body>


  <div class="slider">
    <div class="wrapper">
        <div style="background-image: url('/assets/images/main.jpg')" class="item item1 active">
            <div class="item__info">
                <p class="item__year"><span>1483 - 1484</span></p>
                <p class="item__name"><span>BIRH OF VENUS</span></p>
                <a href="javascript:void(0)" class="btn"><span>Discover more</span></a>
            </div>
        </div>
        <div style="background-image: url('https://alikinvv.github.io/3d-carousel/build/img/slide1.jpg')" class="item item2">
            <div class="item__info">
                <p class="item__year"><span>1481 - 1484</span></p>
                <p class="item__name"><span>BIRH OF VENUS</span></p>
                <a href="javascript:void(0)" class="btn"><span>Discover more</span></a>
            </div>
        </div>
        <div style="background-image: url('https://alikinvv.github.io/3d-carousel/build/img/slide3.jpg')" class="item item3">
            <div class="item__info">
                <p class="item__year"><span>1500 - 1501</span></p>
                <p class="item__name"><span>THE STORY OF VIRGINIA</span></p>
                <a href="javascript:void(0)" class="btn"><span>Discover more</span></a>
            </div>
        </div>
    </div>

    <div class="arrow arrow-next"></div>
    <div class="arrow arrow-prev"></div>
</div>

<a href="https://github.com/alikinvv/3d-carousel" target="_blank" class="github-corner" aria-label="View source on GitHub"><svg width="80" height="80" viewBox="0 0 250 250" style="fill:#fff; color:#120d0b; position: absolute; top: 0; border: 0; right: 0;" aria-hidden="true"><path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path><path d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2" fill="currentColor" style="transform-origin: 130px 106px;" class="octo-arm"></path><path d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z" fill="currentColor" class="octo-body"></path></svg></a><style>.github-corner:hover .octo-arm{animation:octocat-wave 560ms ease-in-out}@keyframes octocat-wave{0%,100%{transform:rotate(0)}20%,60%{transform:rotate(-25deg)}40%,80%{transform:rotate(10deg)}}@media (max-width:500px){.github-corner:hover .octo-arm{animation:none}.github-corner .octo-arm{animation:octocat-wave 560ms ease-in-out}}</style>

</body>
<script>
let slider = document.querySelector('.slider');
let wrapper = document.querySelector('.wrapper');
let next = document.querySelector('.arrow-next');
let prev = document.querySelector('.arrow-prev');
let item = document.querySelectorAll('.item');
let currdeg  = 0;
let active = 0;

next.addEventListener('click', () => {
    slider.classList.toggle('zoom');

    currdeg = currdeg - 120;

    if (active === item.length - 1) {
        active = 0;
    } else {
        active++;
    }

    toggle();
});

prev.addEventListener('click', () => {
    slider.classList.toggle('zoom');

    currdeg = currdeg + 120;

    if (active === 0) {
        active = item.length - 1;
    } else {
        active--;
    }

    toggle();
});

let toggle = () => {
    setTimeout(() => {
        for (let i = 0; i < item.length; i++) {
            item[i].classList.remove('active');
        }

        item[active].classList.add('active')
        wrapper.style.transform = 'rotateY(' + currdeg + 'deg)';
    }, 900);

    setTimeout(() => {
        slider.classList.toggle('zoom');
    }, 1900);
}
</script>
</html>


