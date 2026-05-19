###  Introduction Générale
* **Contexte :** L'importance stratégique du pilotage basé sur les données (Data-Driven HR) au sein des organisations modernes.
* **Problématique :** Dispersion des indicateurs de performance RH, processus manuels chronophages et absence d'une source unique de vérité.
* **Objectifs du Projet :** Centralisation, modélisation multiniveau et restitution visuelle interactive.
* **Annonce du Plan :** Présentation succincte des différents chapitres.

---

###  Chapitre 1 : Cadre du Projet, Gouvernance et Analyse du Besoin
* **1.1. Présentation de l'Organisme d'Accueil**
  * Structure, secteur d'activité et enjeux stratégiques de l'entreprise.
* **1.2. Étude de l'Existant et Critique**
  * Cartographie des sources de données actuelles (fichiers Excel isolés, ERP RH).
  * Identification des limites : risques d'erreurs, processus chronophages, manque de flexibilité visuelle.
  
  > 📸 **[Placer ici - Figure 1.1 : Schéma de la circulation de l'information existante]**
  > *Note : Un diagramme simple montrant comment les fichiers Excel sont partagés manuellement par mail, mettant en évidence les pertes de temps et les risques d'erreurs.*

* **1.3. Spécification des Besoins (Fonctionnels et Non-Fonctionnels)**
  * *Besoins fonctionnels :* Calcul automatisé de la masse salariale, du Headcount (effectif), du taux de turn-over, de l'absentéisme, filtrage par département/site/période.
  * *Besoins non-fonctionnels :* Sécurité des données sensibles (Confidentialité RH), performance des requêtes, ergonomie et simplicité d'utilisation des tableaux de bord.
* **1.4. Organisation de l'Équipe et Méthodologie de Travail**
  * Justification de la répartition des rôles selon les compétences métiers :
    * **Membre 1 - Le Data Engineer** (`branch: feature/etl-pipeline`) : Connexion aux sources de données, extraction et nettoyage.
    * **Membre 2 - Le Data Architect** (`branch: feature/data-modeling`) : Structuration de l'entrepôt de données (Data Warehouse) et création du schéma en étoile.
    * **Membre 3 - Le Business Analyst** (`branch: feature/kpi-logic`) : Écriture des formules de calcul (DAX) et documentation du dictionnaire de données.
    * **Membre 4 - Le Data Visualizer** (`branch: feature/dashboard-design`) : Conception de l'interface utilisateur, design graphique et Data Storytelling.
* **1.5. Planification et Suivi du Projet**
  * Méthodologie adoptée (ex: Méthode Agile Scrum adaptée à la BI).
  
  > 📸 **[Placer ici - Figure 1.2 : Diagramme de Gantt du projet par lots de travail]**
  > *Note : Une capture d'écran de votre planning de projet (généré sur GanttProject, Jira ou Excel) montrant les phases associées à chaque grand rôle.*

---

### 🔬 Chapitre 2 : Architecture Technique et Stratégie de Versioning
* **2.1. Fondements Théoriques de la Business Intelligence (BI)**
  * Le cycle de vie de la donnée : de la source brute à la prise de décision.
  * L'architecture décisionnelle classique (Entrepôt de données / Data Warehouse, Data Marts).
* **2.2. Choix de la Stack Technique et Justification**
  * Comparaison des solutions leaders (Power BI vs Tableau vs QlikSense).
  * Justification du choix de l'écosystème **Microsoft Power BI** (intégration, coût, puissance du moteur DAX).
* **2.3. Architecture Conceptuelle de la Solution**
  * Présentation du workflow modulaire retenu pour le projet (Séparation ETL / Modèle / Restitution).

  > 📸 **[Placer ici - Figure 2.1 : Flux de données et architecture modulaire des fichiers .pbix]**
  > *Note : Un schéma d'architecture technique montrant le flux des données à travers vos trois fichiers : Sources Brutes ➡️ etl_HR.pbix (Power Query) ➡️ dim_HR.pbix (Data Model) ➡️ dax_HR.pbix (Rapports & Visuels).*

* **2.4. Stratégie de Versioning et Git Workflow de l'Équipe**
  * Organisation du développement collaboratif à l'aide des branches dédiées :
    * `feature/etl-pipeline` : Développements liés à l'extraction et aux transformations lourdes.
    * `feature/data-modeling` : Modélisation des tables de faits, de dimensions et des cardinalités.
    * `feature/kpi-logic` : Implémentation des formules analytiques.
    * `feature/dashboard-design` : Conception graphique et ergonomie des interfaces.

---

### 🛠️ Chapitre 3 : Conception Fine et Réalisation Technique

* **3.1. Pipeline ETL et Préparation des Données (`etl_HR.pbix` / `feature/etl-pipeline`)**
  * *Responsable : Data Engineer*
  * Connexion aux sources brutes hétérogènes, nettoyage sous Power Query, gestion des valeurs nulles, typage et formats de date. Chargement dans la base de données de staging.
  
  > 📸 **[Placer ici - Figure 3.1 : Capture d'écran des étapes appliquées dans l'interface Power Query]**
  > *Note : Un screen du volet "Étapes appliquées" (Applied Steps) dans Power Query pour montrer un exemple de transformation propre.*

* **3.2. Modélisation Conceptuelle et Schéma en Étoile (`dim_HR.pbix` / `feature/data-modeling`)**
  * *Responsable : Data Architect*
  * Conception de l'entrepôt de données (Data Warehouse). Structuration des tables de faits (ex: *Fact_Mouvements*) et des tables de dimensions (*Dim_Employés*, *Dim_Départements*, *Dim_Calendrier*).
  * Mise en place et optimisation des relations (cardinalités `1 à N` et direction des filtres) pour maximiser les performances de requêtage.
  
  > 📸 **[Placer ici - Figure 3.2 : Vue du Schéma en Étoile finalisé et ses relations]**
  > *Note : Une capture d'écran claire de la vue "Modèle" (Model View) dans Power BI, montrant vos tables connectées avec les flèches des relations.*

* **3.3. Développement des Métriques et Logique Analytique (`dax_HR.pbix` / `feature/kpi-logic`)**
  * *Responsable : Business Analyst*
  * Traduction des besoins métiers en formules de calcul complexes (Moteur DAX).
  * Validation de la cohérence métier des chiffres et écriture des mesures de base et avancées.
  
  > 📸 **[Placer ici - Figure 3.3 : Capture d'écran d'une formule DAX avancée]**
  > *Note : Une capture d'écran de la barre de formule Power BI montrant une mesure bien structurée (ex: l'utilisation de CALCULATE, FILTER ou des fonctions de Time Intelligence pour le calcul du Turn-over).*

---

### 📊 Chapitre 4 : Déploiement, Restitution Visuelle et Discussion

* **4.1. Phase de Recette Globale et Validation de la Cohérence Métier**
  * Tests d'intégration menés conjointement par le *Data Engineer* et le *Business Analyst* pour garantir la parfaite exactitude des chiffres calculés par rapport aux données d'origine.
* **4.2. Présentation des Livrables Graphiques (`feature/dashboard-design`)**
  * *Responsable : Data Visualizer*
  * Analyse descriptive des trois axes majeurs mis en place au sein du tableau de bord interactif (3 pages distinctes) :

  #### A. Axe 1 : Suivi des Effectifs et Démographie (Page 1)
  > 📸 **[Placer ici - Figure 4.1 : Page 1 du Dashboard – Analyse du Headcount et Pyramide des âges]**
  > *Note : Capture d'écran de votre première page. Elle doit mettre en valeur des KPIs comme l'Effectif Total (Headcount), la répartition par genre (Homme/Femme), la pyramide des âges ou l'ancienneté, et la répartition par département.*
  
  * *Description & Analyse :* Analyse visuelle de la structure de l'effectif, répartition démographique (genre, âge, ancienneté) et filtres dynamiques associés (slicers).

  #### B. Axe 2 : Analyse des Mouvements et Climat Social (Page 2)
  > 📸 **[Placer ici - Figure 4.2 : Page 2 du Dashboard – Indicateurs de Turn-over et Absentéisme]**
  > *Note : Capture d'écran de votre deuxième page. Ce visuel doit montrer le suivi des entrées/sorties, le calcul du taux de rotation (Turn-over) via vos mesures DAX, et le taux d'absentéisme par motif ou par période.*
  
  * *Description & Analyse :* Interprétation des flux d'entrées/sorties, détection des anomalies de rétention par département et suivi des motifs d'absences.

  #### C. Axe 3 : Pilotage de la Masse Salariale et Rémunérations (Page 3)
  > 📸 **[Placer ici - Figure 4.3 : Page 3 du Dashboard – Masse Salariale brute et Analyse Budgétaire]**
  > *Note : Capture d'écran de votre troisième page. Elle doit regrouper l'évolution de la masse salariale brute, le salaire moyen/médian par catégorie socio-professionnelle, et l'analyse des écarts par rapport au budget RH prévisionnel.*
  
  * *Description & Analyse :* Évolution budgétaire, salaire moyen par catégorie socio-professionnelle et outils d'aide à la décision financière pour la direction.

* **4.3. Évaluation de la Valeur Ajoutée et ROI pour l'Organisation**
  * Automatisation complète des rapports (fin des tâches manuelles), fiabilité absolue (source unique de vérité via le modèle en étoile) et agilité décisionnelle pour la DRH.

---

###  Conclusion Générale et Perspectives
* **Conclusion Technique :** Synthèse de la robustesse de l'architecture modulaire et découplée mise en œuvre.
* **Bilan Collaboratif :** Retour d'expérience sur la synergie de l'équipe à 4 rôles et l'efficacité du workflow Git (branches de fonctionnalités).
* **Perspectives :** Évolutions analytiques (intégration d'analyses prédictives du risque de départ ou *Flight Risk*) et gouvernance des accès via la sécurité à la ligne (*Row-Level Security - RLS*).

---

## Annexes et Références
* **Bibliographie / Webographie :** Documentation officielle Microsoft Power BI, ouvrages de référence sur la modélisation décisionnelle (Kimball), articles de veille RH.
* **Annexes :**
  * *Annexe A :* Dictionnaire des données exhaustif (édité par le Business Analyst).
  * *Annexe B :* Recueil complet des scripts DAX utilisés.