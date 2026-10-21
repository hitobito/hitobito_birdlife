# frozen_string_literal: true

#  Copyright (c) 2012-2026, BirdLife Schweiz/Suisse/Svizzera. This file is part of
#  hitobito_birdlife and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_birdlife.


namespace :app do
  namespace :license do
    task :config do # rubocop:disable Rails/RakeEnvironment
      @licenser = Licenser.new("hitobito_birdlife",
                               "BirdLife Schweiz/Suisse/Svizzera",
                               "https://github.com/hitobito/hitobito_birdlife")
    end
  end
end
