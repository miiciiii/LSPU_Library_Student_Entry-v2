const scanner = new Html5QrcodeScanner('reader', { 
    // Scanner will be initialized in DOM inside element with id of 'reader'
    qrbox: {
        width: 500,
        height: 500,
    },  // Sets dimensions of scanning box (set relative to reader element width)
    fps: 20, // Frames per second to attempt a scan
});


scanner.render(success, error);
// Starts scanner

function success(result) {

  document.getElementById('result-input').value = result;

  // Show the popup
  document.getElementById('student-confirmation').style.display = 'flex';


  scanner.clear();
  document.getElementById('reader').remove();

}

function error(err) {
    console.error(err);
    // Prints any errors to the console
}