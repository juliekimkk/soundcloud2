$('input.music-search').on('input', function() {
    var searchVal = this.value.toUpperCase();
    var matchFound = false;
    if(searchVal) {
        $('.music-row .music-article').each(function() {
            $(this).hide();
            var articleTitle = $(this).attr('data-article-title').toUpperCase();
            if (articleTitle.indexOf(searchVal) > -1) {
                $(this).show();
                matchFound = true;
                $('.no-search-results-found').hide(500);
            }
        });
    } else if ($('input.music-search').val() == "") {
        $('.music-row .music-article').show();
        $('.no-search-results-found').hide(500);
    }
    if (!matchFound) {
        if ( $('input.music-search').val().length >= 1 ){
              $('.no-search-results-found').show(500);
        }
    }
});
jQuery(document).ready(function(){
  jQuery("#music-list-table").colResizable({
      liveDrag:true,
      gripInnerHtml:"<div class='grip'></div>", 
      draggingClass:"dragging" 
  });
});
jQuery('.music-article .article-play').click(function(){
  if (jQuery(this).find('.fa-play').length > 0){
    var itemNum = jQuery(this).attr('data-article-track-link-id');
    var trackLinkID = jQuery(this).attr('data-article-track-link-id');
    var trackLinkIDType = jQuery(this).attr('data-article-track-link-id-type');

    if (trackLinkIDType == 'soundcloud'){
      console.log('soundcloud !');
      var soundCloudIFrame = '<iframe class="responsive-iframe-16-9" width="100%" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/'+trackLinkID+'&amp;auto_play=true&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe>';
      jQuery('.music-player-col').html(soundCloudIFrame);
    } else if (trackLinkIDType == 'youtube') {
      var youTubeIFrame = '<iframe class="responsive-iframe-16-9" width="100%" src="https://www.youtube.com/embed/'+trackLinkID+'?rel=0&amp;showinfo=0?autoplay=1" frameborder="0" allowfullscreen></iframe>';
      jQuery('.music-player-col').html(youTubeIFrame);
    } else {

    }
    if (jQuery('.music-player-col').hasClass('has-music-player')){
      jQuery('.music-article .article-play').html('<i class="fa fa-play orange-clr"></i>');
    } else {
      jQuery('.music-player-col').addClass('has-music-player');     
    }
    jQuery(this).html('<i class="fa fa-stop orange-clr"></i>');
  } else {
    jQuery('.music-player-col').empty();
    jQuery('.music-player-col').removeClass('has-music-player');
    jQuery(this).html('<i class="fa fa-play orange-clr"></i>');
  }
});
/*
* Hide All Music List Table Control Table Header Angle Icons
============================== */
function hideAllMusicListTableControlTableHeaderAngleIcons(){
  jQuery('.music-list-table-controls th .fa-angle-down, .music-list-table-controls th .fa-angle-up').hide();
}
/*
* Alphabetical Sorting
============================== */
function sortAlpha(asc, data){
    var galleryArticleListingTR = jQuery('.music-article-listing-wrapper');
    var allGalleryArticlesTR = galleryArticleListingTR.children('tr.music-article');
    
    if (asc){
        allGalleryArticlesTR.sort(function(a,b){
          if (data == 'title') {
              var aa = a.getAttribute('data-article-title'),
                  bb = b.getAttribute('data-article-title');
            } else if (data == 'artist') {
              console.log('sorting artist asc');
              var aa = a.getAttribute('data-article-artist'),
                  bb = b.getAttribute('data-article-artist');
            } else if (data == 'genre') {
              var aa = a.getAttribute('data-article-genre'),
                  bb = b.getAttribute('data-article-genre');
            }
            return aa > bb ? 1: -1;
        });
    } else {
        allGalleryArticlesTR.sort(function(a,b){
          if (data == 'title') {
              var aa = a.getAttribute('data-article-title'),
                  bb = b.getAttribute('data-article-title');
            } else if (data == 'artist') {
              console.log('sorting artist desc');
              var aa = a.getAttribute('data-article-artist'),
                  bb = b.getAttribute('data-article-artist');
            } else if (data == 'genre') {
              var aa = a.getAttribute('data-article-genre'),
                  bb = b.getAttribute('data-article-genre');
            }
            return aa < bb ? 1: -1;
        });
    }

    allGalleryArticlesTR.detach().appendTo(galleryArticleListingTR);
}
jQuery('.music-list-table-controls .th-title').click(function(){
  hideAllMusicListTableControlTableHeaderAngleIcons();
    if (jQuery(this).hasClass('alpha-asc')){
        sortAlpha(true, 'title');
        jQuery(this).html('<h4>Title <i class="fa fa-angle-down"></i></h4>');
        jQuery(this).removeClass('alpha-asc').addClass('alpha-dec');
    } else {
        sortAlpha(false, 'title');
        jQuery(this).html('<h4>Title <i class="fa fa-angle-up"></i></h4>');
        jQuery(this).removeClass('alpha-dec').addClass('alpha-asc');
    }
});
jQuery('.music-list-table-controls .th-artist').click(function(){
  hideAllMusicListTableControlTableHeaderAngleIcons();
    if (jQuery(this).hasClass('alpha-asc')){
        sortAlpha(true, 'artist');
        jQuery(this).html('<h4><i class="fa fa-user"></i> Artist <i class="fa fa-angle-down"></i></h4>');
        jQuery(this).removeClass('alpha-asc').addClass('alpha-dec');
    } else {
        sortAlpha(false, 'artist');
        jQuery(this).html('<h4><i class="fa fa-user"></i> Artist <i class="fa fa-angle-up"></i></h4>');
        jQuery(this).removeClass('alpha-dec').addClass('alpha-asc');
    }
});
jQuery('.music-list-table-controls .th-genre').click(function(){
  hideAllMusicListTableControlTableHeaderAngleIcons();
  // jQuery(this).find('.fa').show(500);
    if (jQuery(this).hasClass('alpha-asc')){
        sortAlpha(true, 'genre');
        jQuery(this).html('<h4><i class="fa fa-tag"></i> Genre <i class="fa fa-angle-down"></i></h4>');
        jQuery(this).removeClass('alpha-asc').addClass('alpha-dec');
    } else {
        sortAlpha(false, 'genre');
        jQuery(this).html('<h4><i class="fa fa-tag"></i> Genre <i class="fa fa-angle-up"></i></h4>');
        jQuery(this).removeClass('alpha-dec').addClass('alpha-asc');
    }
});