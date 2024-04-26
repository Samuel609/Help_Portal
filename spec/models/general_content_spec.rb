require 'rails_helper'

RSpec.describe GeneralContent, type: :model do
  attributes = [
    {title: %i[presence]},
    {description: %i[presence]},
    {categories: [:presence, {inclusion: [[:in_array, GeneralContent::GROUP]]}]}
  ]
  include_examples('model_shared_spec', :general_content, attributes)

end
