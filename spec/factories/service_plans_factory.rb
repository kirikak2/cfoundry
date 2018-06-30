FactoryBot.define do
  factory :service_plan, :class => CFoundry::V2::ServicePlan do
    sequence(:guid) { |n| "service-plan-guid-#{n}" }
    transient do
      client { FactoryBot.build(:client) }
    end

    initialize_with { new(guid, client) }
  end
end
