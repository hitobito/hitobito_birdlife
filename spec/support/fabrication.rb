# frozen_string_literal: true

#  Copyright (c) 2012-2026, BirdLife Schweiz/Suisse/Svizzera. This file is part of
#  hitobito_birdlife and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_birdlife.

Fabrication.configure do |config|
  config.fabricator_path = ["spec/fabricators",
    "../hitobito_birdlife/spec/fabricators"]
  config.path_prefix = Rails.root
end
