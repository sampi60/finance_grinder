user = User.create!(
  email: 'piotr@webgrinder.pl',
  password: 'supersecret',
  password_confirmation: 'supersecret',
  confirmed_at: Time.now
)


[ 'Salary - Mine', 'Salary - Partner', 'Other' ].each do |category|
  Category.create! name: category, kind: 'income', user: user
end

expenses = {
  food: %w( home work city other ),
  home: %w( rent electricity gas equipment other ),
  telecommunication: %w( phone internet tv ),
  kids: %w( diapers cosmetics medicines toys clothes other )
}

expenses.each do |category|
  parent = Category.create! name: category.first.to_s.titleize, kind: 'expense', user: user
  category.last.each do |subcategory|
    Category.create! name: subcategory.titleize, kind: 'expense', user: user, parent: parent
  end
end
