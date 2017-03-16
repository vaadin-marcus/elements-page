var dynamicContent = document.querySelector('#dynamicDataTemplate');
dynamicContent.hash = '';
dynamicContent.selectedNavItem = '';

function hashChanged() {
  var hash = location.hash ? location.hash.substring(1) : '';
  if (hash) {
    dynamicContent.set('selectedNavItem', hash);
  } else {
    dynamicContent.set('selectedNavItem', 'demo');
  }

  if (hash === 'docs' && importDocsElement) {
    importDocsElement();
  }
}

dynamicContent.navigationChanged = function () {
  location.hash = '#' + dynamicContent.selectedNavItem;
};

window.addEventListener('hashchange', hashChanged);

window.addEventListener('WebComponentsReady', function() {
  hashChanged();
});

function setIframeResize() {
  iFrameResize({}, '.element-demo-iframe');
}
