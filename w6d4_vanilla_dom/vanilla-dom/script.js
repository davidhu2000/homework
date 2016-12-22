document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const handlePlacesSubmit = e => {
    e.preventDefault();

    const input = document.querySelector('.favorite-input');

    const li = document.createElement('li');
    li.textContent = input.value;

    input.value = '';

    document.getElementById('sf-places').appendChild(li);
  };

  const submitButton = document.querySelector('.favorite-submit');
  submitButton.addEventListener('click', handlePlacesSubmit);

  // adding new photos

  // --- your code here!
  const handleFormShowButton = e => {
    let form = document.querySelector('.photo-form-container');

    if (form.className === "photo-form-container") {
      form.className = "photo-form-container hidden";
    } else {
      form.className = "photo-form-container";
    }
  };

  const imageShowButton = document.querySelector('.photo-show-button');
  imageShowButton.addEventListener('click', handleFormShowButton);

  const handleAddImage = e => {
    e.preventDefault();

    const url = document.querySelector('.photo-url-input');

    const img = document.createElement('img');
    img.src = url.value;
    url.value = '';

    const li = document.createElement('li');
    li.appendChild(img);

    document.querySelector('.dog-photos').appendChild(li);
    handleFormShowButton();
  };

  const addImage = document.querySelector('.photo-url-submit');
  addImage.addEventListener('click', handleAddImage);
});
