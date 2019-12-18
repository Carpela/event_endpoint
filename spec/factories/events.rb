FactoryBot.define do

  factory :event do
    
    tealium_event = ["grant_full_consent","decline_consent","grant_partial_consent"].sample
     
    case tealium_event
    when "grant_full_consent" 
      consent_categories = "analytics, affiliates, display_ads, search, email, personalization, social, big_data, misc, cookiematch, cdp, mobile, engagement, monitoring, crm"
    when "grant_partial_consent"
      arr = ["analytics","affiliates","personalisation"]
      arr2 = []
      3.times do 
        arr2 << arr.sample
      end
      consent_categories = arr2.uniq
    when "decline_consent"
      consent_categories = ""
    end


    #title { Faker::Lorem.word }
    #created_by { Faker::Number.number(10) }
    time {Faker::Time.backward(days: 14, period: :all)}
    referrer {Faker::Internet.url}
    payload { {tealium_account:"hsbc",tealium_profile:"main",tealium_event:tealium_event,
        consent_categories: consent_categories,
        policy: "gdpr",
        visitor_id: rand(36**40).to_s(36)
      }
    }

  end
  
end