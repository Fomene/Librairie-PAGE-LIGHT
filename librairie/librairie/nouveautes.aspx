<%@ Page Language="VB" AutoEventWireup="false" %>

<script runat="server">
    Protected Sub btnReset_Click(sender As Object, e As EventArgs)
        txtNumLivre.Text = ""
        ddlSortDate.SelectedValue = "" 
        GridViewnouveautes.Sort("", SortDirection.Ascending) 
        GridViewnouveautes.PageIndex = 0
    End Sub

    Protected Sub ddlSortDate_SelectedIndexChanged(sender As Object, e As EventArgs)
        Dim sortExpression As String = ddlSortDate.SelectedValue
        If Not String.IsNullOrEmpty(sortExpression) Then
            Dim parts As String() = sortExpression.Split(" "c)
            Dim direction As SortDirection = SortDirection.Ascending

            If parts.Length > 1 AndAlso parts(1).ToUpper() = "DESC" Then
                direction = SortDirection.Descending
            End If

            GridViewnouveautes.Sort(parts(0), direction)
        End If
    End Sub
</script>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nouveautés - PAGE LIGHT</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');
        body { font-family: 'Roboto', sans-serif; background-color: #f3f4f6; display: flex; flex-direction: column; min-height: 100vh; }
        main { flex: 1; }
        .nav-glass { background: rgba(180, 83, 9, 0.95); backdrop-filter: blur(8px); }
        
        /* Effet Zoom sur les lignes du tableau */
        .row-zoom { transition: all 0.2s ease; }
        .row-zoom:hover { transform: scale(1.01); background-color: #fffbeb !important; box-shadow: 0 4px 15px rgba(0,0,0,0.05); z-index: 10; position: relative; }

        /* Pagination style */
        .pagination-style table { margin: auto; }
        .pagination-style td { padding: 0 5px; }
        .pagination-style a, .pagination-style span {
            display: block; padding: 5px 12px; border-radius: 4px; border: 1px solid #ddd;
            text-decoration: none; color: #78350f;
        }
        .pagination-style span { background-color: #b45309; color: white; border-color: #b45309; }

        /* Bouton Remonter */
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
                <a href="nouveautes.aspx" class="text-white border-b-2 border-yellow-400 pb-1">Nouveautés</a>
                <a href="contactez-nous.aspx" class="text-yellow-100 hover:text-white transition">Contact</a>
            </div>
        </div>
    </nav>

    <main class="p-10 max-w-7xl mx-auto w-full">
        <form id="form1" runat="server">
            
            <div class="bg-white p-6 rounded-t-xl shadow-sm flex flex-wrap justify-center gap-6 items-end border-b border-gray-200">
                <div class="flex flex-col">
                    <label class="text-[10px] font-bold text-yellow-700 uppercase mb-1 tracking-wider">N° du Livre</label>
                    <asp:TextBox ID="txtNumLivre" runat="server" CssClass="p-2 border border-gray-200 rounded-lg w-48 text-sm focus:ring-2 focus:ring-yellow-500 outline-none transition" placeholder="Ex: 101..." AutoPostBack="true"></asp:TextBox>
                </div>

                <div class="flex flex-col">
                    <label class="text-[10px] font-bold text-yellow-700 uppercase mb-1 tracking-wider">Trier par</label>
                    <asp:DropDownList ID="ddlSortDate" runat="server" CssClass="p-2 border border-gray-200 rounded-lg text-sm outline-none focus:ring-2 focus:ring-yellow-500 transition" AutoPostBack="true" OnSelectedIndexChanged="ddlSortDate_SelectedIndexChanged">
                        <asp:ListItem Value="">-- Choisir un tri --</asp:ListItem>
                        <asp:ListItem Value="dateApparution DESC">Apparition (Plus récent)</asp:ListItem>
                        <asp:ListItem Value="dateApparution ASC">Apparition (Plus ancien)</asp:ListItem>
                        <asp:ListItem Value="dateEcheance DESC">Échéance (Lointaine)</asp:ListItem>
                        <asp:ListItem Value="dateEcheance ASC">Échéance (Proche)</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <asp:LinkButton ID="btnReset" runat="server" OnClick="btnReset_Click" CssClass="bg-yellow-50 p-2.5 px-5 rounded-lg font-bold text-xs text-yellow-700 hover:bg-yellow-100 transition border border-yellow-200">
                    <i class="fas fa-sync-alt mr-2"></i> RÉINITIALISER
                </asp:LinkButton>
            </div>

            <div class="overflow-x-auto bg-white rounded-b-xl shadow-lg">
                <asp:GridView ID="GridViewnouveautes" runat="server" 
                    AutoGenerateColumns="False" 
                    DataKeyNames="NumNouveaute" 
                    DataSourceID="nouveautes"
                    AllowPaging="True" 
                    PageSize="6"
                    GridLines="None"
                    AllowSorting="True"
                    CssClass="w-full text-left border-collapse">
                    
                    <HeaderStyle CssClass="bg-gray-50 p-5 border-b text-gray-400 uppercase text-[11px] font-black tracking-widest" />
                    <RowStyle CssClass="border-b row-zoom" />
                    <PagerStyle CssClass="pagination-style py-6 bg-gray-50" />

                    <Columns>
                        <asp:BoundField DataField="NumNouveaute" HeaderText="Réf" SortExpression="NumNouveaute" ItemStyle-CssClass="p-5 text-gray-400 font-mono text-xs" />
                        <asp:BoundField DataField="NumLivre" HeaderText="N° Livre" SortExpression="NumLivre" ItemStyle-CssClass="p-5 font-bold text-yellow-700" />
                        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" ItemStyle-CssClass="p-5 text-sm text-gray-600" />
                        <asp:BoundField DataField="dateApparution" HeaderText="Apparition" SortExpression="dateApparution" DataFormatString="{0:dd/MM/yyyy}" ItemStyle-CssClass="p-5 text-sm font-bold text-green-600" />
                        <asp:BoundField DataField="dateEcheance" HeaderText="Échéance" SortExpression="dateEcheance" DataFormatString="{0:dd/MM/yyyy}" ItemStyle-CssClass="p-5 text-sm font-bold text-red-600" />
                    </Columns>
                </asp:GridView>
            </div>

            <asp:SqlDataSource runat="server" ID="nouveautes" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
                SelectCommand="SELECT * FROM [nouveautes] WHERE (CStr([NumLivre]) LIKE '%' + ? + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtNumLivre" Name="num" PropertyName="Text" Type="String" DefaultValue="%" />
                </SelectParameters>
            </asp:SqlDataSource>
        </form>
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