# frozen_string_literal: true

#  Copyright (c) 2026, BirdLife Schweiz/Suisse/Svizzera. This file is part of
#  hitobito_birdlife and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_birdlife.

namespace :birdlife do
  namespace :passes do
    desc "Create or update the Mitgliederausweis on the root group for all member roles"
    task setup: :environment do
      root = Group.root
      images = HitobitoBirdlife::Wagon.root.join("app", "assets", "images", "passes")

      definition = PassDefinition.find_or_initialize_by(owner: root)
      definition.attributes = {
        template_key: "default",
        name: "Mitgliederausweis",
        background_color: "#ffffff"
      }
      {
        logo_icon: "logo_icon.png",
        logo_banner: "logo_banner.png",
        logo_secondary: "logo_secondary.png"
      }.each do |logo, filename|
        definition.public_send(:"#{logo}_#{I18n.default_locale}")
          .attach(io: images.join(filename).open, filename:, content_type: "image/png")
      end
      definition.save!

      grant = PassGrant.find_or_initialize_by(pass_definition: definition, grantor: root)
      grant.role_types = [Group::KantonalverbandGruppe::Mitglied,
        Group::LokaleSektionGruppe::Mitglied]
        .map(&:sti_name)
      grant.save!

      eligible_people = Passes::Subscribers.new(definition).people.select(:id)
      definition.passes.where.not(person_id: eligible_people)
        .find_each { |pass| Passes::PassUpdater.recompute_state!(pass) }

      puts "PassDefinition ##{definition.id} granted to #{grant.role_types.size} role types"
    end
  end
end
