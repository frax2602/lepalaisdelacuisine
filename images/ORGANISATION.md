# 📸 Organisation des Images

## Structure des Dossiers

Les images ont été triées et organisées par projet selon leur style et leurs caractéristiques :

### 📁 projet-moderne-vert/
**Cuisine moderne avec façades vert anthracite**
- **Style** : Moderne élégant
- **Couleurs** : Vert anthracite, blanc, bois naturel
- **Caractéristiques** :
  - Façades en vert anthracite mat
  - Plan de travail en marbre blanc
  - Crédence en bois naturel
  - Éclairage LED intégré sous les meubles
  - Îlot central avec plan de travail en marbre
  - Poignées dorées/laiton

**Photos disponibles** : 8 images
- Vue d'ensemble
- Détails plan de travail
- Détails électroménager
- Différents angles de la cuisine

---

### 📁 projet-moderne-noir/
**Cuisine moderne noire avec verrière style atelier**
- **Style** : Moderne industriel
- **Couleurs** : Noir mat, bois naturel, marbre gris
- **Caractéristiques** :
  - Façades noires mat
  - Verrière intérieure style atelier
  - Îlot central imposant avec plan de travail en marbre gris
  - Hotte suspendue design avec habillage bois
  - Sol en carrelage noir brillant
  - Grandes fenêtres noires

**Photos disponibles** : 7 images
- Vue d'ensemble avec verrière
- Détails hotte suspendue
- Îlot central
- Différents angles de la cuisine

---

### 📁 projet-contemporain-blanc/
**Cuisine contemporaine blanche avec crédence marbre**
- **Style** : Contemporain chic
- **Couleurs** : Blanc, marbre noir/gris, bois
- **Caractéristiques** :
  - Façades blanches
  - Crédence en marbre noir avec éclairage LED doré
  - Hotte noire design
  - Électroménager inox
  - Coin repas intégré
  - Ouverture sur jardin

**Photos disponibles** : 9 images
- Vue d'ensemble
- Coin repas
- Détails plan de travail
- Différents angles de la cuisine

---

## 📊 Résumé

| Projet | Style | Photos | Utilisé dans |
|--------|-------|--------|--------------|
| Moderne Vert | Élégant moderne | 8 | Galerie + Section À Propos + Hero |
| Moderne Noir | Industriel moderne | 7 | Galerie + Hero background |
| Contemporain Blanc | Contemporain chic | 9 | Galerie |
| **TOTAL** | | **24** | |

---

## 🎨 Utilisation dans le Site

### Page d'Accueil (Hero)
- **Image de fond** : `projet-moderne-noir/vue-ensemble-01.jpg`
- Affichée avec opacité 15% pour ne pas distraire du contenu

### Section À Propos
- **Image** : `projet-moderne-vert/vue-ensemble-02.jpg`
- Montre une belle réalisation pour illustrer l'expertise

### Galerie Réalisations
- **12 photos affichées** (les plus représentatives de chaque projet)
- Toutes catégorisées comme "cuisine"
- Filtres fonctionnels mais toutes les images actuelles sont des cuisines

---

## 📝 Nomenclature des Fichiers

Les images ont été renommées selon cette logique :

```
[type]-[descriptif]-[numéro].jpg
```

**Exemples** :
- `vue-ensemble-01.jpg` : Vue générale de la cuisine
- `detail-plan-travail-01.jpg` : Gros plan sur le plan de travail
- `ilot-central-01.jpg` : Focus sur l'îlot central
- `detail-hotte-01.jpg` : Détail de la hotte
- `vue-coin-repas-01.jpg` : Vue du coin repas

---

## ✨ Points Forts des Réalisations

### Ce qui ressort :
1. **Qualité des finitions** : Attention aux détails visible sur chaque photo
2. **Éclairage LED** : Présent dans tous les projets pour une ambiance moderne
3. **Matériaux premium** : Marbre, bois naturel, façades mat
4. **Design sur mesure** : Chaque cuisine est unique et adaptée
5. **Espaces optimisés** : Rangements intelligents et ergonomie

### Éléments récurrents :
- Îlots centraux avec coin repas
- Éclairage LED sous les meubles
- Plans de travail en pierre naturelle
- Crédences design (bois, marbre)
- Électroménager encastré haut de gamme
- Poignées dorées/laiton pour le moderne
- Grandes fenêtres pour la luminosité

---

## 🔄 Ajout de Nouvelles Images

Pour ajouter de nouvelles réalisations :

1. **Créer un nouveau dossier** : `images/projet-[nom-descriptif]/`
2. **Renommer les images** selon la nomenclature
3. **Ajouter dans le HTML** (`index.html`) :
```html
<div class="gallery-item" data-category="cuisine">
    <div class="gallery-image">
        <img src="images/projet-[nom]/[image].jpg" alt="Description" loading="lazy">
    </div>
    <div class="gallery-overlay">
        <h3>Titre du Projet</h3>
        <p>2025 - Description courte</p>
    </div>
</div>
```

4. **Tester** le site en local avant de déployer

---

## 📷 Qualité des Photos

### Recommandations :
- **Format** : JPG (WebP en option pour meilleure compression)
- **Résolution optimale** : 1200x900px pour la galerie
- **Poids** : < 200KB par image (optimisées)
- **Ratio** : 4:3 (pour cohérence avec la galerie)

### Optimisation :
Les images actuelles sont de bonne qualité mais pourraient être optimisées :
- Utiliser des outils comme [TinyPNG](https://tinypng.com/)
- Convertir en WebP pour réduire le poids de 30-50%
- Générer des versions responsive (mobile/tablet/desktop)

---

**Dernière mise à jour** : 29 Octobre 2025  
**Images triées** : 24 photos professionnelles  
**Projets documentés** : 3 réalisations complètes

