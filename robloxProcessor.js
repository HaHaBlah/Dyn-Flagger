// robloxProcessor.js

/**
 * 
 * @param {integer} assetID 
 * @param {string} size eg. 700x700, 150x150, 48x48
 * @returns 
 */
export async function getRobloxThumbnailURL(assetID, size = '700x700') {
    try {
        // Call your Cloudflare Workers endpoint
        const response = await fetch(
            `/api/roblox-thumbnail?assetid=${encodeURIComponent(assetID)}&size=${encodeURIComponent(size)}`
        );

        if (!response.ok) {
            throw new Error(`Failed to fetch Thumbnail data: ${response.status}`);
        }

        const data = await response.json();

        if (data.error) {
            throw new Error(data.error);
        }

        return data.imageUrl;
    } catch (error) {
        console.error(`Error fetching Roblox thumbnail URL for ${assetID}:`, error);
        throw error;
    }
}