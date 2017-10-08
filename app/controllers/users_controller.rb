class UsersController < ApplicationController
  def index
    @user = User.all.first
    @game = @user.games.first
     user_detail = HTTParty.post(
      "http://api119521live.gateway.akana.com/api/v1/account/details",
      {
        body: {
                "OperatingCompanyIdentifier" => "815",
                "ProductCode" => "DDA",
                "PrimaryIdentifier" => "00000000000000822943114"
              }.to_json,
        headers: { "Content-Type" => "application/json", "Accept" => "application/json"}

      })
     @PrimaryIdentifier = user_detail["PrimaryIdentifier"]
     @AvailableBalanceAmount = user_detail['BasicAccountDetail']['Balances']['AvailableBalanceAmount']
     @CurrentBalanceAmount = user_detail['BasicAccountDetail']['Balances']['CurrentBalanceAmount']
     @RedactedAccountNumber = user_detail["BasicAccountDetail"]["RedactedAccountNumber"]

  end
end
