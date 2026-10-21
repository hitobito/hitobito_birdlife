# frozen_string_literal: true

#  Copyright (c) 2026-2026, BirdLife Schweiz/Suisse/Svizzera. This file is part of
#  hitobito_birdlife and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_birdlife.

class Group::BirdLifeSchweiz < ::Group
  self.layer = true

  children(
    BirdLifeSchweizGeschaeftsleitung,
    BirdLifeSchweizVorstand,
    BirdLifeSchweizGeneralsekretariat,
    BirdLifeSchweizProjektgruppe,
    BirdLifeSchweizInteressenten,
    Kantonalverband
  )

  self.default_children = [
    BirdLifeSchweizGeschaeftsleitung,
    BirdLifeSchweizVorstand,
    BirdLifeSchweizGeneralsekretariat,
    BirdLifeSchweizProjektgruppe,
    BirdLifeSchweizInteressenten
  ]
end
