# frozen_string_literal: true

#  Copyright (c) 2012-2026, BirdLife Schweiz/Suisse/Svizzera. This file is part of
#  hitobito_birdlife and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_birdlife.

module Birdlife::Group
  extend ActiveSupport::Concern

  included do
    # Define additional used attributes
    # self.used_attributes += [:website, :bank_account, :description]
    # self.superior_attributes = [:bank_account]

    root_types Group::BirdLifeSchweiz
  end
end
