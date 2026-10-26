# Hitobito Birdlife

This hitobito wagon defines the organization hierarchy with groups and roles
of Birdlife.


## Birdlife Organization Hierarchy

<!-- roles:start -->
    * BirdLife Schweiz
      * BirdLife Schweiz
      * BirdLife Schweiz Geschäftsleitung
        * Geschäftsführung: [:group_and_below_full]
        * Stv. Geschäftsführung: [:group_and_below_full]
      * BirdLife Schweiz Vorstand
        * Präsident: [:group_and_below_full]
        * Vizepräsident: [:group_and_below_full]
        * Vorstandsmitglied: [:group_and_below_full]
        * Finanzen: [:finance]
        * Leserechte: [:layer_and_below_read]
        * Schreibrechte: [:layer_and_below_full]
      * BirdLife Schweiz Generalsekretariat
        * Redaktor: [:layer_and_below_full]
        * Wissenschaftliche Mitarbeitende: [:layer_and_below_full]
        * Support: [:layer_and_below_full, :admin, :impersonation, :layer_and_below_finance]
        * Buchhaltung: [:finance]
        * Sekretariat: [:layer_and_below_full]
      * BirdLife Schweiz Projektgruppe
        * Projektleitende: [:layer_and_below_full]
        * Projektmitarbeitende: [:layer_and_below_full]
        * Projektverantwortliche: [:layer_and_below_full]
        * Mitglied: [:group_and_below_full]
      * BirdLife Schweiz Interessenten
        * Kontakt: []
    * Kantonalverband < BirdLife Schweiz
      * Kantonalverband
      * Kantonalverband Vorstand
        * Präsident: [:group_and_below_full]
        * Vizepräsident: [:group_and_below_full]
        * Vorstandsmitglied: [:group_and_below_full]
        * Finanzen: [:finance]
        * Beisitzende: [:group_and_below_full]
        * Webmaster: [:group_and_below_full]
        * Sekretariat: [:group_and_below_full]
        * Leserechte: [:layer_and_below_read]
        * Schreibrechte: [:layer_and_below_full]
      * Kantonalverband Geschäftsstelle
        * Schreibrechte: [:layer_and_below_full]
        * Geschäftsführung: [:group_and_below_full]
        * Stv. Geschäftsführung: [:group_and_below_full]
      * Kantonalverband Gruppe
        * Mitglied: []
        * NichtMitglied: []
        * ReadOnly: [:group_read]
    * Lokale Sektion < Kantonalverband
      * Lokale Sektion
      * Lokale Sektion Vorstand
        * Präsident: [:group_and_below_full]
        * Vizepräsident: [:group_and_below_full]
        * Vorstandsmitglied: [:group_and_below_full]
        * Finanzen: [:finance]
        * Beisitzende: [:group_and_below_full]
        * Webmaster: [:group_and_below_full]
        * Sekretariat: [:group_and_below_full]
        * Leserechte: [:layer_and_below_read]
        * Schreibrechte: [:layer_and_below_full]
      * Lokale Sektion Geschäftsstelle
        * Schreibrechte: [:layer_and_below_full]
        * Geschäftsführung: [:group_and_below_full]
        * Stv. Geschäftsführung: [:group_and_below_full]
      * Lokale Sektion Mitglieder
        * Einzelmitglied: []
        * Familienmitglied: []
        * NichtMitglied: []
        * ReadOnly: [:group_read]
      * Lokale Sektion Jugendgruppe
        * Einzelmitglied: []
        * Familienmitglied: []
        * NichtMitglied: []
        * ReadOnly: [:group_read]

(Output of rake app:hitobito:roles)
<!-- roles:end -->
