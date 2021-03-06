# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Prefecture.create (name =>"北海道"=>{:lat=>"43.06417", :long=>"141.34694"})


pref_to_lat_long = {
"北海道"=>{:lat=>"43.06417", :long=>"141.34694"},
"青森県"=>{:lat=>"40.82444", :long=>"140.74"},
"岩手県"=>{:lat=>"39.70361", :long=>"141.1525"},
"宮城県"=>{:lat=>"38.26889", :long=>"140.87194"},
"秋田県"=>{:lat=>"39.71861", :long=>"140.1025"},
"山形県"=>{:lat=>"38.24056", :long=>"140.36333"},
"福島県"=>{:lat=>"37.75", :long=>"140.46778"},
"茨城県"=>{:lat=>"36.34139", :long=>"140.44667"},
"栃木県"=>{:lat=>"36.56583", :long=>"139.88361"},
"群馬県"=>{:lat=>"36.39111", :long=>"139.06083"},
"埼玉県"=>{:lat=>"35.85694", :long=>"139.64889"},
"千葉県"=>{:lat=>"35.60472", :long=>"140.12333"},
"東京都"=>{:lat=>"35.68944", :long=>"139.69167"},
"神奈川県"=>{:lat=>"35.44778", :long=>"139.6425"},
"新潟県"=>{:lat=>"37.90222", :long=>"139.02361"},
"富山県"=>{:lat=>"36.69528", :long=>"137.21139"},
"石川県"=>{:lat=>"36.59444", :long=>"136.62556"},
"福井県"=>{:lat=>"36.06528", :long=>"136.22194"},
"山梨県"=>{:lat=>"35.66389", :long=>"138.56833"},
"長野県"=>{:lat=>"36.65139", :long=>"138.18111"},
"岐阜県"=>{:lat=>"35.39111", :long=>"136.72222"},
"静岡県"=>{:lat=>"34.97694", :long=>"138.38306"},
"愛知県"=>{:lat=>"35.18028", :long=>"136.90667"},
"三重県"=>{:lat=>"34.73028", :long=>"136.50861"},
"滋賀県"=>{:lat=>"35.00444", :long=>"135.86833"},
"京都府"=>{:lat=>"35.02139", :long=>"135.75556"},
"大阪府"=>{:lat=>"34.68639", :long=>"135.52"},
"兵庫県"=>{:lat=>"34.69139", :long=>"135.18306"},
"奈良県"=>{:lat=>"34.68528", :long=>"135.83278"},
"和歌山県"=>{:lat=>"34.22611", :long=>"135.1675"},
"鳥取県"=>{:lat=>"35.50361", :long=>"134.23833"},
"島根県"=>{:lat=>"35.47222", :long=>"133.05056"},
"岡山県"=>{:lat=>"34.66167", :long=>"133.935"},
"広島県"=>{:lat=>"34.39639", :long=>"132.45944"},
"山口県"=>{:lat=>"34.18583", :long=>"131.47139"},
"徳島県"=>{:lat=>"34.06583", :long=>"134.55944"},
"香川県"=>{:lat=>"34.34028", :long=>"134.04333"},
"愛媛県"=>{:lat=>"33.84167", :long=>"132.76611"},
"高知県"=>{:lat=>"33.55972", :long=>"133.53111"},
"福岡県"=>{:lat=>"33.60639", :long=>"130.41806"},
"佐賀県"=>{:lat=>"33.24944", :long=>"130.29889"},
"長崎県"=>{:lat=>"32.74472", :long=>"129.87361"},
"熊本県"=>{:lat=>"32.78972", :long=>"130.74167"},
"大分県"=>{:lat=>"33.23806", :long=>"131.6125"},
"宮崎県"=>{:lat=>"31.91111", :long=>"131.42389"},
"鹿児島県"=>{:lat=>"31.56028", :long=>"130.55806"},
"沖縄県"=>{:lat=>"26.2125", :long=>"127.68111"},
}

pref_to_lat_long.each do |key, value|
 Prefecture.create(
   name: key,
   latitude: value[:lat],
   longitude: value[:long]
 )
end
