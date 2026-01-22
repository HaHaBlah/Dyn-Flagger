async function fetchImage() {
    const input = document.getElementById('userInput').value;
    const container = document.getElementById('imageContainer');

    // Validate input is a number (asset ID)
    if (!input || isNaN(input)) {
        container.innerHTML = '<p style="color: red;">Please enter a valid asset ID</p>';
        return;
    }

    const assetIds = input;
    const apiUrl = `https://thumbnails.roblox.com/v1/assets?assetIds=${assetIds}&returnPolicy=PlaceHolder&size=420x420&format=Png&isCircular=false`;

    try {
        const response = await fetch(apiUrl);
        const data = await response.json();

        // Check if data exists and has data array
        if (data.data && data.data.length > 0 && data.data[0].imageUrl) {
            const imageUrl = data.data[0].imageUrl;
            container.innerHTML = `<img src="${imageUrl}" alt="Roblox Asset" style="max-width:100%;">`;
        } else {
            container.innerHTML = '<p style="color: red;">Asset not found or no thumbnail available</p>';
        }
    } catch (error) {
        console.error("Error fetching image:", error);
        container.innerHTML = '<p style="color: red;">Error fetching image. Please try again.</p>';
    }
}