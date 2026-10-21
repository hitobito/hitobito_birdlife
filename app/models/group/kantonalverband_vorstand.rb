# frozen_string_literal: true

#  Copyright (c) 2026-2026, BirdLife Schweiz/Suisse/Svizzera. This file is part of
#  hitobito_birdlife and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_birdlife.

class Group::KantonalverbandVorstand < ::Group
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

  class Beisitzende < ::Role
    self.permissions = [:group_and_below_full]
  end

  class Webmaster < ::Role
    self.permissions = [:group_and_below_full]
  end

  class Sekretariat < ::Role
    self.permissions = [:group_and_below_full]
  end

  class Leserechte < ::Role
    self.permissions = [:layer_and_below_read]
  end

  class Schreibrechte < ::Role
    self.permissions = [:layer_and_below_full]
  end

  roles Praesident, Vizepraesident, Vorstandsmitglied, Finanzen, Beisitzende, Webmaster,
    Sekretariat, Leserechte, Schreibrechte
end
