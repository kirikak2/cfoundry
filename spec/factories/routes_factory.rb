FactoryBot.define do
  factory :route, :class => CFoundry::V2::Route do
    sequence(:guid) { |n| "route-guid-#{n}" }
    transient do
      client { FactoryBot.build(:client) }
    end

    initialize_with { new(guid, client) }
  end
end
