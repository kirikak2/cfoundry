FactoryBot.define do
  factory :app, :class => CFoundry::V2::App do
    sequence(:guid) { |n| "app-guid-#{n}" }
    transient do
      manifest { {} }
      client { FactoryBot.build(:client) }
    end

    initialize_with { new(guid, client, manifest) }
  end
end
