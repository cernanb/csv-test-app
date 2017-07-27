class AccountDataGenerator
  COLUMNS = %w(
    id
    name
    account_number
    status
  )

  def self.generate_csv
    new.generate_csv
  end

  def generate_csv
     CSV.generate do |csv|
        csv << COLUMNS

        Account.all.each do |account|
          csv << COLUMNS.map{|column| account[column]}
        end                   
     end
  end
end