<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscriptions - Librairie LIGHT PAGE</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');
        body {
            font-family: 'Roboto', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-100">
  <!-- Barre de navigation -->
  <nav class="bg-yellow-700">
    <div class="flex justify-center items-center py-4 px-6">
      <ul class="flex space-x-6">
        <li><a class="text-white hover:text-gray-300" href="acceuil.aspx">Accueil</a></li>
        <li><a class="text-white hover:text-gray-300" href="livres.aspx">Livres</a></li>
        <li><a class="text-white hover:text-gray-300" href="nouveautes.aspx">Nouveautés</a></li>
        <li><a class="text-white hover:text-gray-300" href="contactez-nous.aspx">Contactez-nous</a></li>
      </ul>
      <div class="flex items-center space-x-4 ml-6">
        <!-- Recherche -->
        <div class="relative">
          <input class="p-2 rounded border border-gray-300" placeholder="Rechercher..." type="text"/>
          <button class="absolute right-0 top-0 mt-2 mr-2 text-gray-500">
            <i class="fas fa-search"></i>
          </button>
        </div>
        <!-- Sélection de langue -->
        <div class="relative">
          <select class="p-2 rounded border border-gray-300 bg-white text-gray-700">
            <option value="fr">FR</option>
            <option value="en">EN</option>
          </select>
        </div>
        <!-- Panier -->
        <a class="text-white hover:text-gray-300" href="commande.aspx">
          <i class="fas fa-shopping-cart"></i>
        </a>
        <!-- Login/Inscription -->
        <div class="flex items-center space-x-4">
          <a class="text-white hover:text-gray-300" href="login.aspx">
            <i class="fas fa-user"></i> Login
          </a>
          <a class="text-white hover:text-gray-300" href="inscription.aspx">
            <i class="fas fa-user-plus"></i> Inscription
          </a>
        </div>
      </div>
    </div>
  </nav>
    <header class="bg-yellow-600 text-white text-center py-6">
        <h1 class="text-4xl font-bold">Inscription</h1>
    </header>
    <main class="flex justify-center items-center min-h-screen">
        <div class="bg-white p-8 rounded shadow-md w-full max-w-md">
            <h2 class="text-2xl font-bold mb-6 text-center">Formulaire d'inscription</h2>
            <form action="#" method="post" class="space-y-4">
                <div>
                    <label for="nom" class="block text-gray-700">Nom :</label>
                    <input type="text" id="nom" name="nom" required class="w-full p-2 border border-gray-300 rounded mt-1">
                </div>
                <div>
                    <label for="email" class="block text-gray-700">Email :</label>
                    <input type="email" id="email" name="email" required class="w-full p-2 border border-gray-300 rounded mt-1">
                </div>
                <div>
                    <label for="mdp" class="block text-gray-700">Mot de passe :</label>
                    <input type="password" id="mdp" name="mdp" required class="w-full p-2 border border-gray-300 rounded mt-1">
                </div>
                <button type="submit" class="w-full bg-yellow-600 text-white p-2 rounded hover:bg-yellow-700 transition duration-200">S'inscrire</button>
            </form>
            <div class="flex justify-center items-center mt-4">
                <a href="login.aspx" class="text-sm text-yellow-600 hover:underline">Déjà inscrit? Connectez-vous</a>
            </div>
        </div>
    </main>
</body>
</html>