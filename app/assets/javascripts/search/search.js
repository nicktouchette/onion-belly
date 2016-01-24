$(document).ready (function() {
  var engine = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    prefetch: '/ingredients.json'
  });

  $('.typeahead').typeahead({
    hint: true,
    highlight: true,
    minLength: 1
  },
  {
    name: 'ingredients',
    display: 'name',
    source: engine
  }).on('typeahead:select', function (obj, datum) {
    $("#supply_id").val(datum.id);
  }).on('typeahead:autocomplete', function (obj, datum) {
    $("#supply_id").val(datum.id);
  });

  $('#new_supply').submit(function() {
    $('.typeahead').typeahead('close');
    $('input:text').val('');
  }).on('ajax:error', function (evt, xhr, status, error) {
    console.log("Ingredient Exists");
  });

});
