<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <title>Librairie PAGE LIGHT - Accueil</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');
        body { font-family: 'Roboto', sans-serif; background-color: #f3f4f6; display: flex; flex-direction: column; min-height: 100vh; }
        main { flex: 1; }
        .nav-glass { background: rgba(180, 83, 9, 0.95); backdrop-filter: blur(8px); }
        .category-card { transition: all 0.3s ease; }
        .category-card:hover { transform: translateY(-5px); filter: brightness(1.1); }

        /* Styles pour le Diaporama */
        .swiper { width: 100%; padding-top: 20px; padding-bottom: 50px; }
        .swiper-slide {
            background: #fff; border-radius: 15px; padding: 20px;
            display: flex; flex-direction: column; align-items: center;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }
        .swiper-slide:hover { transform: scale(1.02); }
        .swiper-slide img { height: 250px; object-fit: contain; border-radius: 8px; margin-bottom: 15px; }
        .swiper-button-next, .swiper-button-prev { color: #b45309; }
        .swiper-pagination-bullet-active { background: #b45309; }

        /* STYLE DU BOUTON REMONTER */
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
        #backToTop:hover { background-color: #d97706; transform: scale(1.1); }
    </style>
</head>
<body>

    <div id="backToTop" onclick="scrollToTop()">
        <i class="fas fa-chevron-up"></i>
    </div>

    <header class="bg-yellow-600 text-white text-center py-6">
        <div class="flex flex-col items-center">
            <div class="relative inline-block mt-4">
                <img alt="Logo" class="w-64 h-64 object-cover rounded-full shadow-2xl" src="https://storage.googleapis.com/a1aa/image/IEbnnv1SEtr5Fx6gCaFNekx10WfVybeVwM6B7NhLTdFUZztnA.jpg"/>
                <div class="absolute inset-0 flex items-center justify-center">
                    <div class="text-white text-4xl font-bold">PAGE LIGHT</div>
                </div>
            </div>
            <p class="mt-4 text-xl font-light uppercase tracking-widest">The light that connects readers</p>
        </div>
    </header>

    <nav class="nav-glass sticky top-0 z-50 shadow-lg">
        <div class="max-w-7xl mx-auto px-6 flex justify-between items-center h-16">
            <div class="flex space-x-8">
                <a href="acceuil.aspx" class="text-white font-bold border-b-2 border-yellow-400">Accueil</a>
                <a href="livres.aspx" class="text-yellow-100 hover:text-white transition">Livres</a>
                <a href="nouveautes.aspx" class="text-yellow-100 hover:text-white transition">Nouveautés</a>
                <a href="contactez-nous.aspx" class="text-yellow-100 hover:text-white transition">Contact</a>
            </div>
            <div class="flex items-center space-x-6">
                <form action="livres.aspx" method="get" class="relative m-0">
                    <input name="search" class="bg-yellow-800/50 border border-yellow-500 text-white text-sm rounded-full py-1.5 px-4 pl-10 focus:outline-none focus:ring-2 focus:ring-yellow-400 w-48 transition-all focus:w-64" placeholder="Recherche titre..."/>
                    <button type="submit" class="absolute left-3 top-2.5 text-yellow-300"><i class="fas fa-search"></i></button>
                </form>
            </div>
        </div>
    </nav>

    <main class="p-10 max-w-7xl mx-auto">
        <div class="bg-white p-8 rounded-xl shadow-sm mb-12">
            <h2 class="text-3xl font-bold text-center mb-10 text-gray-800">Parcourir par Catégorie</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <a href="livres.aspx?cat=Informatique" class="category-card text-center block">
                    <img src="https://storage.googleapis.com/a1aa/image/A21osf6vBcVVIKetxy9O3AhZ15GmJfpZ7eD1bfX7njSZ6FteE.jpg" class="w-32 h-32 mx-auto rounded-full object-cover shadow-lg border-4 border-yellow-500"/>
                    <h3 class="mt-4 font-bold text-lg text-gray-700">Informatique</h3>
                </a>
                <a href="livres.aspx?cat=Affaires" class="category-card text-center block">
                    <img src="https://storage.googleapis.com/a1aa/image/CQn8VbYenpzWZy8zQ32Cw6h7Hem8duDcjVVj2YUlkR1Wvo1TA.jpg" class="w-32 h-32 mx-auto rounded-full object-cover shadow-lg border-4 border-yellow-500"/>
                    <h3 class="mt-4 font-bold text-lg text-gray-700">Affaires</h3>
                </a>
                <a href="livres.aspx?cat=Technologie" class="category-card text-center block">
                    <img src="https://storage.googleapis.com/a1aa/image/GoYe8xn4McyfLke85fIgXhqXbhw9hStZo2YpsKy9ZdZe5FteE.jpg" class="w-32 h-32 mx-auto rounded-full object-cover shadow-lg border-4 border-yellow-500"/>
                    <h3 class="mt-4 font-bold text-lg text-gray-700">Technologie</h3>
                </a>
            </div>
        </div>

        <div class="mt-12 text-center">
            <h2 class="text-3xl font-bold mb-6 text-gray-800 border-b-2 border-yellow-500 inline-block pb-2">Dernières Nouveautés</h2>
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="https://storage.googleapis.com/a1aa/image/3sy7cc1FDoKnFdMW8lTmM5KJIVkPdk7KxCD4Dt7LZovzLa9E.jpg" alt="Livre 1">
                        <h4 class="font-bold text-gray-800">Et sans cesse dire oui</h4>
                        <p class="text-yellow-700 font-bold mt-2 text-xl">12,00 €</p>
                    </div>
                    <div class="swiper-slide">
                        <img src="https://storage.googleapis.com/a1aa/image/JHR2zISP2Z5zApMqoaGVp6ucXcjW8hSWRNKrlRulfjdlX06JA.jpg" alt="Livre 2">
                        <h4 class="font-bold text-gray-800">Histoire de...</h4>
                        <p class="text-yellow-700 font-bold mt-2 text-xl">15,00 €</p>
                    </div>
                    <div class="swiper-slide">
                        <img src="https://storage.googleapis.com/a1aa/image/DMZve4V2pMzIViZxyKVzJRjtHHRwc4UdxfeUCfcu03WW9iWPB.jpg" alt="Livre 3">
                        <h4 class="font-bold text-gray-800">Le Savoir Illimité</h4>
                        <p class="text-yellow-700 font-bold mt-2 text-xl">19,90 €</p>
                    </div>
                    <div class="swiper-slide">
                        <img src="https://storage.googleapis.com/a1aa/image/Yl3Df1mof1sVREozGjDI8Pf7QSVauUeqjzg4kDpvKF1L9iWPB.jpg" alt="Livre 4">
                        <h4 class="font-bold text-gray-800">L'Art du Code</h4>
                        <p class="text-yellow-700 font-bold mt-2 text-xl">24,50 €</p>
                    </div>
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination"></div>
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

    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

    <script>
        // Initialisation Swiper (Diaporama)
        var swiper = new Swiper(".mySwiper", {
            slidesPerView: 1,
            spaceBetween: 30,
            loop: true,
            autoplay: { delay: 3500, disableOnInteraction: false },
            pagination: { el: ".swiper-pagination", clickable: true },
            navigation: { nextEl: ".swiper-button-next", prevEl: ".swiper-button-prev" },
            breakpoints: {
                640: { slidesPerView: 2 },
                1024: { slidesPerView: 3 }
            },
        });

        // Gestion du Bouton Remonter
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