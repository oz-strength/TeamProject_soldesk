const sun = document.getElementById('sun');
const grayCloudR = document.getElementById('grayCloud-R');
const grayCloudL = document.getElementById('grayCloud-L');
const whiteCloudL = document.getElementById('whiteCloud-L');
const whiteCloudM = document.getElementById('whiteCloud-M');
const whiteCloudR = document.getElementById('whiteCloud-R');
const birdL = document.getElementById('bird-L');
const birdM = document.getElementById('bird-M');
const birdR = document.getElementById('bird-R');

const backmountain = document.getElementById('backmountain');

const mountain1 = document.getElementById('mountain-1');
const mountain2 = document.getElementById('mountain-2');
const mountain2lightL = document.getElementById('mountain-2-lightL');
const mountain2lightR = document.getElementById('mountain-2-lightR');
const mountain3 = document.getElementById('mountain-3');
const mountain4 = document.getElementById('mountain-4');
const mountain4lightL = document.getElementById('mountain-4-lightL');
const mountain4lightR = document.getElementById('mountain-4-lightR');
const mountain5 = document.getElementById('mountain-5');
const mountain5tree1 = document.getElementById('mountain-5-tree1');
const mountain5tree2 = document.getElementById('mountain-5-tree2');
const mountain5tree3 = document.getElementById('mountain-5-tree3');
const mountain5tree4 = document.getElementById('mountain-5-tree4');
const mountain5tree5 = document.getElementById('mountain-5-tree5');
const mountain6one = document.getElementById('mountain-6-1');
const mountain6two = document.getElementById('mountain-6-2');
const mountain6three = document.getElementById('mountain-6-3');
const mountain6four = document.getElementById('mountain-6-4');
const mountain6five = document.getElementById('mountain-6-5');
const mountain6six = document.getElementById('mountain-6-6');
const mountain6seven = document.getElementById('mountain-6-7');
const mountain6eight = document.getElementById('mountain-6-8');
const mountain6tree1 = document.getElementById('mountain-6-tree1');
const mountain6tree2 = document.getElementById('mountain-6-tree2');
const mountain6tree3 = document.getElementById('mountain-6-tree3');
const mountain6tree4 = document.getElementById('mountain-6-tree4');
const mountain6tree5 = document.getElementById('mountain-6-tree5');
const mountain6tree6 = document.getElementById('mountain-6-tree6');
const mountain6tree7 = document.getElementById('mountain-6-tree7');
const fronttreeL = document.getElementById('fronttree-L');
const fronttreeR = document.getElementById('fronttree-R');

let clientWidth = document.documentElement.clientWidth;

window.addEventListener('scroll', () => {
	if (clientWidth > 800) {
		const scrollY = window.scrollY;

	  sun.style.transform = `translateY(${scrollY * 1.05}px)`;
	
	  grayCloudR.style.transform = `translateX(${scrollY * 0.2}px)`;
	  grayCloudL.style.transform = `translateX(-${scrollY * 0.2}px)`;
	  whiteCloudL.style.transform = `translateX(-${scrollY * 0.2}px)`;
	  whiteCloudM.style.transform = `translateX(-${scrollY * 0.2}px)`;
	  whiteCloudR.style.transform = `translateX(${scrollY * 0.2}px)`;
	
	  birdL.style.transform = `translateX(${scrollY}px)`;
	  birdM.style.transform = `translateX(-${scrollY * 3}px)`;
	  birdR.style.transform = `translateX(-${scrollY * 0.5}px)`;
	
	  backmountain.style.transform = `translateY(${scrollY * 2}px)`;
	
	  mountain1.style.transform = `translateY(${scrollY * 1.25}px)`;
	
	  mountain2.style.transform = `translateY(${scrollY * 1}px)`;
	  mountain2lightL.style.transform = `translateY(${scrollY * 1}px)`;
	  mountain2lightR.style.transform = `translateY(${scrollY * 1}px)`;
	
	  mountain3.style.transform = `translateY(${scrollY * 0.8}px)`;
	
	  mountain4.style.transform = `translateY(${scrollY * 0.6}px)`;
	  mountain4lightL.style.transform = `translateY(${scrollY * 0.6}px)`;
	  mountain4lightR.style.transform = `translateY(${scrollY * 0.6}px)`;
	
	  mountain5.style.transform = `translateY(${scrollY * 0.4}px)`;
	  mountain5tree1.style.transform = `translateY(${scrollY * 0.4}px)`;
	  mountain5tree2.style.transform = `translateY(${scrollY * 0.4}px)`;
	  mountain5tree3.style.transform = `translateY(${scrollY * 0.4}px)`;
	  mountain5tree4.style.transform = `translateY(${scrollY * 0.4}px)`;
	  mountain5tree5.style.transform = `translateY(${scrollY * 0.4}px)`;
	
	  mountain6one.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6two.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6three.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6four.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6five.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6six.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6seven.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6eight.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6tree1.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6tree2.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6tree3.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6tree4.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6tree5.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6tree6.style.transform = `translateY(${scrollY * 0.3}px)`;
	  mountain6tree7.style.transform = `translateY(${scrollY * 0.3}px)`;
	
	  fronttreeL.style.transform = `translateY(${scrollY * 0.1}px)`;
	  fronttreeR.style.transform = `translateY(${scrollY * 0.1}px)`;
	} 
  
});

document
  .querySelectorAll('#right-buttons .button-in-header')
  .forEach((element) => {
    element.addEventListener('click', (event) => {
      document.getElementById('active-menu').removeAttribute('id');

      element.setAttribute('id', 'active-menu');
    });
  });

const link = document.querySelector('a[href="#map"]')

link.addEventListener("click", ()=>{
	event.preventDefault()
	
	document.querySelector("#map").scrollIntoView({
		behavior: 'smooth'
	})
})

window.addEventListener("resize", () => {
	clientWidth = document.documentElement.clientWidth
	
	if (clientWidth < 800) {
		sun.style.transform = `translateY(0px)`;
	
	  grayCloudR.style.transform = `translateX(0px)`;
	  grayCloudL.style.transform = `translateX(0px)`;
	  whiteCloudL.style.transform = `translateX(0px)`;
	  whiteCloudM.style.transform = `translateX(0px)`;
	  whiteCloudR.style.transform = `translateX(0px)`;
	
	  birdL.style.transform = `translateX(0px)`;
	  birdM.style.transform = `translateX(0px)`;
	  birdR.style.transform = `translateX(0px)`;
	
	  backmountain.style.transform = `translateY(0px)`;
	
	  mountain1.style.transform = `translateY(0px)`;
	
	  mountain2.style.transform = `translateY(0px)`;
	  mountain2lightL.style.transform = `translateY(0px)`;
	  mountain2lightR.style.transform = `translateY(0px)`;
	
	  mountain3.style.transform = `translateY(0px)`;
	
	  mountain4.style.transform = `translateY(0px)`;
	  mountain4lightL.style.transform = `translateY(0px)`;
	  mountain4lightR.style.transform = `translateY(0px)`;
	
	  mountain5.style.transform = `translateY(0px)`;
	  mountain5tree1.style.transform = `translateY(0px)`;
	  mountain5tree2.style.transform = `translateY(0px)`;
	  mountain5tree3.style.transform = `translateY(0px)`;
	  mountain5tree4.style.transform = `translateY(0px)`;
	  mountain5tree5.style.transform = `translateY(0px)`;
	
	  mountain6one.style.transform = `translateY(0px)`;
	  mountain6two.style.transform = `translateY(0px)`;
	  mountain6three.style.transform = `translateY(0px)`;
	  mountain6four.style.transform = `translateY(0px)`;
	  mountain6five.style.transform = `translateY(0px)`;
	  mountain6six.style.transform = `translateY(0px)`;
	  mountain6seven.style.transform = `translateY(0px)`;
	  mountain6eight.style.transform = `translateY(0px)`;
	  mountain6tree1.style.transform = `translateY(0px)`;
	  mountain6tree2.style.transform = `translateY(0px)`;
	  mountain6tree3.style.transform = `translateY(0px)`;
	  mountain6tree4.style.transform = `translateY(0px)`;
	  mountain6tree5.style.transform = `translateY(0px)`;
	  mountain6tree6.style.transform = `translateY(0px)`;
	  mountain6tree7.style.transform = `translateY(0px)`;
	
	  fronttreeL.style.transform = `translateY(0px)`;
	  fronttreeR.style.transform = `translateY(0px)`;
	}
})