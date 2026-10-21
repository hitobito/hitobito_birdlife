# frozen_string_literal: true

namespace :app do
  namespace :license do
    task :config do # rubocop:disable Rails/RakeEnvironment
      @licenser = Licenser.new("hitobito_birdlife",
                               "BirdLife Schweiz/Suisse/Svizzera",
                               "https://github.com/hitobito/hitobito_birdlife")
    end
  end
end
