async function fetchImage() {
    const input = document.getElementById('userInput').value;
    const container = document.getElementById('imageContainer');
    
    // Replace this URL with your actual API link
    const apiUrl = `https://static.wikia.nocookie.net/ronroblox/images/6/60/RoN_MainPage.png/revision/latest?cb=20221127205504`;

    try {
        const response = await fetch(apiUrl);
        const data = await response.json();
        
        // Clear old image and add new one
        container.innerHTML = `<img src="${data.message}" alt="Fetched Image" style="max-width:100%;">`;
    } catch (error) {
        console.error("Error fetching image:", error);
    }
}
