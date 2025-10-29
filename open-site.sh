#!/bin/bash

# Script pour ouvrir le site en local
# Usage: ./open-site.sh

echo "🏛️  Le Palais de la Cuisine - Preview Local"
echo "=========================================="
echo ""

# Vérifier si Python3 est disponible
if command -v python3 &> /dev/null; then
    echo "✅ Python3 détecté"
    echo "🚀 Démarrage du serveur local sur http://localhost:8000"
    echo ""
    echo "Appuyez sur Ctrl+C pour arrêter le serveur"
    echo ""
    
    # Ouvrir le navigateur après 1 seconde
    (sleep 1 && open http://localhost:8000) &
    
    # Démarrer le serveur
    python3 -m http.server 8000
    
elif command -v python &> /dev/null; then
    echo "✅ Python détecté"
    echo "🚀 Démarrage du serveur local sur http://localhost:8000"
    echo ""
    echo "Appuyez sur Ctrl+C pour arrêter le serveur"
    echo ""
    
    # Ouvrir le navigateur après 1 seconde
    (sleep 1 && open http://localhost:8000) &
    
    # Démarrer le serveur
    python -m SimpleHTTPServer 8000
    
elif command -v php &> /dev/null; then
    echo "✅ PHP détecté"
    echo "🚀 Démarrage du serveur local sur http://localhost:8000"
    echo ""
    echo "Appuyez sur Ctrl+C pour arrêter le serveur"
    echo ""
    
    # Ouvrir le navigateur après 1 seconde
    (sleep 1 && open http://localhost:8000) &
    
    # Démarrer le serveur
    php -S localhost:8000
    
else
    echo "❌ Aucun serveur disponible (Python ou PHP requis)"
    echo ""
    echo "Solution alternative : double-cliquez sur index.html"
    open index.html
fi

