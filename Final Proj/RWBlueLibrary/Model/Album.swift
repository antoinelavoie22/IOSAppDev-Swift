import Foundation

struct Album {
  let drinkType : String
  let drinkName : String
  let descriptors : String
  let coverUrl : String
  let location : String
  let distance : String
}

extension Album: CustomStringConvertible {
  var description: String {
    return "drinkType: \(drinkType)" +
      " drinkName: \(drinkName)" +
      " descriptors: \(descriptors)" +
      " coverUrl: \(coverUrl)" +
    " location: \(location)" +
    " distance: \(distance)"
  }
}

typealias AlbumData = (title: String, value: String)

extension Album {
  var tableRepresentation: [AlbumData] {
    return [
      ("Drink Name", drinkName),
      ("Drink Type", drinkType),
      ("Descriptors", descriptors),
      ("Location", location),
      ("Distance", distance)
    ]
  }
}
