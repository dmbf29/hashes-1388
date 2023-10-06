# when we're building the hash, the colon is on the RIGHT
tokyo = {
  country: "Japan",
  population: 37_000_000
}

kyoto = {
  country: "Japan",
  population: 1_000_000
}

# when we're read the hash, the colon is on the LEFT
# p kyoto['population']
p tokyo[:population]
