# Le Palais de la Cuisine - Site Vitrine

## 🏛️ À propos

Site vitrine moderne et élégant pour **Le Palais de la Cuisine**, spécialiste en cuisines haut de gamme à Feignies (59).

## ✨ Fonctionnalités

- **Design Moderne** : Interface élégante et professionnelle avec animations fluides
- **Responsive** : Optimisé pour tous les appareils (mobile, tablette, desktop)
- **Performance** : Site statique ultra-rapide, optimisé pour GitHub Pages
- **SEO-Friendly** : Structure HTML sémantique et balises meta optimisées
- **Accessibilité** : Navigation au clavier, labels ARIA, contrastes conformes
- **Animations** : Effets de scroll, compteurs animés, transitions fluides

## 📋 Sections

1. **Hero Section** - Page d'accueil impactante avec appel à l'action
2. **Statistiques** - Chiffres clés de l'entreprise avec animations
3. **À Propos** - Présentation de l'entreprise et de son expertise
4. **Showroom** - Informations pratiques et invitation à la visite
5. **Nos Cuisines** - Présentation des marques NOLTE et BALLERINA
6. **Réalisations** - Galerie filtrable des projets récents
7. **Contact** - Formulaire de contact et informations pratiques

## 🚀 Déploiement sur GitHub Pages

### Option 1 : Via les paramètres GitHub

1. Poussez le code sur votre repository GitHub
2. Allez dans **Settings** > **Pages**
3. Dans "Source", sélectionnez la branche `main` et le dossier `/ (root)`
4. Cliquez sur **Save**
5. Votre site sera disponible à l'adresse : `https://[username].github.io/[repo-name]/`

### Option 2 : Via GitHub Actions

Créez un fichier `.github/workflows/deploy.yml` :

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Deploy to GitHub Pages
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./
```

## 🛠️ Technologies Utilisées

- **HTML5** - Structure sémantique
- **CSS3** - Design moderne avec Flexbox & Grid
- **JavaScript Vanilla** - Interactions sans framework
- **Google Fonts** - Typographies Playfair Display & Inter

## 📱 Compatibilité

- ✅ Chrome / Edge (dernières versions)
- ✅ Firefox (dernières versions)
- ✅ Safari (dernières versions)
- ✅ Mobile iOS & Android

## 🎨 Personnalisation

### Couleurs

Les couleurs principales sont définies dans `style.css` :

```css
:root {
    --primary-color: #2c3e50;
    --secondary-color: #c59d5f;
    --accent-color: #e8b873;
}
```

### Images

Pour ajouter de vraies images :
1. Créez un dossier `/images`
2. Remplacez les `.image-placeholder` par des `<img>` tags
3. Optimisez vos images (WebP recommandé)

Exemple :
```html
<img src="images/cuisine-moderne.webp" alt="Cuisine moderne NOLTE" loading="lazy">
```

## 📈 Améliorations Futures

- [ ] Ajouter de vraies photos des réalisations
- [ ] Intégrer Google Maps pour la localisation
- [ ] Ajouter un système de prise de rendez-vous en ligne
- [ ] Créer une page détaillée par réalisation (galerie complète)
- [ ] Intégrer un blog avec conseils et tendances
- [ ] Ajouter des témoignages clients
- [ ] Multilingue (FR/EN)

## 📞 Contact

**Le Palais de la Cuisine**  
4 Rue des Fonds Saint Jacques  
Route de Valenciennes  
59750 FEIGNIES

## 📄 Licence

© 2025 Le Palais de la Cuisine - Tous droits réservés

---

**Note** : Ce site est un template moderne conçu pour mettre en valeur l'activité de l'entreprise. Il est prêt pour GitHub Pages et ne nécessite aucune dépendance externe.

