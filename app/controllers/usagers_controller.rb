class UsagersController < ApplicationController
  # GET /usagers
  # GET /usagers.xml
  def index
    @usagers = Usager.all
    @usager_total = Usager.count
    @datetime = Time.now
	@datetime1 = @datetime.to_s(:rfc822)
	@nbre_usagers = Usager.count
	@moy_usagers = @nbre_usagers.to_f/20
	@date = Date.today
	
	@Jourmaxusager = Usager.maximum(:created_at)
	@Jourminusager = Usager.minimum(:created_at)
	@mois_en_cours = @date.month
	
	@Nbre_femme =  Usager.count(:conditions=>'sexe="femele"')
	@Nbre_homme =  Usager.count(:conditions=>'sexe="male"')
	@pourcentage_femme1 = (@Nbre_femme.to_f/@usager_total.to_f)*100
	@pourcentage_femme = @pourcentage_femme1.round(2).to_s + " %"
	@pourcentage_homme1 = (@Nbre_homme.to_f/@usager_total.to_f)*100
	@pourcentage_homme = @pourcentage_homme1.round(2).to_s + " %"
	
	
	@nbre_moinsde15ans = Usager.count(:conditions=>'tranche_age="mdequinze"')
	@p_moinsde15ans1 = (@nbre_moinsde15ans.to_f/@usager_total.to_f)*100
	@p_moinsde15ans = @p_moinsde15ans1.round(2).to_s + " %"
	
	@nbre_de15a20ans = Usager.count(:conditions=>'tranche_age="quinzeavingt"')
	@p_de15a20ans1 = (@nbre_de15a20ans.to_f/@usager_total.to_f)*100
	@p_de15a20ans = @p_de15a20ans1.round(2).to_s + " %"
	
	@nbre_de21a28ans= Usager.count(:conditions=>'tranche_age="vunavhuit"')
	@p_de21a28ans1 = (@nbre_de21a28ans.to_f/@usager_total.to_f)*100
	@p_de21a28ans = @p_de21a28ans1.round(2).to_s + " %"
	
	@nbre_plusde28ans = Usager.count(:conditions=>'tranche_age="plusdevhuit"')
	@p_plusde28ans1 = (@nbre_plusde28ans.to_f/@usager_total.to_f)*100
	@p_plusde28ans = @p_plusde28ans1.round(2).to_s + " %"
	
	
	@Nbre_Collegien = Usager.count(:conditions=>'situation="college"')
	@p_Collegien1 = (@Nbre_Collegien.to_f/@usager_total.to_f)*100
	@p_Collegien = @p_Collegien1.round(1).to_s + " %"
    
    @Nbre_Lyceens = Usager.count(:conditions=>'situation="lyceen"')
    @p_Lyceens1 = (@Nbre_Lyceens.to_f/@usager_total.to_f)*100
    @p_Lyceens = @p_Lyceens1.round(1).to_s + " %"
    
    @Nbre_Etudiant = Usager.count(:conditions=>'situation="etudiant"')
    @p_Etudiant1 = (@Nbre_Etudiant.to_f/@usager_total.to_f)*100
    @p_Etudiant = @p_Etudiant1.round(1).to_s + " %"
    
    @Nbre_Stagiaire_form_prof = Usager.count(:conditions=>'situation="stagforpro"')
    @p_Stagiaire_form_prof1 = (@Nbre_Stagiaire_form_prof.to_f/@usager_total.to_f)*100
    @p_Stagiaire_form_prof = @p_Stagiaire_form_prof1.round(1).to_s + " %"
    
    @Nbre_Dem_Emploi = Usager.count(:conditions=>'situation="dem_emploi"')
    @p_Dem_Emploi1 = (@Nbre_Dem_Emploi.to_f/@usager_total.to_f)*100
    @p_Dem_Emploi = @p_Dem_Emploi1.round(1).to_s + " %"
    
    @Nbre_Salarie = Usager.count(:conditions=>'situation="salarie"')
    @p_Salarie1 = (@Nbre_Salarie.to_f/@usager_total.to_f)*100
    @p_Salarie = @p_Salarie1.round(1).to_s + " %"
    
    @Nbre_Beneficiaire_RSA = Usager.count(:conditions=>'situation="ben_rsa"')
    @p_Beneficiaire_RSA1  = (@Nbre_Beneficiaire_RSA.to_f/@usager_total.to_f)*100
    @p_Beneficiaire_RSA = @p_Beneficiaire_RSA1.round(1).to_s + " %"
    
    @Nbre_Sans_activite = Usager.count(:conditions=>'situation="sans_activite"')
    @p_Sans_activite1  = (@Nbre_Sans_activite.to_f/@usager_total.to_f)*100
    @p_Sans_activite = @p_Sans_activite1.round(1).to_s + " %"
    
    
    @Nbre_enseignement = Usager.count(:conditions=>'domaine="enseignement"')
	@p_enseignement1 = (@Nbre_enseignement.to_f/@usager_total.to_f)*100
	@p_enseignement = @p_enseignement1.round(1).to_s + " %"
    
    @Nbre_metiers = Usager.count(:conditions=>'domaine="metiers"')
    @p_metiers1 = (@Nbre_metiers.to_f/@usager_total.to_f)*100
    @p_metiers = @p_metiers1.round(1).to_s + " %"
    
    @Nbre_emplois = Usager.count(:conditions=>'domaine="emplois"')
    @p_emplois1 = (@Nbre_emplois.to_f/@usager_total.to_f)*100
    @p_emplois = @p_emplois1.round(1).to_s + " %"
    
    @Nbre_formation = Usager.count(:conditions=>'domaine="formation"')
    @p_formation1 = (@Nbre_formation.to_f/@usager_total.to_f)*100
    @p_formation = @p_formation1.round(1).to_s + " %"
    
    @Nbre_vie_pratique  = Usager.count(:conditions=>'domaine="vie_pratique"')
    @p_vie_pratique1 = (@Nbre_vie_pratique.to_f/@usager_total.to_f)*100
    @p_vie_pratique = @p_vie_pratique1.round(1).to_s + " %"
    
    @Nbre_loisirs = Usager.count(:conditions=>'domaine="loisirs"')
    @p_loisirs1 = (@Nbre_loisirs.to_f/@usager_total.to_f)*100
    @p_loisirs = @p_loisirs1.round(1).to_s + " %"
    
    @Nbre_mobilite = Usager.count(:conditions=>'domaine="mobilite"')
    @p_mobilite1  = (@Nbre_mobilite.to_f/@usager_total.to_f)*100
    @p_mobilite = @p_mobilite1.round(1).to_s + " %"
    
    
    @Nbre_insertion = Usager.count(:conditions=>'service="insertion"')
	@p_insertion1 = (@Nbre_insertion.to_f/@usager_total.to_f)*100
	@p_insertion = @p_insertion1.round(1).to_s + " %"
    
    @Nbre_logement = Usager.count(:conditions=>'service="logement"')
    @p_logement1 = (@Nbre_logement.to_f/@usager_total.to_f)*100
    @p_logement = @p_logement1.round(1).to_s + " %"
    
    @Nbre_mobilite = Usager.count(:conditions=>'service="mobilite"')
    @p_mobilite1 = (@Nbre_mobilite.to_f/@usager_total.to_f)*100
    @p_mobilite = @p_mobilite1.round(1).to_s + " %"
    
    @Nbre_annonce = Usager.count(:conditions=>'service="annonce"')
    @p_annonce1 = (@Nbre_annonce.to_f/@usager_total.to_f)*100
    @p_annonce = @p_annonce1.round(1).to_s + " %"
    
    @Nbre_bureautique  = Usager.count(:conditions=>'service="bureautique"')
    @p_bureautique1 = (@Nbre_bureautique.to_f/@usager_total.to_f)*100
    @p_bureautique = @p_bureautique1.round(1).to_s + " %"
    
    @Nbre_multimedia = Usager.count(:conditions=>'service="multimedia"')
    @p_multimedia1 = (@Nbre_multimedia.to_f/@usager_total.to_f)*100
    @p_multimedia = @p_multimedia1.round(1).to_s + " %"
    
    @Nbre_cvlm = Usager.count(:conditions=>'service="cvlm"')
    @p_cvlm1  = (@Nbre_cvlm.to_f/@usager_total.to_f)*100
    @p_cvlm = @p_cvlm1.round(1).to_s + " %"
    
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @usagers }
    end
  end

  # GET /usagers/1
  # GET /usagers/1.xml
  def show
    @usager = Usager.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @usager }
    end
  end

  # GET /usagers/new
  # GET /usagers/new.xml
  def new
    @usager = Usager.new
    @villes = Ville.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @usager }
    end
  end

  # GET /usagers/1/edit
  def edit
    @usager = Usager.find(params[:id])
  end

  # POST /usagers
  # POST /usagers.xml
  def create
    @usager = Usager.new(params[:usager])

    respond_to do |format|
      if @usager.save
        format.html { redirect_to(@usager, :notice => 'Usager was successfully created.') }
        format.xml  { render :xml => @usager, :status => :created, :location => @usager }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @usager.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /usagers/1
  # PUT /usagers/1.xml
  def update
    @usager = Usager.find(params[:id])
    @villes = Ville.all

    respond_to do |format|
      if @usager.update_attributes(params[:usager])
        format.html { redirect_to(@usager, :notice => 'Usager was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @usager.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usagers/1
  # DELETE /usagers/1.xml
  def destroy
    @usager = Usager.find(params[:id])
    @usager.destroy

    respond_to do |format|
      format.html { redirect_to(usagers_url) }
      format.xml  { head :ok }
    end
  end
end
