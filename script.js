async function fetchImage() {
    const input = document.getElementById('userInput').value;
    const container = document.getElementById('imageContainer');
    
    // Replace this URL with your actual API link
    const apiUrl = `https://dog.ceo/api/breeds/image/random`;

    try {
        const response = await fetch(apiUrl);
        const data = await response.json();
        
        // Clear old image and add new one
        container.innerHTML = `<img src="${data.message}" alt="Fetched Image" style="max-width:100%;">`;
    } catch (error) {
        console.error("Error fetching image:", error);
    }
}
