# frozen_string_literal: true

#  Copyright (c) 2012-2026, BirdLife Schweiz/Suisse/Svizzera. This file is part of
#  hitobito_birdlife and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_birdlife.

require "spec_helper"

describe Group do
  include_examples "group types"

  it "lets the Dachverband and Kantonalverbände offer courses" do
    expect(Group.course_types).to match_array([Group::BirdLifeSchweiz, Group::Kantonalverband])
  end
end
