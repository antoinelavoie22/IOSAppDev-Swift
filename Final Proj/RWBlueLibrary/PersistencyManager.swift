import Foundation
import UIKit

final class PersistencyManager {
  private var albums = [Album]()
  
  init() {
    //Dummy list of albums
    let album1 = Album(drinkType: "Milk Tea",
                       drinkName: "Okinawa",
                       descriptors: "Brown Sugar",
                       coverUrl: "https://sharetea.my/wp-content/uploads/2019/11/okinawa-pearl-milk-tea.jpg",
                       location: "ShareTea",
                       distance: "0.4 miles")
    
    let album2 = Album(drinkType: "Frozen Smoothie",
                       drinkName: "Matcha Breeze",
                       descriptors: "Grassy/Nutty",
                       coverUrl: "https://www.pngkey.com/png/detail/414-4143238_matcha-red-bean-milk-tea-feng-cha.png",
                       location: "Feng Cha",
                       distance: "500 feet")
    
    let album3 = Album(drinkType: "Brown Sugar Milk",
                       drinkName: "Bomber Man",
                       descriptors: "Sweat Cream",
                       coverUrl: "https://spoonuniversity.com/wp-content/uploads/sites/23/2015/11/IMG_1529-1024x683.jpg",
                       location: "U-Cha",
                       distance: "1.2 miles")
    
    let album4 = Album(drinkType: "Fruit Tea",
                       drinkName: "Strawberry-Mango Tea",
                       descriptors: "Refreshing",
                       coverUrl: "https://order-iteausa.com/imagesmenu/N9-Fresh-Strawberry-Mango-Fruit-Tea.jpg",
                       location: "iTea",
                       distance: "2.3 miles")
    
    let album5 = Album(drinkType: "Fruit Tea",
                       drinkName: "Honey Lime Tea",
                       descriptors: "Sweetn'Sour",
                       coverUrl: "https://plentea.net/wp-content/uploads/2020/04/cold.jpg",
                       location: "Plentea",
                       distance: "0.8 miles")
    
    albums = [album1, album2, album3, album4, album5]
  }
  
  func getAlbums() -> [Album] {
    return albums
  }
  
  func addAlbum(_ album: Album, at index: Int) {
    if (albums.count >= index) {
      albums.insert(album, at: index)
    } else {
      albums.append(album)
    }
  }
  
  func deleteAlbum(at index: Int) {
    albums.remove(at: index)
  }
  
  private var cache: URL {
    return FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)[0]
  }
  
  
  func saveImage(_ image: UIImage, filename: String) {
    let url = cache.appendingPathComponent(filename)
    guard let data = UIImagePNGRepresentation(image) else {
      return
    }
    try? data.write(to: url, options: [])
  }

  func getImage(with filename: String) -> UIImage? {
    let url = cache.appendingPathComponent(filename)
    guard let data = try? Data(contentsOf: url) else {
      return nil
    }
    return UIImage(data: data)
  }
  
}
