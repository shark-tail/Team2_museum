const manageBtn0 = document.querySelector('.colltection-list button');  //관리하기 버튼
// const delAllBtn = document.querySelector('.del-btn button:last-child')  //전체삭제 버튼


// 전체삭제 활성화 상태면 -> contain === true
// 모든 item의 체크박스를 체크함
// function selectAllItem(contain) {
//   const checkBoxs = document.querySelectorAll('.del-check input');
//   if (contain) {
//     checkBoxs.forEach((item) => item.checked = true);
//   } else {
//     checkBoxs.forEach((item) => item.checked = false);
//   }
// }

// 전체삭제 버튼 클릭 시, class 값에 'del-all' 추가
// class 값으로 'del-all' 포함하면 전체삭제 활성화 상태
// function handleDelAllBtn() {
//  const ClassNames = delAllBtn.classList;
//  ClassNames.toggle('del-all');
//  delAllBtn.innerHTML = ClassNames.contains('del-all') ? '선택 취소' : '전체 삭제';
//  selectAllItem(ClassNames.contains('del-all'));
// }


// 체크박스 초기화
function resetCheckBox() {
  const checkBoxs = document.querySelectorAll('.del-check input');
  checkBoxs.forEach((item) => item.checked = false);
}

// 관리 활성화 상태면 -> contain === true 
// 선택삭제 버튼, 전체삭제 버튼, 체크박스, 오버레이 효과 등장 -> remove('d-none')
function handleDelGroup(contain) {
  const delBtnGroup = document.querySelector('.del-btn');  //선택삭제, 전체삭제 버튼을 포함하는 <div> 태그
  const delCheckGroup = document.querySelectorAll('.del-check');  //체크박스, 오버레이 효과를 포함하는 <div> 태그

  resetCheckBox();
  
  if (contain) {
    delBtnGroup.classList.remove('d-none');
    delCheckGroup.forEach((item) => item.classList.remove('d-none'));
  } else {
    delBtnGroup.classList.add('d-none');
    delCheckGroup.forEach((item) => item.classList.add('d-none'));
  }
}

// 관리하기 버튼 클릭 시, class 값에 'manage' 추가
// class 값으로 'manage' 포함하면 관리 활성화 상태
function handleManageBtn() {
  const ClassNames = manageBtn0.classList;
  ClassNames.toggle('manage');
  manageBtn0.innerHTML = ClassNames.contains('manage') ? '돌아가기' : '관리하기';
  handleDelGroup(ClassNames.contains('manage'));
}


manageBtn0.addEventListener('click', handleManageBtn);
// delAllBtn.addEventListener('click', handleDelAllBtn);