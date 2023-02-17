/**
 * @file
 * A JavaScript file for the theme.
 *
 */
(function ($, Drupal, window, document, undefined) {
  
  jQuery(document).ready(function(){ window.onscroll = function() { if (window.XMLHttpRequest) { if (document.documentElement.scrollTop > 100 || self.pageYOffset > 100) { jQuery('body').addClass('chrismon-header-fixed'); } else if (document.documentElement.scrollTop < 100 || self.pageYOffset < 100) { jQuery('body').removeClass('chrismon-header-fixed'); } } } });

})(jQuery, Drupal, this, this.document);


function chrismonToggleComments(section) {
  jQuery('#comments .l-toggle-comments-' +section).toggleClass('active');
  jQuery('#comments .comments-section.comments-' +section).toggleClass('active');
}



function chrismonToggleMenuMain(section) {
  jQuery('.m-main .main-link').removeClass('active')
  jQuery('.m-main .m-main-content .chrismon-toggle-layer').removeClass('active');;
  if (section != undefined) {
    jQuery('.m-main .main-link.l-' +section).addClass('active');
    jQuery('.m-main .m-main-content-' +section).addClass('active');
  }
}
;
