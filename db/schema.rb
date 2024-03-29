# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111010163917) do

  create_table "usagers", :force => true do |t|
    t.string   "sexe"
    t.string   "tranche_age"
    t.string   "niv_formation"
    t.string   "situation"
    t.string   "ville"
    t.string   "domaine"
    t.string   "service"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ville_id"
  end

  create_table "villes", :force => true do |t|
    t.string   "code_postal"
    t.string   "nom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
