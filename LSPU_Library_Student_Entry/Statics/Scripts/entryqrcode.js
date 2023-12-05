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
    var purposeSelect = document.getElementById("purpose");
    var confirmButton = document.getElementById("confirm-button");
  
    if (/^\d{4}-\d{4}$/.test(input.value)) {
      departmentSelect.disabled = false;
      yearSelect.disabled = false;
      purposeSelect.disabled = false;
      confirmButton.disabled = false;
    } else {
      departmentSelect.disabled = true;
      yearSelect.disabled = true;
      purposeSelect.disabled = true;
      confirmButton.disabled = true;
    }
  }
  
  //Script for Create QR Code Forms
  document.addEventListener("DOMContentLoaded", function () {
    // Disable Confirm button by default
    document.getElementById("confirm-button").disabled = true;
  
    // Hide library-map-container by default
    var libraryMapContainer = document.querySelector(".library-map-container");
    libraryMapContainer.style.display = "none";
  
    // Event listeners for form inputs
    var formInputs = document.getElementsByClassName("manual-entry-attributes");
    for (var i = 0; i < formInputs.length; i++) {
      formInputs[i].addEventListener("input", function () {
        validateForm();
      });
    }
  
    // Event listener for college department dropdown
    var departmentSelect = document.getElementById("college-department");
    departmentSelect.addEventListener("change", function () {
      updateCourses();
      validateForm();
    });
  
    // Event listener for form submission
    var form = document.querySelector("form[manual-entry-form]");
    form.addEventListener("submit", function (event) {

  
      if (form.checkValidity()) {
        showLibraryMapContainer();
      } else {
        // Handle form validation errors if needed
      }
    });
  });
  
  function showLibraryMapContainer() {
    // Hide user-entry-container
    var userEntryContainer = document.querySelector(".user-entry-container");
    userEntryContainer.style.display = "none";
  
    // Show library-map-container
    var libraryMapContainer = document.querySelector(".library-map-container");
    libraryMapContainer.style.display = "flex";
  }
  
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
  
  // Script for Available Seat Map to switch from first floor to second floor and vice versa
  function toggleLibraryContainer(currentContainerId, nextContainerId) {
    var currentContainer = document.getElementById(currentContainerId);
    var nextContainer = document.getElementById(nextContainerId);
  
    if (currentContainer && nextContainer) {
      currentContainer.classList.add("hidden-floor-map");
      nextContainer.classList.remove("hidden-floor-map");
    }
  }