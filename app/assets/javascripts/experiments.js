
jQuery(function() {
  var labs;
  labs = $('#experiment_lab_id').html();
  console.log(labs);
  return $('#experiment_sem_id').change(function() {
    var sem, options;
    sem = $('#experiment_sem_id :selected').text();
    options = $(labs).filter("optgroup[label=" + sem + "]").html();
    console.log(options);
    if (options) {
      return $('#experiment_lab_id').html(options);
    } else {
      return $('#experiment_lab_id').empty();
    }
  });
});
