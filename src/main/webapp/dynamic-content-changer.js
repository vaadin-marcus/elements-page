var dataTemplate = document.querySelector('#dynamicDataTemplate');
var hash = location.hash.replace('#', '');
  
if (['demo', 'docs', 'releases'].indexOf(hash) > -1) {
  dataTemplate.selectedNavItem = hash;
} else {
  dataTemplate.selectedNavItem = 'demo';
}
  
dataTemplate.navigationChanged = function(e) {
  location.hash = dataTemplate.selectedNavItem;
};