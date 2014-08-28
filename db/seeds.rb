# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([
	{ name: 'Art' },
	{ name: 'Comics'},
	{ name: 'Crafts'},
	{ name: 'Dance'},
	{ name: 'Design'},
	{ name: 'Fashion'},
	{ name: 'Film & Video'},
	{ name: 'Food'},
	{ name: 'Games'},
	{ name: 'Journalism'},
	{ name: 'Music'},
	{ name: 'Photography'},
	{ name: 'Publishing'},
	{ name: 'Technology'},
	{ name: 'Theater'}
]),

project = Project.create([
	{ name: 'The Very First Project'},
	{ target_pledge_amount: 5000},
	{ pledging_ends_on: '2014-12-12'},
	{	website: 'http://www.orights.com' },
	{ category_ids: [1, 2, 3] },
	{ description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus porttitor consequat nunc vitae sodales. Integer in ullamcorper orci, ut mattis velit. Nullam eu efficitur mauris, et blandit purus. Vestibulum orci tortor, pharetra finibus accumsan ac, sagittis at felis. Nullam tristique diam vel libero malesuada interdum. Nam nec libero nec justo imperdiet pharetra sed at nisi. Donec ac ipsum consequat, ullamcorper diam vitae, tristique tortor. Quisque iaculis consequat quam a tempor. Maecenas nulla leo, consequat eget est non, ultricies fringilla eros. Nullam turpis ante, convallis eget turpis nec, lobortis rhoncus felis. Morbi eget malesuada lorem. Suspendisse leo nisl, tincidunt id ante eu, dapibus condimentum leo. Maecenas semper dignissim dui quis convallis. Praesent diam erat, vehicula in odio vitae, convallis porttitor mauris. Sed eu lacus eget enim commodo cursus. Proin ut placerat leo. Vestibulum a tortor velit. Sed vitae erat ipsum. Fusce eget tellus et elit pretium congue ac sit amet lorem. Suspendisse potenti. Donec tempus ultrices est, ac interdum est rutrum non. In leo arcu, fringilla in erat et, cursus ornare justo. Nullam eros turpis, vestibulum eget ex non, venenatis interdum ligula. Nullam eget ultrices leo. Proin ullamcorper est non magna dapibus eleifend. Quisque vitae commodo quam. Maecenas facilisis, eros et scelerisque commodo, nisi mauris ornare urna, semper cursus est ipsum et orci. Vestibulum facilisis dolor eu quam molestie blandit et ut est. Curabitur ornare mauris laoreet tortor blandit, et efficitur massa sodales. Quisque scelerisque lorem a risus porta posuere. Cras condimentum pretium quam, id fermentum orci congue nec. Vestibulum posuere, diam at sollicitudin commodo, mi ligula auctor justo, et luctus ante lorem sed sem. Cras sit amet dui lobortis, faucibus metus in, efficitur diam. Aliquam erat volutpat. Integer a orci pellentesque, pretium tellus ullamcorper, hendrerit metus. Vivamus a justo a velit volutpat volutpat vitae non diam. Suspendisse condimentum eu purus et imperdiet. Pellentesque luctus molestie odio ut hendrerit. Vivamus aliquet euismod efficitur. Sed ultricies bibendum erat a auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In ac libero interdum, elementum est nec, scelerisque dolor. Nunc sodales commodo diam. Sed vel arcu dui. Proin consequat porttitor ante. Praesent posuere vehicula maximus. Suspendisse pellentesque facilisis tellus, in cursus ligula gravida in. Donec aliquam id tortor et congue. In et est dolor. Donec non egestas odio. Phasellus ligula arcu, sodales at leo in, laoreet maximus leo. Sed eu sollicitudin sem.' },
	{ team_members: 'Jungdo Lee'}

])