document.getElementById('navbarDropdown').addEventListener('click', toggleDropdown);
    document.addEventListener('click', handleOutsideClick);

function toggleDropdown() {
        const dropdown = document.getElementById('mycall');
        dropdown.style.display = dropdown.style.display === 'none' ? 'block' : 'none';
        document.getElementById('navbarDropdown').setAttribute('aria-expanded', dropdown.style.display !== 'none');
    }

function handleOutsideClick(event) {
        const dropdown = document.getElementById('mycall');
        if (dropdown.style.display !== 'none' && !dropdown.contains(event.target) && event.target !== document.getElementById('navbarDropdown')) {
            toggleDropdown();
        }
    }