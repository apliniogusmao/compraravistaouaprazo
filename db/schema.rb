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

ActiveRecord::Schema.define(:version => 20130521142915) do

  create_table "quantidade_de_meses", :force => true do |t|
    t.decimal  "jurosmensal",     :precision => 10, :scale => 2
    t.string   "valorprestacao"
    t.string   "valorfinanciado"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "taxa_de_juros", :force => true do |t|
    t.string  "valordofinanciamento"
    t.string  "valordaparcela"
    t.integer  "quantidademeses"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
  end

  create_table "valor_financiamentos", :force => true do |t|
    t.integer  "numeromeses"
    t.decimal  "taxadejuros",      :precision => 10, :scale => 2
    t.string   "valordasparcelas"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "valor_prestacos", :force => true do |t|
    t.integer  "numeromeses"
    t.decimal  "taxajuros",        :precision => 10, :scale => 2
    t.string   "valorfinanciado"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
