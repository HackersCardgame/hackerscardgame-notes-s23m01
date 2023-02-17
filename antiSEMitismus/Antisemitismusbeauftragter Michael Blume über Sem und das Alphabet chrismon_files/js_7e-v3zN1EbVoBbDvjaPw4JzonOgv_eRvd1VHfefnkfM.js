(function ($, Drupal, window, document, undefined) {
  $(window).load(function(){
    $('.druport-image-wrapper img, .druport-wrapper-image img').each(function(){
      if (!this.complete
        || typeof this.naturalWidth == 'undefined'
        || this.naturalWidth == 0) {
        $(this).parents('.druport-image-wrapper, .druport-wrapper-image').addClass('druport-image-not-loaded');
        }
    });
  });
})(jQuery, Drupal, this, this.document);
;
function druportAssetFieldRemove(elem) {
  jQuery(elem).parents('.druport-asset-field-wrapper').first().addClass("daid-empty").removeClass("daid-selected").find('input, textarea, select').val('');
}

function druportAssetFieldSelect(elem, url_base) {
  let base_id = jQuery(elem).parents('.druport-asset-field-wrapper').first().attr('id');
  let url = url_base + '&src_add=' + base_id;
  window.open(url);
}
;
(function ($, Drupal, window, document, undefined) {
  jQuery(document).ready(function(){ if (document.referrer.indexOf('www.evangelisch.de') != -1 || document.referrer.indexOf('/evde/services/rblock/') != -1 || window.location.href.indexOf('www.evangelisch.de') != -1) { $('.field-meta-top').prepend('<div class="field-link field-link-evde-back"><a href="//www.evangelisch.de">Zurück zu evangelisch.de</a></div>');}});
})(jQuery, Drupal, this, this.document);
;
