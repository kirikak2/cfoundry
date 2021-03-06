FactoryBot.define do
  factory :space, :class => CFoundry::V2::Space do
    sequence(:guid) { |n| "space-guid-#{n}" }
    transient do
      client { FactoryBot.build(:client) }
    end

    initialize_with { new(guid, client) }
  end
end
