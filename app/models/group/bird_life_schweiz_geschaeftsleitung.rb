# frozen_string_literal: true

#  Copyright (c) 2026-2026, BirdLife Schweiz/Suisse/Svizzera. This file is part of
#  hitobito_birdlife and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_birdlife.

class Group::BirdLifeSchweizGeschaeftsleitung < ::Group
  ### ROLES

  class Geschaeftsfuehrung < ::Role
    self.permissions = [:group_and_below_full]
  end

  class StvGeschaeftsfuehrung < ::Role
    self.permissions = [:group_and_below_full]
  end

  roles Geschaeftsfuehrung, StvGeschaeftsfuehrung
end
