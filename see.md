
✦ J'ai mis à jour tous les chapitres du rapport pour remplacer les encadrés temporaires par les
  commandes LaTeX \includegraphics finales.

  Les fichiers d'images sont maintenant référencés selon une nomenclature standardisée dans le
  dossier figures/. Pour que votre rapport soit complet, il vous suffit de placer vos captures
  d'écran dans le dossier figures avec les noms suivants :

  ┌────────┬────────────────────────────────────┬──────────────────────────────────┐
  │ Figure │ Description                        │ Nom du fichier à utiliser        │
  ├────────┼────────────────────────────────────┼──────────────────────────────────┤
  │ 1.1    │ Schéma circulation information     │ fig1_1_existant.png              │
  │ 1.2    │ Diagramme de Gantt                 │ fig1_2_gantt.png                 │
  │ 2.1    │ Architecture modulaire .pbix       │ fig2_1_architecture.png          │
  │ 3.1    │ Étapes Power Query                 │ fig3_1_powerquery.png            │
  │ 3.2    │ Schéma en Étoile                   │ modele_etoile.png (Déjà présent) │
  │ 3.3    │ Formule DAX avancée                │ fig3_3_dax.png                   │
  │ 4.1    │ Dashboard Page 1 (Effectifs)       │ fig4_1_dashboard_p1.png          │
  │ 4.2    │ Dashboard Page 2 (Attrition)       │ fig4_2_dashboard_p2.png          │
  │ 4.3    │ Dashboard Page 3 (Masse Salariale) │ fig4_3_dashboard_p3.png          │
  └────────┴────────────────────────────────────┴──────────────────────────────────┘

  ✅ Modifications effectuées :
   * Chapitres 1, 2, 3 et 4 mis à jour avec les liens vers les images.
   * Images standardisées : Utilisation de width=0.8\textwidth pour une insertion propre et
     centrée.
   * Continuité : Les labels (\label{fig:...}) ont été conservés pour vos renvois dans le texte.

  Votre rapport est maintenant structurellement fini et prêt pour la compilation finale !
