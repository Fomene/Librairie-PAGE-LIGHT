# 📚 Librairie PAGE LIGHT

**PAGE LIGHT** est une application web de gestion de librairie moderne développée en **ASP.NET Web Forms**. Le site offre une interface fluide et interactive pour consulter le catalogue de livres, découvrir les nouveautés et contacter l'administration.



## 🚀 Fonctionnalités

### 📖 Gestion du Catalogue (Page Livres)
- **Affichage dynamique** : Liste complète des livres extraite d'une base de données.
- **Filtres intelligents** : Recherche par titre en temps réel, filtrage par catégorie (Informatique, Affaires, Technologie) et par état (Neuf/Occasion).
- **Expérience Utilisateur** : 
    - Effet de **zoom interactif** au survol des lignes du tableau.
    - **Infobulles (Tooltips)** : La description complète du livre s'affiche élégamment lorsque vous survolez son titre.
    - Système de pagination pour une navigation fluide.

### 🆕 Nouveautés
- Présentation des derniers arrivages.
- Système de **tri dynamique** par date d'apparition ou par date d'échéance.

### ✉️ Contact & Ergonomie
- Formulaire de contact moderne et réactif.
- Navigation **"Glassmorphism"** centrée et fixée en haut de page.
- Bouton **"Back to Top"** pour faciliter la navigation sur les longues listes.
- Footer complet avec liens sociaux et informations de localisation.

## 🛠️ Technologies Utilisées

Le projet combine des technologies robustes pour le backend et des outils modernes pour le frontend :

| Composant | Technologie |
| :--- | :--- |
| **Serveur & Logique** | ASP.NET Web Forms (VB.NET) |
| **Base de données** | Microsoft Access / SQL Server |
| **Design / UI** | Tailwind CSS (Framework Utility-First) |
| **Icônes** | Font Awesome 5 |
| **Polices** | Google Fonts (Roboto) |
| **Scripts** | JavaScript (Scroll management, Tooltips) |

## 📂 Structure du Projet

- `livres.aspx` : Page principale du catalogue avec filtres.
- `nouveautes.aspx` : Gestion des nouveaux livres et tris.
- `contactez-nous.aspx` : Interface de contact.
- `App_Data/` : Contient la base de données du projet.
- `Web.config` : Configuration du serveur et chaînes de connexion.

## ⚙️ Installation Locale

1. Clonez le dépôt :
   ```bash
   git clone [https://github.com/Fomene/Librairie-PAGE-LIGHT.git](https://github.com/Fomene/Librairie-PAGE-LIGHT.git)
