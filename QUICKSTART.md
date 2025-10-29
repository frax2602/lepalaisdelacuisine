# 🚀 Quick Start

## Tester en Local (Immédiatement)

### Option 1 : Ouvrir directement le fichier
```bash
# Ouvrez index.html dans votre navigateur
open index.html
# ou double-cliquez sur index.html dans le Finder
```

### Option 2 : Serveur local Python (Recommandé)
```bash
# Python 3
python3 -m http.server 8000

# Puis ouvrez : http://localhost:8000
```

### Option 3 : Serveur local avec PHP
```bash
php -S localhost:8000

# Puis ouvrez : http://localhost:8000
```

### Option 4 : Extension VS Code
Si vous utilisez VS Code :
1. Installez l'extension "Live Server"
2. Clic droit sur `index.html` > "Open with Live Server"

---

## 📤 Déployer sur GitHub Pages (5 minutes)

### Étape 1 : Initialiser Git
```bash
cd /Users/francoisxavier.lequere/Desktop/doctolib/perso/lepalaisdelacuisine

# Initialisez git si ce n'est pas déjà fait
git init

# Ajoutez tous les fichiers
git add .

# Premier commit
git commit -m "🎉 Initial commit: Le Palais de la Cuisine"
```

### Étape 2 : Créer le Repository GitHub
1. Allez sur https://github.com/new
2. Nom : `lepalaisdelacuisine` (ou autre)
3. Public
4. Ne cochez RIEN (pas de README, pas de gitignore)
5. **Create repository**

### Étape 3 : Pousser sur GitHub
```bash
# Remplacez USERNAME par votre username GitHub
git remote add origin https://github.com/USERNAME/lepalaisdelacuisine.git
git branch -M main
git push -u origin main
```

### Étape 4 : Activer GitHub Pages
1. Sur GitHub, allez dans **Settings** de votre repo
2. Dans le menu à gauche : **Pages**
3. Source : **main branch** et **/ (root)**
4. **Save**
5. ✅ Votre site sera disponible à : `https://USERNAME.github.io/lepalaisdelacuisine/`

**⏱️ Temps d'attente** : 1-2 minutes pour que le site soit en ligne

---

## ✅ Checklist Avant Déploiement

- [x] Tous les fichiers sont présents
- [ ] Testez en local que tout fonctionne
- [ ] Vérifiez la navigation sur mobile
- [ ] Testez le formulaire de contact
- [ ] Vérifiez les liens du footer
- [ ] Remplacez les placeholders d'images (optionnel)

---

## 📝 Personnalisation Rapide

### Changer les Couleurs
Éditez `style.css` lignes 18-21 :
```css
--primary-color: #2c3e50;    /* Bleu foncé */
--secondary-color: #c59d5f;  /* Or */
--accent-color: #e8b873;     /* Or clair */
```

### Ajouter votre Téléphone
Cherchez dans `index.html` et remplacez les textes de téléphone :
```html
<p>03 27 XX XX XX</p>
```

### Ajouter votre Email
Dans la section contact, ajoutez :
```html
<p>contact@palaisdelacuisine.com</p>
```

### Ajouter de Vraies Images
1. Placez vos images dans le dossier `images/`
2. Remplacez les `<div class="image-placeholder">` par :
```html
<img src="images/votre-image.jpg" alt="Description" loading="lazy">
```

---

## 🔧 Dépannage Rapide

### Le site ne s'affiche pas en local ?
- Utilisez un serveur local (Python, PHP, ou Live Server)
- Ne double-cliquez pas sur index.html (problèmes CORS potentiels)

### Les styles ne s'appliquent pas ?
- Vérifiez que `style.css` est dans le même dossier que `index.html`
- Videz le cache du navigateur (Cmd+Shift+R sur Mac)

### GitHub Pages ne fonctionne pas ?
- Attendez 2-3 minutes après l'activation
- Vérifiez dans Settings > Pages que c'est bien activé
- Vérifiez qu'il n'y a pas d'erreurs dans l'onglet "Actions"

---

## 📞 Support

### Ressources Utiles
- 📖 [Guide de Déploiement Complet](DEPLOYMENT.md)
- 🎨 [Liste des Fonctionnalités](FEATURES.md)
- 🖼️ [Guide d'Ajout d'Images](images/README.md)

### Documentation Externe
- [GitHub Pages Docs](https://docs.github.com/pages)
- [MDN Web Docs](https://developer.mozilla.org/)
- [Can I Use](https://caniuse.com/) - Compatibilité navigateurs

---

## 🎯 Prochaines Étapes

1. ✅ Tester le site en local
2. ✅ Déployer sur GitHub Pages
3. 📸 Ajouter de vraies photos
4. 📧 Connecter le formulaire de contact (Formspree / EmailJS)
5. 📊 Ajouter Google Analytics (optionnel)
6. 🗺️ Intégrer Google Maps (optionnel)
7. 🌐 Acheter un nom de domaine personnalisé (optionnel)

---

**Temps estimé pour la mise en ligne** : ⏱️ 10 minutes

Bon courage ! 🚀

