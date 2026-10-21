# frozen_string_literal: true

#  Copyright (c) 2026-2026, BirdLife Schweiz/Suisse/Svizzera. This file is part of
#  hitobito_birdlife and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_birdlife.

class Group::BirdLifeSchweizVorstand < ::Group
  ### ROLES

  class Praesident < ::Role
    self.permissions = [:group_and_below_full]
  end

  class Vizepraesident < ::Role
    self.permissions = [:group_and_below_full]
  end

  class Vorstandsmitglied < ::Role
    self.permissions = [:group_and_below_full]
  end

  class Finanzen < ::Role
    self.permissions = [:finance]
  end

  class Leserechte < ::Role
    self.permissions = [:layer_and_below_read]
  end

  class Schreibrechte < ::Role
    self.permissions = [:layer_and_below_full]
  end

  roles Praesident, Vizepraesident, Vorstandsmitglied, Finanzen, Leserechte, Schreibrechte
end
