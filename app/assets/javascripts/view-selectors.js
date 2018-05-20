console.log('view-selectors.js linked');

// event listeners for the view selector buttons, to change the view option
const viewControlFrame = document.getElementById('viewControlFrame');
if (viewControlFrame) {
  console.log(true);
  viewControlFrame.addEventListener('click', (e) => {
    const { target } = e;
    if (!target.classList.contains('viewSelector')) return null;
    const viewOption = target.id;
    console.log(viewOption);
    const pageFrame = document.getElementById('pageFrame');
    const stickiFrame = document.getElementById('stickiFrame');
    const listFrame = document.getElementById('listFrame');
    if (viewOption === 'rowToggle') {
      pageFrame.classList.add('columnFrame');
      pageFrame.classList.remove('rowFrame');
    } else if (viewOption === 'columnToggle') {
      pageFrame.classList.add('rowFrame');
      pageFrame.classList.remove('columnFrame');
      stickiFrame.classList.add('rowItem');
      listFrame.classList.add('rowItem');
    }
    // and always do this:
    stickiFrame.classList.toggle('first');
    stickiFrame.classList.toggle('second');
    listFrame.classList.toggle('first');
    listFrame.classList.toggle('second');
  });
}
