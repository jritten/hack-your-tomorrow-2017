// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function() {
  $("#1").on('click', function(e) {
    e.preventDefault();
    var checkingBalance = $('#checking-balance').text().split("$")[1];
    updatedChecking = checkingBalance - 1
    $('#checking-balance').text("$" + updatedChecking);
    var winnings = $("#winnings").text();
    $("#winnings").text((parseInt(winnings) + 1));
    savingsBalance = $("#savings-balance").text().split("$")[1];
    updatedSaving = savingsBalance - 1
    // ('#checking-balance').text("$" + updatedSaving);
    // savings-balance
    // token-balance
  });

  $("#5").on('click', function(e) {
    e.preventDefault();
    var checkingBalance = $('#checking-balance').text().split("$")[1];
    updatedChecking = checkingBalance - 5
    $('#checking-balance').text("$" + updatedChecking)
  });

  $("#10").on('click', function(e) {
    e.preventDefault();
    var checkingBalance = $('#checking-balance').text().split("$")[1];
    updatedChecking = checkingBalance - 10
    $('#checking-balance').text("$" + updatedChecking)
  });

  $("#50").on('click', function(e) {
    e.preventDefault();
    var checkingBalance = $('#checking-balance').text().split("$")[1];
    updatedChecking = checkingBalance - 50
    $('#checking-balance').text("$" + updatedChecking)
  });
});
//
// checking-balance
// winnings
// savings-balance
// token-balance
