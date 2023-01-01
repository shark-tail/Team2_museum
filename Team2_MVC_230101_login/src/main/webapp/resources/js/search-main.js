const resetBtn = document.querySelector('.reset');

function handleCheckBoxs() {
    const checkBoxs = document.querySelectorAll('.form-check-input');
    const ckeckBoxLabels = document.querySelectorAll('form-check-label');

    // checkBoxs.forEach((cbx) => {
    //     ckeckBoxLabels.forEach((label) => {
    //         if (label.textContent !== '전체') {
    //             cbx.checked = false;
    //         }
    //     })
    // });
}

resetBtn.addEventListener('click', handleCheckBoxs);