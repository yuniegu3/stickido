console.log('view-selectors.js linked');

// event listeners for the view selector buttons, to change the view option
const viewControlFrame = document.getElementById('viewControlFrame');
if (viewControlFrame) {
  console.log(true);
  viewControlFrame.addEventListener('click', (e) => {
    const { target } = e;
    if (!target.classList.contains('viewSelector')) return null;
    const viewOption = target.id;
    const container = document.getElementById('pageFrame');
    const items = document.getElementsByClassName('pageFrame');
    if (viewOption === 'columnToggle') {
      console.log('columnToggle');
      if (container.classList.contains('columnFrame')) {
        container.classList.toggle('columnFrameReverse');
      } else {
        container.classList.remove('rowFrame');
        container.classList.remove('rowFrameReverse');
        container.classList.add('columnFrame');
      }
    } else if (viewOption === 'rowToggle') {
      console.log('rowToggle');
      if (container.classList.contains('rowFrame')) {
        container.classList.toggle('rowFrameReverse');
      } else {
        container.classList.remove('columnFrame');
        container.classList.remove('columnFrameReverse');
        container.classList.add('rowFrame');
      }
    } else {
      console.log(`unexpected viewOption: ${viewOption}`);
    }
  });
}
