console.log('view-selectors.js linked');

// event listeners for the view selector buttons, to change the view option
const viewControlFrame = document.getElementByid('viewControlFrame');
if (viewControlFrame) {
  viewControlFrame.addEventListener('click', (e) => {
    let viewOption;
    const { target } = e;
    if (target.classList.contains('viewSelector')) {
      viewOption = target.id;
      console.log('viewOption', viewOption);
    }
  });
}
