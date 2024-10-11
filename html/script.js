window.addEventListener('message', function(event) {
    if (event.data.action === 'displayZone') {
        const zoneText = document.getElementById('zoneText');
        zoneText.innerText = event.data.zone;

        // Update the badge color based on the zone
        if (event.data.zone === 'Green Zone') {
            zoneText.className = 'badge badge-pill badge-success fade-in';
        } else if (event.data.zone === 'Amber Zone') {
            zoneText.className = 'badge badge-pill badge-warning fade-in';
        } else if (event.data.zone === 'Red Zone') {
            zoneText.className = 'badge badge-pill badge-danger fade-in';
        } 
        else {
            zoneText.className = 'badge badge-pill badge-primary';
            setTimeout(() => {
                zoneText.classList.remove('fade-in');
            }, 500); // Match the transition duration
        }

        // Ensure the element is visible
        zoneText.style.opacity = '1';

        // Fade out after a delay if no zone is active
        if (event.data.zone === '') {
            setTimeout(() => {
                zoneText.style.opacity = '0';
            }, 500); // Match the transition duration
        }
    }
});