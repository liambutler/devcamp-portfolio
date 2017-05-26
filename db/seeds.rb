10.times do | blog |
  Blog.create!(
          title: "My blog post # #{blog}",
          body: "Just some words"
  )
end

5.times do | portfolio |
  Portfolio.create!(
      title: "Portfolio item # #{portfolio}",
      subtitle: "Isn't this great?",
      body: "Lorem ipsum dolor sit amet, id dolorum denique philosophia sit, recteque euripidis scripserit no cum. Nec cu populo blandit, everti quaestio pro an. No vim eius lobortis. Idque facete incorrupte vis ne, ad mei graeco tacimates eloquentiam.
              Ea mundi apeirian consequat his, fabulas vivendum moderatius nam ex. Mei tota ullum dolor ad, pro probo everti ut, mutat etiam elitr et vix. Pro virtute facilisis laboramus ex, eu mutat eloquentiam sed, mea labitur aliquid te. Tantas equidem ei mea. Vide graeci suscipiantur ut eam, ius choro prodesset et, justo regione no vis.",
      main_image: 'http://placehold.it/600x350',
      thumb_image: 'http://placehold.it/350x150'
  )
end
