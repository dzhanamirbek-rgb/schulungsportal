# Team Markus · Schulungsportal

Schulungsportal mit Bereichen, Lektionen (YouTube/Vimeo oder reine Audio-Lektionen mit MP3), Kurzfragen, Führungskraft-Bereichen und Team-Übersicht.

- `index.html` – das komplette Portal (eine Datei, wird bei Netlify veröffentlicht). Stand: Live-Version vom 22.10.2026 plus MP3-Upload/Audio-Player.
- `mitarbeiter-loeschen.sql` – Datenbank-Funktion für „Mitarbeiter löschen“ (bereits in Supabase eingespielt).

Datenbank: Supabase-Projekt „EFS Schulungsportal“. Veröffentlichung: Netlify, Site `team-markus-schulung`.

## MP3 / Telefonleitfäden
- Speicher: privater Bucket `telefonleitfaeden` (nur audio/mpeg, max. 50 MB, Schreiben nur Admins).
- Eintrag pro Datei in `lesson_files`; Sichtbarkeit über `can_see_file` (Führungskraft-Bereiche bleiben geschützt).
- Admin: „Video bearbeiten“ → Karte „Audio (MP3)“. Ohne Video-Link wird die Lektion als reine Audio-Lektion mit Player angezeigt; Fortschritt zählt wie beim Video.
