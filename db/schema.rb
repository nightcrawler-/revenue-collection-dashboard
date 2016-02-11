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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160211090425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "b_newuser_documents", primary_key: "did", force: :cascade do |t|
    t.string "unique_id",      limit: 20
    t.string "passport_photo", limit: 30
    t.string "kra_pin",        limit: 30
    t.string "id_scan",        limit: 30
  end

  create_table "b_properties", primary_key: "pr_id", force: :cascade do |t|
    t.string "property_owner",    limit: 130
    t.string "block_number",      limit: 30
    t.string "upn",               limit: 30
    t.string "property_location", limit: 30
    t.string "plot_number",       limit: 30
    t.string "annual_rate",       limit: 30
    t.string "balance",           limit: 30
  end

  create_table "b_staff", primary_key: "sid", force: :cascade do |t|
    t.string "staff_fullnames", limit: 30
    t.string "staff_pno",       limit: 50
    t.string "staff_idno",      limit: 50
    t.string "staff_ssjg",      limit: 30
    t.string "designation",     limit: 30
    t.string "work_station",    limit: 30
    t.string "work_nature",     limit: 30
    t.string "terms",           limit: 30
  end

  create_table "b_usereg", primary_key: "uid", force: :cascade do |t|
    t.string "unique_id",   limit: 20
    t.string "first_name",  limit: 20
    t.string "last_name",   limit: 20
    t.string "telephone",   limit: 20
    t.string "id_number",   limit: 20
    t.string "email",       limit: 30
    t.string "datecreated", limit: 20
    t.string "status",      limit: 1
  end

  create_table "b_users", force: :cascade do |t|
    t.string "username",  limit: 30
    t.string "password",  limit: 50
    t.string "fullnames", limit: 50
    t.string "usertype",  limit: 1
  end

  create_table "banks", force: :cascade do |t|
    t.string "bankname",   limit: 400, null: false
    t.string "branchname", limit: 400, null: false
  end

  create_table "billings", force: :cascade do |t|
    t.integer  "customerid",                                 null: false
    t.string   "description",      limit: 400,               null: false
    t.integer  "rateid"
    t.integer  "amount",           limit: 8,                 null: false
    t.datetime "date",                         precision: 6, null: false
    t.integer  "approvedbyuserid",                           null: false
    t.string   "billingid",        limit: 300
    t.integer  "business_id",      limit: 8
  end

  create_table "business", force: :cascade do |t|
    t.date     "effective_date",                                               null: false
    t.integer  "operational_status",                                           null: false
    t.string   "name",               limit: 300,                               null: false
    t.string   "pin_no",             limit: 100
    t.string   "vat_no",             limit: 200
    t.string   "box_no",             limit: 250,                               null: false
    t.integer  "postal_code",        limit: 8,                                 null: false
    t.string   "tel",                limit: 100,                               null: false
    t.string   "alternative_tel",    limit: 200
    t.string   "fax_no",             limit: 200
    t.string   "email_address",      limit: 200,                               null: false
    t.string   "physical_adress",    limit: 100,                               null: false
    t.string   "plot_no",            limit: 100,                               null: false
    t.integer  "area",               limit: 8,                                 null: false
    t.string   "description",        limit: 500,                               null: false
    t.string   "other_details",      limit: 500
    t.integer  "no_of_employees",    limit: 8,                                 null: false
    t.integer  "zone_id",                                                      null: false
    t.integer  "ward_id",                                                      null: false
    t.string   "relative_size",      limit: 50
    t.integer  "approved",                                     default: 0,     null: false
    t.datetime "date_registered",                precision: 6,                 null: false
    t.string   "created_by",         limit: 100
    t.string   "cert_no",            limit: 100
    t.string   "postal_town",        limit: 100,                               null: false
    t.integer  "customer_id_no",                                               null: false
    t.string   "owner_designation",  limit: 100
    t.integer  "business_type_id",   limit: 8,                                 null: false
    t.boolean  "verified",                                     default: false
    t.boolean  "closed",                                       default: false
    t.integer  "subcounty_id",       limit: 8
  end

  create_table "business_approval", force: :cascade do |t|
    t.integer "business_id",     limit: 8,   null: false
    t.integer "approval_status", limit: 8,   null: false
    t.string  "comment",         limit: 300, null: false
    t.integer "approved_by",     limit: 8,   null: false
    t.date    "approval_date",               null: false
  end

  create_table "business_closure", force: :cascade do |t|
    t.integer "businessid",     limit: 8,                   null: false
    t.date    "date",                                       null: false
    t.string  "closedby",       limit: 50,                  null: false
    t.string  "reason",         limit: 300,                 null: false
    t.boolean "approvalstatus",             default: false, null: false
  end

  create_table "business_file_uploads", force: :cascade do |t|
    t.string   "name",         limit: 100,                                                        null: false
    t.string   "server_name",  limit: 100,                                                        null: false
    t.integer  "created_by",   limit: 8,                                                          null: false
    t.datetime "date_created",             precision: 6, default: "timezone('utc'::text, now())", null: false
    t.integer  "business_id",  limit: 8,                                                          null: false
  end

  create_table "business_operation_status", force: :cascade do |t|
    t.string "name",       limit: 100, null: false
    t.string "code",       limit: 100
    t.string "created_by", limit: 100
  end

  create_table "business_sbp_waivers", force: :cascade do |t|
    t.integer "business_id", limit: 8,   null: false
    t.integer "issued_by",   limit: 8,   null: false
    t.date    "date_issued",             null: false
    t.string  "reason",      limit: 300, null: false
    t.integer "amount",      limit: 8,   null: false
  end

  create_table "business_status", force: :cascade do |t|
    t.string "name", limit: 100, null: false
  end

  create_table "business_type", force: :cascade do |t|
    t.string  "name",        limit: 100,  null: false
    t.string  "description", limit: 1000
    t.string  "code",        limit: 200,  null: false
    t.integer "sbp_fee",     limit: 8,    null: false
  end

  create_table "business_type_charges_link", force: :cascade do |t|
    t.integer "business_type_id", limit: 8, null: false
    t.integer "sbp_charge_id",    limit: 8, null: false
  end

  create_table "business_verification", force: :cascade do |t|
    t.integer "business_id",             limit: 8,   null: false
    t.date    "date",                                null: false
    t.string  "verified_by",             limit: 50,  null: false
    t.integer "approval_recommendation",             null: false
    t.string  "comment",                 limit: 500, null: false
    t.date    "verification_date",                   null: false
    t.integer "business_type_id",        limit: 8,   null: false
    t.string  "customer_comment",        limit: 500
  end

  create_table "business_zones", force: :cascade do |t|
    t.string "name",         limit: 100, null: false
    t.string "code",         limit: 50,  null: false
    t.string "created_by",   limit: 50
    t.string "modified_by",  limit: 50
    t.date   "date_created"
  end

  create_table "cashtransactions", force: :cascade do |t|
    t.integer "cashtendered", limit: 8, null: false
  end

  create_table "chequetransactions", force: :cascade do |t|
    t.date    "chequedate",             null: false
    t.string  "chequeno",   limit: 300, null: false
    t.string  "drawnby",    limit: 400, null: false
    t.integer "bankid",                 null: false
  end

  create_table "collectioncenterallocation", force: :cascade do |t|
    t.string  "allocated_by",      limit: 255
    t.date    "allocation_date"
    t.string  "flag",              limit: 255
    t.date    "modification_date"
    t.string  "modified_by",       limit: 255
    t.string  "user_id",           limit: 255
    t.integer "allocations_id",    limit: 8
  end

  create_table "customerreveueroles", force: :cascade do |t|
    t.integer "rateid",     limit: 8, null: false
    t.integer "customerid", limit: 8, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer "countysubgroup_id", limit: 8
    t.string  "company",           limit: 100
    t.string  "email",             limit: 60
    t.integer "national_id_no",                null: false
    t.string  "kra_pin",           limit: 200, null: false
    t.string  "lastname",          limit: 100, null: false
    t.string  "firstname",         limit: 100, null: false
    t.string  "middlename",        limit: 100, null: false
    t.string  "phoneno",           limit: 150, null: false
    t.string  "physical_adress",   limit: 200
    t.string  "postal_adress",     limit: 100
  end

  add_index "customers", ["kra_pin"], name: "unique_kra_pin", unique: true, using: :btree
  add_index "customers", ["national_id_no"], name: "unique_national_id_no", unique: true, using: :btree

  create_table "deviceallocation", force: :cascade do |t|
    t.date    "allocate_date"
    t.string  "alocated_by",   limit: 255
    t.date    "modified_date"
    t.integer "devices_id",    limit: 8
    t.integer "users_id",      limit: 8
  end

  create_table "devices", id: :bigserial, force: :cascade do |t|
    t.date   "create_date"
    t.string "created_by",    limit: 255
    t.string "device_make",   limit: 255
    t.string "device_name",   limit: 255
    t.string "device_status", limit: 255
    t.string "device_type",   limit: 255
    t.string "modified_by",   limit: 255
    t.date   "modified_date"
    t.string "serial_number", limit: 255
  end

  create_table "directbankdeposittransactions", force: :cascade do |t|
    t.string  "refno",   limit: 300, null: false
    t.date    "refdate",             null: false
    t.integer "bankid",              null: false
  end

  create_table "eventlog", id: :bigserial, force: :cascade do |t|
    t.date    "log_date"
    t.string  "logdesc",   limit: 255
    t.string  "name",      limit: 255
    t.string  "ref_num",   limit: 255
    t.string  "tablename", limit: 255
    t.integer "user_id",   limit: 8
  end

  create_table "location", force: :cascade do |t|
    t.float   "accuracy"
    t.integer "deviceid",  limit: 8
    t.string  "extra",     limit: 255
    t.float   "latitude"
    t.float   "longitude"
    t.integer "time",      limit: 8
    t.integer "userid",    limit: 8
  end

  create_table "ministries", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "mobilephonetransactions", force: :cascade do |t|
    t.string  "transactionno", limit: 400, null: false
    t.integer "mobileno",                  null: false
    t.integer "bank",                      null: false
  end

  create_table "p_users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "id_number"
    t.boolean  "verified"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "password_digest"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "id_slash_passport_pic_file_name"
    t.string   "id_slash_passport_pic_content_type"
    t.integer  "id_slash_passport_pic_file_size"
    t.datetime "id_slash_passport_pic_updated_at"
  end

  create_table "payment", force: :cascade do |t|
    t.float    "amount"
    t.float    "amountreceived"
    t.float    "balance"
    t.string   "narration",        limit: 255
    t.string   "receiptnumber",    limit: 255, null: false
    t.datetime "transaction_date"
    t.integer  "devices_id",       limit: 8
    t.integer  "paymentmode_id",   limit: 8
    t.integer  "revenue_id",       limit: 8
    t.integer  "users_id",         limit: 8
  end

  add_index "payment", ["receiptnumber"], name: "payment_receiptnumber_key", unique: true, using: :btree

  create_table "paymentfields", force: :cascade do |t|
    t.integer "paymentmodeid",             null: false
    t.string  "fieldname",     limit: 300, null: false
  end

  create_table "paymentmode", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "penalties", force: :cascade do |t|
    t.string  "code",            limit: 100
    t.string  "name",            limit: 300, null: false
    t.integer "percentage_rate",             null: false
    t.integer "charge_id",       limit: 8,   null: false
    t.integer "grace_period",    limit: 8,   null: false
  end

  create_table "po_customers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "idNumber"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "LastName"
  end

  create_table "po_users", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "idNumber"
    t.string   "email"
    t.string   "phone"
    t.string   "password"
    t.string   "password_confirmation"
    t.text     "pic_url"
    t.boolean  "verified"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer "revenuesubgroupid",           null: false
    t.integer "charges",           limit: 8, null: false
  end

  create_table "receipt_no_mapping", force: :cascade do |t|
    t.integer "incomeid",               null: false
    t.string  "mappingcode", limit: 50, null: false
  end

  create_table "receipting", force: :cascade do |t|
    t.string  "billno",           limit: 100, null: false
    t.integer "amount",           limit: 8,   null: false
    t.date    "date",                         null: false
    t.integer "paymentmodeid",                null: false
    t.integer "transactionid",    limit: 8,   null: false
    t.integer "approvedbyuserid"
    t.string  "receiptno",        limit: 80
  end

  create_table "recurring_period", force: :cascade do |t|
    t.string  "name", limit: 300, null: false
    t.integer "days", limit: 8,   null: false
  end

  create_table "revenue", force: :cascade do |t|
    t.float   "amount"
    t.string  "flag",               limit: 255
    t.string  "revenuecode",        limit: 255
    t.integer "ministries_id",      limit: 8
    t.integer "revenuegroup_id",    limit: 8
    t.integer "revenuestream_id",   limit: 8
    t.integer "revenuesubgroup_id", limit: 8
    t.integer "revenuetype_id",     limit: 8
    t.integer "revenueunits_id",    limit: 8
    t.integer "subcountygroups_id", limit: 8
  end

  create_table "revenuecollectioncenters", force: :cascade do |t|
    t.string  "created_by",       limit: 255
    t.date    "created_date"
    t.string  "description",      limit: 255
    t.string  "modified_by",      limit: 255
    t.date    "modified_date"
    t.string  "projected_amount", limit: 255
    t.string  "section_name",     limit: 255
    t.integer "ward_id",          limit: 8
  end

  create_table "revenuegroup", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "revenuemapping", force: :cascade do |t|
    t.integer "incomeid",                null: false
    t.string  "mappingcode", limit: 200, null: false
  end

  add_index "revenuemapping", ["incomeid"], name: "unique_incomeid", unique: true, using: :btree

  create_table "revenuestream", force: :cascade do |t|
    t.string  "name",               limit: 255
    t.integer "revenuesubgroup_id", limit: 8
  end

  create_table "revenuesubgroup", force: :cascade do |t|
    t.string  "name",            limit: 255
    t.string  "narrative",       limit: 255
    t.integer "revenuegroup_id", limit: 8
  end

  create_table "revenuetype", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "revenueunits", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "sbp_charges", force: :cascade do |t|
    t.string  "name",         limit: 200,                 null: false
    t.string  "description",  limit: 500,                 null: false
    t.string  "unit",         limit: 200,                 null: false
    t.integer "cost",         limit: 8,                   null: false
    t.boolean "recurring",                                null: false
    t.boolean "charge_all",               default: false, null: false
    t.string  "billing_code", limit: 50
  end

  create_table "sequence", primary_key: "seq_name", force: :cascade do |t|
    t.decimal "seq_count", precision: 38
  end

  create_table "subcountygroups", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "systemconfig", force: :cascade do |t|
    t.string "lcl",         limit: 255
    t.string "report_path", limit: 255
    t.string "theme",       limit: 255
  end

  create_table "tblbackupconfig", id: false, force: :cascade do |t|
    t.string "backuup_path",  limit: 300,  null: false
    t.string "duration",      limit: 30
    t.string "time_unit",     limit: 30
    t.string "post_grespath", limit: 2500
    t.string "isactive",      limit: 1
  end

  add_index "tblbackupconfig", ["backuup_path"], name: "tblbackupconfig_backuup_path_key", unique: true, using: :btree

  create_table "tblclient", primary_key: "client_id", force: :cascade do |t|
    t.string "client_name", limit: 30
  end

  create_table "tblclient_receivable", force: :cascade do |t|
    t.string   "client_id",     limit: 30
    t.string   "recievable_id", limit: 30
    t.datetime "reg_date"
  end

  create_table "tblcounty", primary_key: "county_id", force: :cascade do |t|
    t.string "county_code",   limit: 255
    t.string "county_name",   limit: 255
    t.date   "create_date"
    t.string "created_by",    limit: 255
    t.string "modified_by",   limit: 255
    t.date   "modified_date"
  end

  create_table "tblevent", primary_key: "event_id", force: :cascade do |t|
    t.string "event_name", limit: 30
    t.string "priority",   limit: 5
  end

  create_table "tbllogs", primary_key: "log_id", force: :cascade do |t|
    t.decimal  "event_id",                   precision: 10
    t.string   "user_id",        limit: 30
    t.datetime "event_date"
    t.string   "device_infor",   limit: 250
    t.string   "transaction_id", limit: 30
  end

  create_table "updateman", force: :cascade do |t|
    t.boolean "pos"
    t.string  "url",         limit: 255
    t.integer "versioncode"
    t.string  "notes",       limit: 255
  end

  create_table "userrights", id: :bigserial, force: :cascade do |t|
    t.string "userrole", limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string  "created_by",                    limit: 255
    t.date    "date_created"
    t.date    "date_modified"
    t.string  "email",                         limit: 255
    t.string  "firstname",                     limit: 255
    t.string  "isactive",                      limit: 255
    t.string  "mcp",                           limit: 255
    t.string  "middlename",                    limit: 255
    t.string  "mobile_num",                    limit: 255
    t.string  "national_id",                   limit: 255
    t.string  "password",                      limit: 255
    t.integer "passwordattempts"
    t.string  "postal_address",                limit: 255
    t.string  "postal_code",                   limit: 255
    t.string  "secondname",                    limit: 255
    t.string  "username",                      limit: 255
    t.integer "collectioncenterallocation_id", limit: 8
    t.integer "userrights_id",                 limit: 8
    t.integer "wards_id",                      limit: 8
    t.integer "deviceallocation_id",           limit: 8
  end

  create_table "wards", force: :cascade do |t|
    t.string  "county_code",        limit: 255
    t.date    "create_date"
    t.string  "created_by",         limit: 255
    t.date    "modified_date"
    t.string  "ward_name",          limit: 255
    t.integer "subcountygroups_id", limit: 8
  end

  add_foreign_key "collectioncenterallocation", "revenuecollectioncenters", column: "allocations_id", name: "fk_collectioncenterallocation_allocations_id"
  add_foreign_key "deviceallocation", "devices", column: "devices_id", name: "fk_deviceallocation_devices_id"
  add_foreign_key "eventlog", "users", name: "fk_eventlog_user_id"
  add_foreign_key "payment", "devices", column: "devices_id", name: "fk_payment_devices_id"
  add_foreign_key "payment", "paymentmode", name: "fk_payment_paymentmode_id"
  add_foreign_key "payment", "revenue", name: "fk_payment_revenue_id"
  add_foreign_key "payment", "users", column: "users_id", name: "fk_payment_users_id"
  add_foreign_key "revenue", "ministries", column: "ministries_id", name: "fk_revenue_ministries_id"
  add_foreign_key "revenue", "revenuegroup", name: "fk_revenue_revenuegroup_id"
  add_foreign_key "revenue", "revenuestream", name: "fk_revenue_revenuestream_id"
  add_foreign_key "revenue", "revenuesubgroup", name: "fk_revenue_revenuesubgroup_id"
  add_foreign_key "revenue", "revenuetype", name: "fk_revenue_revenuetype_id"
  add_foreign_key "revenue", "revenueunits", column: "revenueunits_id", name: "fk_revenue_revenueunits_id"
  add_foreign_key "revenue", "subcountygroups", column: "subcountygroups_id", name: "fk_revenue_subcountygroups_id"
  add_foreign_key "revenuecollectioncenters", "wards", name: "fk_revenuecollectioncenters_ward_id"
  add_foreign_key "revenuestream", "revenuesubgroup", name: "fk_revenuestream_revenuesubgroup_id"
  add_foreign_key "revenuesubgroup", "revenuegroup", name: "fk_revenuesubgroup_revenuegroup_id"
  add_foreign_key "users", "collectioncenterallocation", name: "fk_users_collectioncenterallocation_id"
  add_foreign_key "users", "userrights", column: "userrights_id", name: "fk_users_userrights_id"
  add_foreign_key "users", "wards", column: "wards_id", name: "fk_users_wards_id"
  add_foreign_key "wards", "subcountygroups", column: "subcountygroups_id", name: "fk_wards_subcountygroups_id"
end
