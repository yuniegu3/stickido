// console.log('view-selectors.js linked');
//
// // event listeners for the view selector buttons, to change the view option
// const viewControlFrame = document.getElementById('viewControlFrame');
// if (viewControlFrame) {
//   viewControlFrame.addEventListener('click', (e) => {
//     const { target } = e;
//     // if the event target is not one of the viewSelector buttons, break out of the function:
//     if (!target.classList.contains('viewSelector')) return null;
//     const viewOption = target.id;
//     // pageFrame is the div surrounding the stickiFrame and listFrame
//     const container = document.getElementById('pageFrame');
//     // change classes of the flex-contaner and the flex-items to switch from column to row
//     // or toggle between colum and column-reverse/ row and row-reverse
//     if (viewOption === 'columnToggle') {
//       if (container.classList.contains('columnFrame')) {
//         container.classList.toggle('columnFrameReverse');
//       } else {
//         container.classList.remove('rowFrame');
//         container.classList.remove('rowFrameReverse');
//         container.classList.add('columnFrame');
//       }
//     } else if (viewOption === 'rowToggle') {
//       if (container.classList.contains('rowFrame')) {
//         container.classList.toggle('rowFrameReverse');
//       } else {
//         container.classList.remove('columnFrame');
//         container.classList.remove('columnFrameReverse');
//         container.classList.add('rowFrame');
//       }
//     } else {
//       console.log(`unexpected viewOption: ${viewOption}`);
//     }
//   });
// }
