# 🚀 Guide de Déploiement GitHub Pages

## Prérequis

- Un compte GitHub
- Git installé sur votre machine
- Les fichiers du site dans ce dossier

## 📝 Étape 1 : Créer le Repository GitHub

1. Allez sur [GitHub](https://github.com)
2. Cliquez sur le bouton **"New"** (nouveau repository)
3. Nommez votre repository (ex: `lepalaisdelacuisine`)
4. Laissez-le **Public** pour utiliser GitHub Pages gratuitement
5. Ne cochez **pas** "Initialize with README" (nous en avons déjà un)
6. Cliquez sur **"Create repository"**

## 📤 Étape 2 : Pousser le Code sur GitHub

Dans votre terminal, depuis ce dossier :

```bash
# Si ce n'est pas déjà fait, initialisez git
git init

# Ajoutez tous les fichiers
git add .

# Créez votre premier commit
git commit -m "Initial commit: Site vitrine Le Palais de la Cuisine"

# Ajoutez le remote GitHub (remplacez USERNAME et REPO)
git remote add origin https://github.com/USERNAME/REPO.git

# Poussez sur GitHub
git branch -M main
git push -u origin main
```

## 🌐 Étape 3 : Activer GitHub Pages

### Méthode Simple (Recommandée)

1. Allez sur votre repository GitHub
2. Cliquez sur **Settings** (Paramètres)
3. Dans le menu de gauche, cliquez sur **Pages**
4. Sous "Source", sélectionnez :
   - **Branch** : `main`
   - **Folder** : `/ (root)`
5. Cliquez sur **Save**
6. ✅ Attendez quelques secondes, votre site sera accessible à :
   ```
   https://USERNAME.github.io/REPO/
   ```

### Méthode Avancée (GitHub Actions)

Créez le fichier `.github/workflows/deploy.yml` :

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      
      - name: Setup Pages
        uses: actions/configure-pages@v4
      
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: '.'
      
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

Puis dans Settings > Pages :
- Source : **GitHub Actions**

## 🔧 Étape 4 : Configuration Custom Domain (Optionnel)

Si vous avez un nom de domaine personnalisé :

1. Dans Settings > Pages, ajoutez votre domaine dans "Custom domain"
2. Créez un fichier `CNAME` à la racine avec votre domaine :
   ```
   www.palaisdelacuisine.com
   ```
3. Configurez les DNS chez votre registrar :
   - Type **CNAME**, Nom **www**, Valeur **USERNAME.github.io**
   - Ou Type **A** pour le domaine apex :
     ```
     185.199.108.153
     185.199.109.153
     185.199.110.153
     185.199.111.153
     ```

## ✅ Vérifications Post-Déploiement

### Checklist

- [ ] Le site s'affiche correctement sur desktop
- [ ] Le site est responsive (mobile/tablette)
- [ ] Tous les liens fonctionnent
- [ ] Le formulaire de contact fonctionne (à connecter à un service)
- [ ] Les animations se déclenchent au scroll
- [ ] Pas d'erreurs dans la console du navigateur

### Tests de Performance

Testez votre site avec :
- [PageSpeed Insights](https://pagespeed.web.dev/)
- [GTmetrix](https://gtmetrix.com/)
- [WebPageTest](https://www.webpagetest.org/)

**Objectif** : Score > 90/100 sur mobile et desktop

## 🔄 Mises à Jour

Pour mettre à jour le site après modifications :

```bash
# Ajoutez vos modifications
git add .

# Créez un commit
git commit -m "Description de vos modifications"

# Poussez sur GitHub
git push

# GitHub Pages se mettra à jour automatiquement (1-2 minutes)
```

## 🐛 Dépannage

### Le site ne s'affiche pas

1. Vérifiez que GitHub Pages est activé dans Settings > Pages
2. Attendez 2-3 minutes après l'activation
3. Vérifiez qu'il n'y a pas d'erreurs dans l'onglet Actions

### Les styles ne s'appliquent pas

1. Vérifiez que `style.css` est bien dans le même dossier que `index.html`
2. Ouvrez la console du navigateur (F12) pour voir les erreurs
3. Videz le cache du navigateur (Ctrl+Shift+R ou Cmd+Shift+R)

### Les liens internes ne fonctionnent pas

Si votre site n'est pas à la racine (ex: `/repo-name/`), ajoutez dans le `<head>` :
```html
<base href="/REPO-NAME/">
```

## 📊 Analytics (Optionnel)

Pour suivre les visites, ajoutez Google Analytics :

```html
<!-- Avant </head> -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

## 🔐 HTTPS

GitHub Pages active automatiquement HTTPS. Pour forcer HTTPS :
1. Settings > Pages
2. Cochez **"Enforce HTTPS"**

## 📧 Formulaire de Contact

Le formulaire actuel est en JavaScript uniquement. Pour le rendre fonctionnel :

### Option 1 : Formspree (Gratuit - Simple)
```html
<form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
  <!-- vos champs -->
</form>
```

### Option 2 : Netlify Forms (Si migration vers Netlify)
```html
<form name="contact" method="POST" data-netlify="true">
  <!-- vos champs -->
</form>
```

### Option 3 : EmailJS (Recommandé)
1. Créez un compte sur [EmailJS](https://www.emailjs.com/)
2. Suivez leur documentation pour l'intégration JavaScript

## 🎉 Félicitations !

Votre site est maintenant en ligne ! 

**URL de votre site** : https://USERNAME.github.io/REPO/

---

## 📞 Support

Pour toute question :
- [Documentation GitHub Pages](https://docs.github.com/pages)
- [Community Forum](https://github.community/)

**Dernière mise à jour** : 29 Octobre 2025

