$(document).ready (function() {

  $('form').submit(function() {
    console.log(this);
    if (this.method === 'post') {
      var valuesToSubmit = $(this).serialize();
      $.ajax({
        type: "POST",
        url: $(this).attr('action'),
        data: valuesToSubmit,
        dataType: "JSON"
      }).success(function(json){
        $("div#response_data").html("success " + json.name);
        console.log("success", json);
      });
      return false; // prevents normal behaviour
    }
  });

  // function liveLoad(type) {
  //   var content_div = document.getElementById("top_ingredients");
  //   var xmlHttp = new XMLHttpRequest();

  //   xmlHttp.onreadystatechange = function() {
  //     if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
  //      content_div.innerHTML = xmlHttp.responseText;
  //     }
  //   };
  // xmlHttp.open("GET", '/ingredients/by/' + type, true);
  // xmlHttp.send(null);
  // }

  // function assignRadioClickHandler() {
  //   var radios = document.forms.searchForm.elements['search[food_group]'];
  //   liveLoad(radios[0].value);
  //   for (var i=0, len=radios.length; i<len; i++) {
  //     radios[i].onclick = function() {
  //         liveLoad(this.value);
  //     };
  //   }
  // }

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
    source: engine,
  });
});
