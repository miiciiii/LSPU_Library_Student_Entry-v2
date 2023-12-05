// Script for the Navigation Bar (Home, About Us, Contact Us, Log-in)
function showContainer(containerId) {
  const containers = document.querySelectorAll(".right-content > div");
  containers.forEach((container) => {
    container.style.display = "none";
  });

  const selectedContainer = document.querySelector(`.${containerId}`);
  if (selectedContainer) {
    selectedContainer.style.display = "block";
  }
}

// Script for Email in Forgot Password
document.addEventListener("DOMContentLoaded", function () {
  var forgotPasswordForm = document.getElementById("forgot-password-form");
  forgotPasswordForm.addEventListener("submit", function (event) {
    event.preventDefault();

    var emailInput = forgotPasswordForm.querySelector(".forgot-password--attributes[name=email]");
    var enteredEmail = emailInput.value.trim();
    var isValidEmail = validateEmail(enteredEmail);

    if (isValidEmail) {
      toggleForgotPasswordContainers();
    } else {
    }
  });
});

function toggleForgotPasswordContainers() {
  var emailContainer = document.querySelector(".forgot-password--email");
  var codeContainer = document.querySelector(".forgot-password--code");

  emailContainer.style.display = "none";
  codeContainer.style.display = "block";
}

function validateEmail(email) {
  // Regular expression for a valid email address
  var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

  // Test the email against the regular expression
  return emailRegex.test(email);
}


// Script for Available Seat Map to switch from first floor to second floor and vice versa
document.addEventListener("DOMContentLoaded", function () {
  // Initially show the first-floor buttons and hide the second-floor buttons
  const firstFloorButtons = document.querySelector(".first-floor-buttons");
  const secondFloorButtons = document.querySelector(".second-floor-buttons");

  if (firstFloorButtons && secondFloorButtons) {
    firstFloorButtons.classList.remove("hidden-floor-map");
    secondFloorButtons.classList.add("hidden-floor-map");
  }

  // Initially hide the "GO TO FIRST FLOOR" and show "GO TO SECOND FLOOR" button
  const goToFirstFloorButton = document.querySelector(".GOTO1STFLOOR");
  const goToSecondFloorButton = document.querySelector(".GOTO2NDFLOOR");

  if (goToFirstFloorButton && goToSecondFloorButton) {
    goToFirstFloorButton.style.display = "none";
    goToSecondFloorButton.style.display = "block";
  }
});

function toggleLibraryContainer(floor) {
  const firstFloorButtons = document.querySelector(".first-floor-buttons");
  const secondFloorButtons = document.querySelector(".second-floor-buttons");
  const goToFirstFloorButton = document.querySelector(".GOTO1STFLOOR");
  const goToSecondFloorButton = document.querySelector(".GOTO2NDFLOOR");

  if (floor === 'first' && firstFloorButtons && secondFloorButtons && goToFirstFloorButton && goToSecondFloorButton) {
    firstFloorButtons.classList.remove("hidden-floor-map");
    secondFloorButtons.classList.add("hidden-floor-map");
    goToFirstFloorButton.style.display = "none"; // Hide "GO TO FIRST FLOOR" button
    goToSecondFloorButton.style.display = "block"; // Show "GO TO SECOND FLOOR" button
  } else if (floor === 'second' && firstFloorButtons && secondFloorButtons && goToFirstFloorButton && goToSecondFloorButton) {
    firstFloorButtons.classList.add("hidden-floor-map");
    secondFloorButtons.classList.remove("hidden-floor-map");
    goToFirstFloorButton.style.display = "block"; // Show "GO TO FIRST FLOOR" button
    goToSecondFloorButton.style.display = "none"; // Hide "GO TO SECOND FLOOR" button
  }
}

// Script for Privacy and Policy, and Terms of Service Modals
document.addEventListener("DOMContentLoaded", function () {
  const privacyPolicyButton = document.getElementById("privacy-policy-button");
  const termsOfServiceButton = document.getElementById(
    "terms-of-service-button"
  );
  const privacyPolicyModal = document.getElementById("privacy-policy-modal");
  const termsOfServiceModal = document.getElementById("terms-of-service-modal");

  privacyPolicyButton.addEventListener("click", function () {
    privacyPolicyModal.style.display = "flex";
  });

  termsOfServiceButton.addEventListener("click", function () {
    termsOfServiceModal.style.display = "flex";
  });

  // Close modals through clicking outside of the content
  privacyPolicyModal.addEventListener("click", function (event) {
    if (event.target === privacyPolicyModal) {
      privacyPolicyModal.style.display = "none";
    }
  });

  termsOfServiceModal.addEventListener("click", function (event) {
    if (event.target === termsOfServiceModal) {
      termsOfServiceModal.style.display = "none";
    }
  });
});

// Script for Form Validation of Full Name (Capitalizing every beginning of the letter of the full name)
function capitalizeName(input) {
  // Regular expression to match letters and periods (A-Z, a-z, and .)
  const lettersAndPeriodsRegex = /^[a-zA-Z.]+$/;

  let words = input.value.split(" ");
  for (let i = 0; i < words.length; i++) {
    if (lettersAndPeriodsRegex.test(words[i])) {
      words[i] = words[i].charAt(0).toUpperCase() + words[i].slice(1);
    } else {
      words[i] = "";
    }
  }
  input.value = words.join(" ");
}

// Script for Form Validation of Student ID Numbers
function validateStudentID(input) {
  input.value = input.value.replace(/[^0-9-]/g, "").substring(0, 9);

  if (input.value.length > 4 && input.value.charAt(4) !== "-") {
    input.value = input.value.substring(0, 4) + "-";
  }

  // Enable "Select College Department" and "Select Year" if the input is valid
  var departmentSelect = document.getElementById("college-department");
  var yearSelect = document.getElementById("year");
  var confirmButton = document.getElementById("confirm-button");

  if (/^\d{4}-\d{4}$/.test(input.value)) {
    departmentSelect.disabled = false;
    yearSelect.disabled = false;
    confirmButton.disabled = false;
  } else {
    departmentSelect.disabled = true;
    yearSelect.disabled = true;
    confirmButton.disabled = true;
  }
}

//Script for Create QR Code Forms
document.addEventListener("DOMContentLoaded", function () {
  // Disable Confirm button by default
  document.getElementById("confirm-button").disabled = true;

  // Event listeners for form inputs
  var formInputs = document.getElementsByClassName(
    "create-qr-attributes"
  );
  for (var i = 0; i < formInputs.length; i++) {
    formInputs[i].addEventListener("input", function () {
      validateForm();
    });
  }

  // Event listener for form submission
  var form = document.querySelector(
    "form[create-qr-form]"
  );
  form.addEventListener("submit", function (event) {


    if (form.checkValidity()) {

    } else {

    }
  });

  // Event listener for college department dropdown
  var departmentSelect = document.getElementById("college-department");
  departmentSelect.addEventListener("change", function () {
    updateCourses();
    validateForm();
  });
});

function updateCourses() {
  var departmentSelect = document.getElementById("college-department");
  var courseSelect = document.getElementById("course");

  courseSelect.innerHTML = '<option value="" selected>Select Course</option>';

  var selectedDepartment = departmentSelect.value;

  // Switch Cases for Selected Department
  switch (selectedDepartment) {
    case "CAS":
      addOptions(courseSelect, casCourses);
      break;
    case "CBAA":
      addOptions(courseSelect, cbaaCourses);
      break;
    case "CCS":
      addOptions(courseSelect, ccsCourses);
      break;
    case "CCJE":
      addOptions(courseSelect, ccjeCourses);
      break;
    case "COE":
      addOptions(courseSelect, coeCourses);
      break;
    case "CHMT":
      addOptions(courseSelect, chmtCourses);
      break;
    case "CIT":
      addOptions(courseSelect, citCourses);
      break;
    case "COL":
      addOptions(courseSelect, colCourses);
      break;
    case "CONAH":
      addOptions(courseSelect, conahCourses);
      break;
    case "CTE":
      addOptions(courseSelect, cteCourses);
      break;
    case "SHS":
      addOptions(courseSelect, shsStrand);
      break;
  }

  courseSelect.disabled = false;
}

// Update script for Create QR Code Form Selection Validation
function validateForm() {
  var departmentSelect = document.getElementById("college-department");
  var courseSelect = document.getElementById("course");
  var yearSelect = document.getElementById("year");
  var confirmButton = document.getElementById("confirm-button");

  courseSelect.disabled = false;
  yearSelect.disabled = false;
  confirmButton.disabled = false;

  if (departmentSelect.value === "N/A" || departmentSelect.value === "") {
      courseSelect.disabled = true;
      yearSelect.disabled = true;
      confirmButton.disabled = false;
  }

  if (departmentSelect.value === "SHS") {
      courseSelect.disabled = false;
      yearSelect.disabled = true;
  }
}

function addOptions(selectElement, options) {
  for (var i = 0; i < options.length; i++) {
    var option = document.createElement("option");
    option.value = options[i];
    option.text = options[i];
    selectElement.add(option);
  }
}

// Specific options for each department
var casCourses = [
  "Bachelor of Arts in Broadcasting",
  "Bachelor of Science in Biology",
  "Bachelor of Science in Chemistry",
  "Bachelor of Science in Mathematics",
  "Bachelor of Science in Psychology",
];

var cbaaCourses = [
  "Bachelor of Office Administration",
  "Bachelor of Science in Entrepreneurship",
  "Bachelor of Science in Accountancy",
  "Master of Public Administration",
];

var ccsCourses = [
  "Bachelor of Science in Information Technology",
  "Bachelor of Science in Computer Science",
  "Master in Information Technology",
];

var ccjeCourses = ["Bachelor of Science in Criminology"];

var coeCourses = [
  "Bachelor of Science in Electronics Engineering",
  "Bachelor of Science in Mechanical Engineering",
  "Bachelor of Science in Electrical Engineering",
  "Bachelor of Science in Civil Engineering",
  "Bachelor of Science in Computer Engineering",
];

var chmtCourses = [
  "Bachelor of Science in Hospitality Management",
  "Bachelor of Science in Tourism Management",
];

var citCourses = ["Bachelor of Industrial Technology"];

var colCourses = ["Juris Doctor"];

var conahCourses = ["Bachelor of Science in Nursing"];

var cteCourses = [
  "Bachelor of Secondary Education",
  "Bachelor of Elmentary Education",
  "Bachelor of Technical Vocational Teacher Education",
  "Bachelor of Physical Education",
  "Bachelor of Technology and Livelihood Education",
  "Doctor of Education",
  "Master of Arts in Teaching English",
  "Master of Arts in Teacher Education",
];

var shsStrand = [
  "Accountancy, Business and Management",
  "Humanities and Social Sciences",
  "Science, Technology, Engineering and Mathematics",
  "Technical Vocational Livelihood",
];

// Script for Mobile Navigation Media Query
document.addEventListener("DOMContentLoaded", function () {
  const buttonNav = document.querySelector(".mobile-btn");
  const navBar = document.querySelector(".nav-bar");

  buttonNav.addEventListener("click", function(){
    navBar.classList.toggle("nav-open");
  });
});