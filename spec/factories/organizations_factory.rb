FactoryBot.define do
  factory :organization, :class => CFoundry::V2::Organization do
    sequence(:guid) { |n| "organization-guid-#{n}" }
    status "active"

    transient do
      client { FactoryBot.build(:client) }
    end

    initialize_with { new(guid, client) }
  end
end
