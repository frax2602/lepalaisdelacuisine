# Images

## 📸 Dossier Images

Ce dossier est destiné à contenir toutes les images du site web.

## 📋 Organisation Recommandée

```
images/
├── hero/
│   └── hero-background.webp (image d'arrière-plan hero)
├── cuisines/
│   ├── nolte-authentique-01.webp
│   ├── nolte-contemporaine-01.webp
│   ├── nolte-moderne-01.webp
│   ├── ballerina-01.webp
│   └── ...
├── realisations/
│   ├── 2025/
│   ├── 2024/
│   └── 2023/
├── placards/
│   └── ...
├── sdb/
│   └── ...
└── showroom/
    └── ...
```

## ✅ Bonnes Pratiques

### Format des Images
- **WebP** : Format recommandé (meilleure compression)
- **JPEG** : Pour les photos (qualité 80-85%)
- **PNG** : Pour les logos et images avec transparence

### Optimisation
- **Hero images** : 1920x1080px maximum
- **Galerie** : 1200x900px maximum
- **Thumbnails** : 600x450px
- Utilisez des outils comme [Squoosh](https://squoosh.app/) ou [TinyPNG](https://tinypng.com/)

### Nommage
- Utilisez des noms descriptifs en minuscules
- Séparez les mots par des tirets (-)
- Exemples :
  - `cuisine-nolte-moderne-bois-blanc.webp`
  - `dressing-sur-mesure-chambre-parentale.webp`
  - `salle-bain-contemporaine-marbre.webp`

## 🔄 Intégration dans le HTML

### Remplacer les placeholders

**Avant (placeholder actuel) :**
```html
<div class="image-placeholder">
    <span>🏠</span>
</div>
```

**Après (avec vraie image) :**
```html
<img src="images/cuisines/nolte-moderne-01.webp" 
     alt="Cuisine moderne NOLTE avec îlot central" 
     loading="lazy">
```

### Exemple pour la Hero Section

```html
<section class="hero" style="background-image: url('images/hero/hero-background.webp');">
    <!-- Contenu hero -->
</section>
```

### Exemple pour la Galerie

```html
<div class="gallery-item" data-category="cuisine">
    <div class="gallery-image">
        <img src="images/realisations/2025/cuisine-01.webp" 
             alt="Réalisation cuisine 2025" 
             loading="lazy">
    </div>
    <div class="gallery-overlay">
        <h3>Cuisine Moderne NOLTE</h3>
        <p>2025 - Design épuré</p>
    </div>
</div>
```

## 🎨 CSS pour les Images

Ajoutez dans `style.css` si nécessaire :

```css
.gallery-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.3s ease;
}

.gallery-item:hover .gallery-image img {
    transform: scale(1.1);
}

/* Hero avec background image */
.hero {
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
}
```

## 📱 Images Responsive

Pour des images adaptatives selon la taille d'écran :

```html
<picture>
    <source media="(max-width: 640px)" srcset="images/cuisine-mobile.webp">
    <source media="(max-width: 968px)" srcset="images/cuisine-tablet.webp">
    <img src="images/cuisine-desktop.webp" alt="Cuisine moderne">
</picture>
```

## 🔍 Alt Text

Toujours inclure des descriptions pertinentes :
- ✅ Bon : `alt="Cuisine NOLTE moderne avec façades blanches et plan de travail en granit noir"`
- ❌ Mauvais : `alt="cuisine"` ou `alt="image1"`

## 📊 Checklist avant ajout

- [ ] Image optimisée (< 200KB pour les images de galerie)
- [ ] Format WebP ou JPEG
- [ ] Dimensions appropriées
- [ ] Nom de fichier descriptif
- [ ] Alt text pertinent
- [ ] Attribution `loading="lazy"` pour les images hors viewport

---

**Astuce** : Vous pouvez télécharger les images actuelles du site existant et les optimiser avant de les intégrer ici.

