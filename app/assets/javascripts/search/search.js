$(document).ready (function() {

  $('form').submit(function() {
    if (this.method === 'post') {
      var valuesToSubmit = $(this).serialize();
      $.ajax({
        type: "POST",
        url: $(this).attr('action'),
        data: valuesToSubmit,
        dataType: "JSON"
      }).success(function(json){
        $("div#response_data").html("success " + json.name);
        $('input:text').val('');
        getSupplies();
      });
      return false; // prevents normal behaviour
    }
  });

  function getSupplies() {
    var content_div = document.getElementById("my_supplies");
    var xmlHttp = new XMLHttpRequest();

    xmlHttp.onreadystatechange = function() {
      if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
       content_div.innerHTML = xmlHttp.responseText;
      }
    };
  xmlHttp.open("GET", '/supplies', true);
  xmlHttp.send(null);
  }
  getSupplies();
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
