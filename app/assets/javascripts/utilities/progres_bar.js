document.addEventListener('turbolinksload', function() {
  var control = document.querySelector('.progress-bar')
  if (control) {
    setProgressBar()
  }
})

function setProgressBar() {
  let progressBar = document.getElementById('progress-bar')

  if (progressBar) {
    let questionNumber = progressBar.dataset.questionNumber;
    let questionsCount = progressBar.dataset.questionsCount;
    let width = 100 * questionNumber/questionsCount;

    let progressLine = document.getElementById('progress-bar-line');
    progressLine.style.width = width + '%';
    progressLine.innerText = Math.round(width) + '%';
  }
}
