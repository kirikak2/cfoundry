FactoryBot.define do
  factory :user_provided_service_instance, :class => CFoundry::V2::UserProvidedServiceInstance do
    sequence(:guid) { |n| "user-provided-service-instance-guid-#{n}" }
    transient do
      client { FactoryBot.build(:client) }
    end

    initialize_with { new(guid, client) }
  end
end
