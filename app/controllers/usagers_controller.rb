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
