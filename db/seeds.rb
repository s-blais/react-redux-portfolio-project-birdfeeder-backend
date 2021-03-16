# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Bird.destroy_all

tt = Bird.create(
  name: "Tufted Titmouse",
  audubon_url: "https://www.audubon.org/field-guide/bird/tufted-titmouse",
  image_url: "https://nas-national-prod.s3.amazonaws.com/styles/bird_illustration/s3/4464_Sibl_9780307957900_art_r1.jpg"
)

bcc = Bird.create(
  name: "Black-capped Chickadee",
  audubon_url: "https://www.audubon.org/field-guide/bird/black-capped-chickadee",
  image_url: "https://nas-national-prod.s3.amazonaws.com/styles/bird_illustration/s3/4033_Sibl_9780307957900_art_r1.jpg"
)

dej = Bird.create(
  name: "Dark-eyed Junco",
  audubon_url: "https://www.audubon.org/field-guide/bird/dark-eyed-junco",
  image_url: "https://nas-national-prod.s3.amazonaws.com/styles/bird_illustration/s3/Dark_eyed_Junco_4741_Sibl_9780307957900_art_r1.jpg"
)

rbw = Bird.create(
  name: "Red-bellied Woodpecker",
  audubon_url: "https://www.audubon.org/field-guide/bird/red-bellied-woodpecker",
  image_url: "https://nas-national-prod.s3.amazonaws.com/styles/bird_illustration/s3/5162_Sibl_9780307957900_art_r1.jpg"
)

dw = Bird.create(
  name: "Downy Woodpecker",
  audubon_url: "https://www.audubon.org/field-guide/bird/downy-woodpecker",
  image_url: "https://nas-national-prod.s3.amazonaws.com/styles/bird_illustration/s3/5192_Sibl_9780307957900_art_r1.jpg"
)

cw = Bird.create(
  name: "Carolina Wren",
  audubon_url: "https://www.audubon.org/field-guide/bird/carolina-wren",
  image_url: "https://nas-national-prod.s3.amazonaws.com/styles/bird_illustration/s3/4027_Sibl_9780307957900_art_r1.jpg"
)

ebb = Bird.create(
  name: "Eastern Bluebird",
  audubon_url: "https://www.audubon.org/field-guide/bird/eastern-bluebird",
  image_url: "https://nas-national-prod.s3.amazonaws.com/styles/bird_illustration/s3/038_Sibl_9780307957900_art_r1.jpg"
)

md = Bird.create(
  name: "Mourning Dove",
  audubon_url: "https://www.audubon.org/field-guide/bird/mourning-dove",
  image_url: "https://nas-national-prod.s3.amazonaws.com/styles/bird_illustration/s3/2829_Sibl_9780307957900_art_r1.jpg"
)

Day.destroy_all

# tt bcc dej rbw dw cw ebb md

d0214 = Day.create(date: "2021-02-14", birds: [tt, bcc, rbw])
d0215 = Day.create(date: "2021-02-15", birds: [tt, rbw])
d0216 = Day.create(date: "2021-02-16", birds: [tt, bcc, rbw, cw])
d0217 = Day.create(date: "2021-02-17", birds: [tt, bcc, rbw, dw])
d0218 = Day.create(date: "2021-02-18", birds: [tt, bcc, rbw, cw])
d0219 = Day.create(date: "2021-02-19", birds: [bcc, cw, ebb])
d0220 = Day.create(date: "2021-02-20", birds: [tt, bcc, dw, cw, dej])
d0221 = Day.create(date: "2021-02-21", birds: [tt, bcc, dej])
d0222 = Day.create(date: "2021-02-22", birds: [tt, bcc, dej, rbw, dw])
d0223 = Day.create(date: "2021-02-23", birds: [bcc, dej, ebb])
d0224 = Day.create(date: "2021-02-24", birds: [tt, bcc, md])
d0225 = Day.create(date: "2021-02-25", birds: [tt, bcc, md])
d0226 = Day.create(date: "2021-02-26", birds: [tt, bcc, cw, md])
d0227 = Day.create(date: "2021-02-27", birds: [tt, bcc, dw, md])
d0228 = Day.create(date: "2021-02-28", birds: [tt, bcc, dw, cw, md])

# [birdvar].dates = [datevar, datevar, datevar] (this works, immediate commit)
# [birdvar].dates << datevar or [datevar, datevar] (this works, immediate commit)
# Date.create(date: "2021-02-29", birds: [tt bcc dw]) (this works, immediate commit obviouly because of create)
# [birdvar].dates.build(...) will create new day rows whether they already exist or not

