(function() {
	console.log("fired");

	var burgerCon = document.querySelector("#burgerMenu");


	function hamMenu() {
		burgerCon.classList.toggle("slideToggle");
		button.classList.toggle("expanded");
	}

	button.addEventListener("click", hamMenu, false);

})();


TweenMax.to(".myImg", 0.001, {opacity:0});
    function show(){
        TweenMax.to(".myImg", 0.2, {opacity:1  ,delay:0});
    }
TweenMax.to(".mainText", 0.001, {scale:0});
    function show2(){
        TweenMax.to(".mainText", 1, {scale:1, delay:0})
    }

    TweenMax.to(".allIcons", 0.001, {opacity:0});
    function show3(){
        TweenMax.to(".allIcons", 0.5, {opacity:1  ,delay:0});
    }

    TweenMax.to(".logo", 0.001, {opacity:0});
    function show4(){
        TweenMax.to(".logo", 0.5, {opacity:1  ,delay:0});
    }

    

    document.querySelector("#mainImg").addEventListener("mouseover", show)
    document.querySelector("#mainImg").addEventListener("mouseover", show2)
    document.querySelector("#interest").addEventListener("mouseover", show3)
    document.querySelector("#mainLogo").addEventListener("mouseover", show4)

const myVM = (() => {
        let userButtons = document.querySelectorAll('.u-link'),
        lightBox = document.querySelector('.lightbox');
        function renderPurpose(media) {
            return `<ul class="u-social">
                ${media.map(item => `<li>${item}</li>`).join("")}
                    </ul>`
        }
    function parseUserData(person) {
        let targetDiv = lightBox.querySelector('.lb-content'),
            targetImg = lightBox.querySelector('img');

        let bioContent = `
            <p>${person.bio}</p>
            <h4>purpose</h4>
            <!-- loop thru social media stuff here-->
            ${renderPurpose(person.purpose)}
        `;

        targetDiv.innerHTML = bioContent;
        targetImg.src = thing.currentSrc;

        lightBox.classList.add('show-lb');
    }
   
    function getUserData(event) {
        event.preventDefault();
        let url = `/users/${this.getAttribute('href')}`,
            currentImg = this.previousElementSibling.getAttribute('src');
        fetch(url)
            .then(res => res.json())
            .then(data => {
                console.log(data)
                parseUserData(data);
            })
            .catch((err) => {
                console.log(err);
            });
    }

    userButtons.forEach(button => button.addEventListener("click", getUserData));
    lightBox.querySelector('.close').addEventListener("click", function() {
        lightBox.classList.remove('show-lb');
    });
})();