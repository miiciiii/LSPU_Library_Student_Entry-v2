// Script for Available Seat Map to switch from first floor to second floor and vice versa
function toggleLibraryContainer(currentContainerId, nextContainerId) {
  var currentContainer = document.getElementById(currentContainerId);
  var nextContainer = document.getElementById(nextContainerId);

  if (currentContainer && nextContainer) {
    currentContainer.classList.add("hidden-floor-map");
    nextContainer.classList.remove("hidden-floor-map");
  }
}

// Script for the Admin Dashboard Navigation Bar 
document.addEventListener("DOMContentLoaded", function () {
  // Set library-container to be visible by default
  var defaultContainer = document.querySelector(".library-map-container");
  defaultContainer.style.display = "block";

  // Hide other containers
  var containersToHide = document.querySelectorAll(
    ".student-information-container, .visit-history-container"
  );
  containersToHide.forEach(function (container) {
    container.style.display = "none";
  });

  // Get all nav buttons and corresponding containers
  var navButtons = document.querySelectorAll(".nav-button");
  var containers = document.querySelectorAll(".dashboard-content > div");

  // Add click event listeners to each nav button
  navButtons.forEach(function (button, index) {
    button.addEventListener("click", function () {
      // Hide all containers
      containers.forEach(function (container) {
        container.style.display = "none";
      });

      // Show the selected container
      containers[index].style.display = "block";

      // Reset background and color for all buttons
      navButtons.forEach(function (navButton) {
        navButton.style.backgroundColor = "#5e6f97";
        navButton.style.color = "#ecebeb";
      });

      // Set background and color for the clicked button
      button.style.backgroundColor = "#58a4b0";
      button.style.color = "#ecebeb";
    });
  });
});

document.addEventListener('DOMContentLoaded', function() {
  const logoutButton = document.getElementById('logoutButton');

  if (logoutButton) {
      logoutButton.addEventListener('click', async function() {
          // Optional: You can add a confirmation dialog here
          if (confirm("Are you sure you want to logout?")) {
              try {
                  // Make an AJAX request to the logout view
                  const response = await fetch('/admin_logout/', {
                      method: 'POST',
                      headers: {
                          'Content-Type': 'application/json',
                          'X-CSRFToken': getCSRFToken() // Get CSRF token from a function (see below)
                      },
                      // body: JSON.stringify({}) // Include any data if needed
                  });

                  if (response.ok) {
                      // Redirect to the home or login page after logout (optional)
                      window.location.href = '/';
                  } else {
                      console.error('Logout failed', response.statusText);
                  }
              } catch (error) {
                  console.error('Logout failed', error);
              }
          }
      });
    }

  // Function to get the CSRF token from cookies
function getCSRFToken() {
    const name = 'csrftoken=';
    const decodedCookie = decodeURIComponent(document.cookie);
    const cookies = decodedCookie.split(';');
    for (let i = 0; i < cookies.length; i++) {
        let cookie = cookies[i].trim();
        if (cookie.indexOf(name) === 0) {
            return cookie.substring(name.length, cookie.length);
        }
    }
    return null;
  }
});

function filterTable() {
  var departmentSelect = document.getElementById('department-selection');
  var selectedDepartment = departmentSelect.value;
  
  var rows = document.getElementsByTagName('tbody')[0].getElementsByTagName('tr');
  
  for (var i = 0; i < rows.length; i++) {
    var departmentCell = rows[i].getElementsByTagName('td')[2]; // Assuming the department is in the third column
    
    if (selectedDepartment === '' || departmentCell.innerText === selectedDepartment) {
      rows[i].style.display = ''; // Show the row
    } else {
      rows[i].style.display = 'none'; // Hide the row
    }
  }
}

function filterTableByDate() {
  var input, filter, table, tbody, tr, td, i, txtValue;
  input = document.getElementById("dateFilterInput");
  filter = new Date(input.value).toLocaleDateString('en-US', {
    year: 'numeric',
    month: 'short',
    day: 'numeric'
  });
  table = document.getElementById("dataTable");
  tbody = table.getElementsByTagName("tbody")[0];
  tr = tbody.getElementsByTagName("tr");

  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = new Date(td.textContent).toLocaleDateString('en-US', {
        year: 'numeric',
        month: 'short',
        day: 'numeric'
      });
      if (txtValue === filter) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}

function showAllRows() {
  var table, tbody, tr, i;

  table = document.getElementById("dataTable");
  tbody = table.getElementsByTagName("tbody")[0];
  tr = tbody.getElementsByTagName("tr");

  for (i = 0; i < tr.length; i++) {
    tr[i].style.display = "";
  }
}
