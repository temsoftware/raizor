# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 17) do

  create_table "before_deals", :force => true do |t|
    t.datetime "date",         :null => false
    t.integer  "plot_number",  :null => false
    t.datetime "plot_date",    :null => false
    t.float    "plot_first",   :null => false
    t.float    "plot_amount",  :null => false
    t.float    "iof_amount",   :null => false
    t.string   "debtor_email"
    t.integer  "debtor_id"
    t.integer  "debt_id"
    t.integer  "type_deal_id"
  end

  add_index "before_deals", ["debt_id"], :name => "fk_before_deals_debts"
  add_index "before_deals", ["debtor_id"], :name => "fk_before_deals_debtors"
  add_index "before_deals", ["type_deal_id"], :name => "fk_before_deals_type_deals"

  create_table "branches", :force => true do |t|
    t.string   "name",          :null => false
    t.string   "phone"
    t.string   "fax"
    t.string   "manager"
    t.string   "manager_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deals", :force => true do |t|
    t.datetime "date",           :null => false
    t.integer  "debt_count",     :null => false
    t.integer  "plot_count",     :null => false
    t.integer  "plot_number",    :null => false
    t.datetime "plot_date",      :null => false
    t.float    "plot_amount",    :null => false
    t.string   "description"
    t.datetime "payment_date"
    t.float    "payment_amount"
    t.float    "iof_amount",     :null => false
    t.integer  "debtor_id"
    t.integer  "debt_id"
    t.integer  "type_deal_id"
  end

  add_index "deals", ["debt_id"], :name => "fk_deals_debts"
  add_index "deals", ["debtor_id"], :name => "fk_deals_debtors"
  add_index "deals", ["type_deal_id"], :name => "fk_deals_type_deals"

  create_table "debt_logs", :force => true do |t|
    t.integer  "status_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "debt_logs", ["status_id"], :name => "fk_debt_logs_status"

  create_table "debtor_logs", :force => true do |t|
    t.string   "description", :null => false
    t.integer  "debtor_id"
    t.integer  "status_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "debtor_logs", ["debtor_id"], :name => "fk_debtor_logs_debtors"
  add_index "debtor_logs", ["status_id"], :name => "fk_debtor_logs_status"
  add_index "debtor_logs", ["user_id"], :name => "fk_debt_logs_users"

  create_table "debtors", :force => true do |t|
    t.string   "name",                                   :null => false
    t.string   "controller",                             :null => false
    t.boolean  "postal",      :default => false
    t.string   "debtor_type",                            :null => false
    t.string   "cpf_cnpj",                               :null => false
    t.string   "address",     :default => "--- :null\n"
    t.string   "cep",         :default => "--- :null\n"
    t.string   "city",        :default => "--- :null\n"
    t.string   "state",       :default => "--- :null\n"
    t.string   "phone",       :default => "--- :null\n"
    t.string   "spouse",      :default => "--- :null\n"
    t.string   "father",      :default => "--- :null\n"
    t.string   "mother",      :default => "--- :null\n"
    t.integer  "user_id",     :default => 1
    t.integer  "status_id",   :default => 200
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "debtors", ["status_id"], :name => "fk_debtors_status"
  add_index "debtors", ["user_id"], :name => "fk_debtors_users"

  create_table "debts", :force => true do |t|
    t.string   "account",                        :null => false
    t.string   "contract",                       :null => false
    t.datetime "date",                           :null => false
    t.float    "amount",                         :null => false
    t.datetime "date_att",                       :null => false
    t.string   "amount_att",                     :null => false
    t.float    "amount_import",                  :null => false
    t.datetime "date_exit"
    t.string   "reason"
    t.integer  "secure",                         :null => false
    t.integer  "secure_status",                  :null => false
    t.integer  "debtor_id"
    t.integer  "branch_id"
    t.integer  "modality_id"
    t.integer  "user_id",       :default => 1
    t.integer  "status_id",     :default => 200
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "debts", ["branch_id"], :name => "fk_debts_branches"
  add_index "debts", ["debtor_id"], :name => "fk_debts_debtors"
  add_index "debts", ["modality_id"], :name => "fk_debts_modalities"
  add_index "debts", ["status_id"], :name => "fk_debts_status"
  add_index "debts", ["user_id"], :name => "fk_debts_users"

  create_table "modalities", :force => true do |t|
    t.string   "description", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", :force => true do |t|
    t.string   "number"
    t.string   "branch_line"
    t.string   "type"
    t.string   "description"
    t.integer  "debtor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["debtor_id"], :name => "fk_phones_users"

  create_table "profiles", :force => true do |t|
    t.string   "description", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recovery", :primary_key => "status_id", :force => true do |t|
    t.integer  "queue_count", :default => 0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schema_status", :primary_key => "status_id", :force => true do |t|
    t.boolean  "debtor",     :null => false
    t.boolean  "debtor_log", :null => false
    t.boolean  "debt",       :null => false
    t.boolean  "debt_log",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status", :force => true do |t|
    t.string   "description"
    t.string   "finale"
    t.string   "date",           :default => "--- :null\n"
    t.string   "color",          :default => "#FFFFFF"
    t.integer  "priority"
    t.integer  "type_status_id"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "status", ["profile_id"], :name => "fk_status_profiles"
  add_index "status", ["type_status_id"], :name => "fk_status_type_status"

  create_table "type_deals", :force => true do |t|
    t.string "description",                        :null => false
    t.string "color",       :default => "#000000", :null => false
  end

  create_table "type_status", :force => true do |t|
    t.string   "description", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                                :null => false
    t.string   "login",                               :null => false
    t.string   "password",   :default => "emplaca09", :null => false
    t.boolean  "active",     :default => true,        :null => false
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["profile_id"], :name => "fk_users_profiles"

end
