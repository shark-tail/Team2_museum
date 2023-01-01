const boardSeachTextContent = document.querySelector("#board-search-ttl");

const dropdownText = document.querySelectorAll("#board-search-item");

dropdownText.forEach((e)=>{
  e.addEventListener("click",()=>{
  (boardSeachTextContent.innerHTML=e.innerHTML);
    
  }
  )
})