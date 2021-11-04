
const displayNftTab = () => {
  const btn = document.getElementById('created-nft-button')

  btn.addEventListener('click', () => {
    const gridnft = document.getElementById('created-nft-grid')
    const gridlist = document.getElementById('created-list-grid')

      gridnft.style.display = 'grid';
      gridlist.style.display = 'none'
  })
};

const displayListTab = () => {
  const btn = document.getElementById('created-list-button')

  btn.addEventListener('click', () => {
    const gridnft = document.getElementById('created-nft-grid')
    const gridlist = document.getElementById('created-list-grid')

    gridnft.style.display = 'none';
    gridlist.style.display = 'grid'
  })
};

export { displayNftTab, displayListTab };
