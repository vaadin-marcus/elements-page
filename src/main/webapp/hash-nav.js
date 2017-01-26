var dynamicContent = document.querySelector('#dynamicDataTemplate');
dynamicContent.hash = '';
dynamicContent.selectedNavItem = '';

function hashChanged() {
  var hash = location.hash ? location.hash.substring(1) : '';
  console.log('Hash change: ' + hash);
  if (hash) {
    dynamicContent.set('selectedNavItem', hash);
  } else {
    dynamicContent.set('selectedNavItem', 'demo');
  }
}

dynamicContent.navigationChanged = function () {
  console.log('Nav changed: ' + dynamicContent.selectedNavItem);

  location.hash = dynamicContent.selectedNavItem === 'demo' ? '' : '#' + dynamicContent.selectedNavItem;
};

window.addEventListener('hashchange', hashChanged);

hashChanged();