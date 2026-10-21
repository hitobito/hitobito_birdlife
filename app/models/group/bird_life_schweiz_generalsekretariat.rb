# frozen_string_literal: true

#  Copyright (c) 2026-2026, BirdLife Schweiz/Suisse/Svizzera. This file is part of
#  hitobito_birdlife and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_birdlife.

class Group::BirdLifeSchweizGeneralsekretariat < ::Group
  ### ROLES

  class Redaktor < ::Role
    self.permissions = [:layer_and_below_full]
  end

  class WissenschaftlicheMitarbeitende < ::Role
    self.permissions = [:layer_and_below_full]
  end

  class Support < ::Role
    self.permissions = [:layer_and_below_full, :admin, :impersonation, :layer_and_below_finance]
  end

  class Buchhaltung < ::Role
    self.permissions = [:finance]
  end

  class Sekretariat < ::Role
    self.permissions = [:layer_and_below_full]
  end

  roles Redaktor, WissenschaftlicheMitarbeitende, Support, Buchhaltung, Sekretariat
end
