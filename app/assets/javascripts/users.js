// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function() {
  $("#1").on('click', function(e) {
    e.preventDefault();
    transfer(1);
  });

  $("#5").on('click', function(e) {
    e.preventDefault();
    transfer(5);
  });

  $("#10").on('click', function(e) {
    e.preventDefault();
    transfer(10);
  });

  $("#50").on('click', function(e) {
    e.preventDefault();
    transfer(50);
  });
});

var transfer = function(money) {
  var checkingBalance = $('#checking-balance').text().split("$")[1];
  var updatedChecking = checkingBalance - money
  $('#checking-balance').text("$" + updatedChecking);

  var winnings = $("#winnings").text();
  $("#winnings").text((parseInt(winnings) + money));

  var savingsBalance = $("#savings-balance").text().split("$")[1];
  $('#savings-balance').text("$" + (parseInt(savingsBalance) + money));

  var tokenBalance = $("#token-balance").text().split("$")[1];
  $('#token-balance').text("$" + (parseInt(tokenBalance) + money));
}
