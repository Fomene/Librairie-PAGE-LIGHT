<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contactez-nous - PAGE LIGHT</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');
        body { font-family: 'Roboto', sans-serif; background-color: #f3f4f6; display: flex; flex-direction: column; min-height: 100vh; }
        main { flex: 1; }
        .nav-glass { background: rgba(180, 83, 9, 0.95); backdrop-filter: blur(8px); }
        
        /* Effet Zoom sur les éléments interactifs */
        .zoom-card { transition: all 0.3s ease; }
        .zoom-card:hover { transform: scale(1.02); box-shadow: 0 10px 25px rgba(0,0,0,0.1); }

        #backToTop {
            position: fixed; bottom: 30px; right: 30px;
            background-color: #b45309; color: white;
            width: 50px; height: 50px; border-radius: 50%;
            display: flex; align-items: center; justify-content: center;
            cursor: pointer; visibility: hidden; opacity: 0;
            transition: all 0.3s ease; z-index: 1000;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
        }
        #backToTop.show { visibility: visible; opacity: 1; }
    </style>
</head>
<body>

    <div id="backToTop" onclick="scrollToTop()">
        <i class="fas fa-chevron-up"></i>
    </div>

    <nav class="nav-glass sticky top-0 z-50 shadow-lg">
        <div class="max-w-7xl mx-auto px-6 flex justify-center items-center h-16">
            <div class="flex space-x-12 text-sm font-bold uppercase tracking-widest">
                <a href="acceuil.aspx" class="text-yellow-100 hover:text-white transition">Accueil</a>
                <a href="livres.aspx" class="text-yellow-100 hover:text-white transition">Nos Livres</a>
                <a href="nouveautes.aspx" class="text-yellow-100 hover:text-white transition">Nouveautés</a>
                <a href="contactez-nous.aspx" class="text-white border-b-2 border-yellow-400 pb-1">Contact</a>
            </div>
        </div>
    </nav>

    <main class="p-10 max-w-5xl mx-auto w-full">
        <div class="text-center mb-12">
            <h2 class="text-4xl font-black text-gray-800 uppercase tracking-tighter mb-2">Entrons en contact</h2>
            <div class="h-1 w-20 bg-yellow-500 mx-auto rounded-full"></div>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-10">
            <div class="bg-white p-8 rounded-2xl shadow-lg zoom-card">
                <form action="#" method="POST" class="space-y-4">
                    <div>
                        <label class="text-[10px] font-bold text-yellow-700 uppercase tracking-widest">Nom complet</label>
                        <input type="text" class="w-full p-3 border border-gray-200 rounded-lg focus:ring-2 focus:ring-yellow-500 outline-none transition" placeholder="Votre nom...">
                    </div>
                    <div>
                        <label class="text-[10px] font-bold text-yellow-700 uppercase tracking-widest">Email</label>
                        <input type="email" class="w-full p-3 border border-gray-200 rounded-lg focus:ring-2 focus:ring-yellow-500 outline-none transition" placeholder="votre@email.com">
                    </div>
                    <div>
                        <label class="text-[10px] font-bold text-yellow-700 uppercase tracking-widest">Message</label>
                        <textarea rows="4" class="w-full p-3 border border-gray-200 rounded-lg focus:ring-2 focus:ring-yellow-500 outline-none transition" placeholder="Comment pouvons-nous vous aider ?"></textarea>
                    </div>
                    <button type="submit" class="w-full bg-yellow-700 text-white font-bold py-3 rounded-lg hover:bg-yellow-600 transition shadow-md uppercase text-sm tracking-widest">
                        Envoyer le message
                    </button>
                </form>
            </div>

            <div class="space-y-6">
                <div class="bg-yellow-700 text-white p-8 rounded-2xl shadow-lg zoom-card">
                    <h3 class="text-xl font-bold mb-4">Coordonnées</h3>
                    <div class="space-y-4">
                        <p class="flex items-center text-yellow-100"><i class="fas fa-map-marker-alt w-8 text-yellow-400"></i> Université de Moncton, NB</p>
                        <p class="flex items-center text-yellow-100"><i class="fas fa-phone w-8 text-yellow-400"></i> +1 (506) 858-4000</p>
                        <p class="flex items-center text-yellow-100"><i class="fas fa-envelope w-8 text-yellow-400"></i> info@pagelight.ca</p>
                    </div>
                </div>
                
                <div class="bg-gray-300 h-64 rounded-2xl shadow-inner flex items-center justify-center zoom-card overflow-hidden relative">
                    <img src="https://storage.googleapis.com/a1aa/image/IEbnnv1SEtr5Fx6gCaFNekx10WfVybeVwM6B7NhLTdFUZztnA.jpg" class="absolute w-full h-full object-cover opacity-30 grayscale" alt="fond">
                    <div class="relative text-center">
                        <i class="fas fa-map-marked-alt text-4xl text-yellow-800 mb-2"></i>
                        <p class="font-bold text-yellow-900">Retrouvez-nous à Moncton</p>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer class="bg-yellow-700 text-white pt-12 pb-8 border-t-4 border-yellow-500">
        <div class="max-w-4xl mx-auto px-6 text-center">
            <h3 class="text-2xl font-black uppercase tracking-[0.2em] mb-4">PAGE LIGHT</h3>
            <div class="flex justify-center space-x-8 mb-8 text-yellow-100 text-sm font-medium">
                <a href="acceuil.aspx" class="hover:text-white transition">Accueil</a>
                <a href="livres.aspx" class="hover:text-white transition">Livres</a>
                <a href="contactez-nous.aspx" class="hover:text-white transition">Contact</a>
            </div>
            
            <div class="flex justify-center space-x-6 mb-8">
                <a href="#" class="bg-yellow-600 hover:bg-yellow-500 h-12 w-12 flex items-center justify-center rounded-full transition shadow-lg border border-yellow-500/30"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="bg-yellow-600 hover:bg-yellow-500 h-12 w-12 flex items-center justify-center rounded-full transition shadow-lg border border-yellow-500/30"><i class="fab fa-instagram"></i></a>
                <a href="#" class="bg-yellow-600 hover:bg-yellow-500 h-12 w-12 flex items-center justify-center rounded-full transition shadow-lg border border-yellow-500/30"><i class="fab fa-twitter"></i></a>
            </div>

            <div class="text-yellow-200/60 text-xs space-y-2">
                <p><i class="fas fa-map-marker-alt mr-2"></i> Université de Moncton, Faculté d'Ingénierie, NB</p>
                <p>&copy; 2025 - <span class="text-white font-bold tracking-widest">PAGE LIGHT</span>. Tous droits réservés.</p>
                <p class="italic mt-4 font-serif">"The light that connects readers"</p>
            </div>
        </div>
    </footer>

    <script>
        window.onscroll = function () {
            var btn = document.getElementById("backToTop");
            if (document.body.scrollTop > 300 || document.documentElement.scrollTop > 300) {
                btn.classList.add("show");
            } else {
                btn.classList.remove("show");
            }
        };
        function scrollToTop() {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        }
    </script>
</body>
</html>