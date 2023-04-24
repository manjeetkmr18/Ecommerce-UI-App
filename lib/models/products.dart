class Product {
  final String name;
  final String description;
  final String image;
  final double price;
  final String brand;
  final String category;

  Product( 
   { 
    required this.brand,
    required this.name, 
    required this.description,
    required this.image, 
    required this.category, 
    required this.price
    });
}


List<Product> demoProducts = [
Product(
name: 'Apple iPhone 14 Plus 128GB - Starlight', 
description: 'Think big with the Apple iPhone 14 Plus. It features a larger 6.7-inch display and all-day battery life. Plus, it captures stunning photos in low light and bright light with the new dual-camera system. Get peace of mind with groundbreaking safety features.', 
image: 'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/164/16482/16482228.jpg',
category: 'Mobiles',
brand: 'Apple',
price: 199.99, 
),
Product(
name: 'Apple iPhone 14 128GB - Starlight', 
description: 'Think big with the Apple iPhone 14 Plus. It features a larger 6.7-inch display and all-day battery life. Plus, it captures stunning photos in low light and bright light with the new dual-camera system. Get peace of mind with groundbreaking safety features.', 
image: 'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/164/16482/16482228.jpg',
category: 'Mobiles',
brand: 'Apple',
price: 149.99
),
Product(
name: 'Apple iPhone 13 128GB - Green', 
description: 'Stand out and show-off your superpowers with the iPhone 13. It features the powerful A15 Bionic chip, superfast 5G to download and stream high-quality video, a bright 6.1" Super Retina XDR display, and Ceramic Shield for better drop performance. Other features include 4K Dolby Vision HDR recording, an advanced dual-camera system with Night mode, extra-ordinary battery life, and much more.', 
image: 'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/160/16003/16003180.jpg',
category: 'Mobiles',
brand: 'Apple',
price: 129.99
),
Product(
name: 'Apple iPhone 12 128GB - White', 
description: 'Let the fun begin with the iPhone 12. It features the powerful A14 Bionic chip, 5G to download and stream high-quality video, a bright 6.1" Super Retina XDR display, and Ceramic Shield for better drop performance. Other features include incredible low-light photography with Night mode on both cameras, cinema-grade Dolby Vision, new MagSafe accessories for wireless charging, and much more.', 
image: 'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/149/14932/14932048.jpg',
category: 'Mobiles',
brand: 'Apple',
price: 99.99
),
Product(
name: 'Apple iPhone 11 64GB - Purple', 
description: 'A new dual‑camera system captures more of what you see and love. The fastest chip ever in a smartphone and all‑day battery life let you do more and charge less. And the highest‑quality video in a smartphone, so your memories look better than ever.', 
image: 'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/138/13897/13897479.jpg',
category: 'Mobiles',
brand: 'Apple',
price: 89.99
),
Product(
name: 'Samsung Galaxy S23 128GB - Green', 
description: 'Make the everyday epic with the Samsung Galaxy S23. With a 50MP high resolution camera and an impressive Night Mode powered by Nightography, you are always ready to seize the moment with a click of a button - no matter the lighting. Its adaptive display, together with fast processing and powerful battery life, lets you see your content in rich detail any time of the day.', 
image: 'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/166/16667/16667253.jpg',
category: 'Mobiles',
brand: 'Samsung',
price: 299.99
),
Product(
name: 'Samsung Galaxy S22 Ultra 5G 256GB - Phantom Black', 
description: 'Make everyday moments come to life with the innovative Samsung Galaxy S22 Ultra 5G smartphone. With 108MP photo resolution and 8K video, this mobile phone is built to capture memories that\'s important to you. It features night mode for your crystal-clear nightography, 48-hour battery for unstoppable action, and the embedded S Pen to boost your creativity.', 
image: 'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/159/15963/15963310.jpg',
category: 'Mobiles',
brand: 'Samsung',
price: 249.99
),
Product(
name: 'Google Pixel 7 Pro 128GB - Obsidian', 
description: 'The Google Pixel 7 Pro brings you the best-of-everything in a phone. Powered by Google Tensor G2, it\'s fast and secure, with an immersive display and amazing battery life. It features a pro-level camera system that includes a telephoto lens and advanced features like Macro Focus. And with next-gen security features and built-in VPN, it helps protect your personal data.', 
image: 'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/164/16497/16497812.jpg',
category: 'Mobiles',
brand: 'Google',
price: 349.99
),
Product(
name: 'Apple MacBook Pro 14" (2021) - Space Grey', 
description: 'The first notebook of its kind, this Apple MacBook Pro is a beast. With the blazing-fast M1 Pro chip — the first Apple silicon designed for pros — you get groundbreaking performance and amazing battery life. Add to that a stunning Liquid Retina XDR display, the best camera and audio ever in a Mac notebook, and all the ports you need.', 
image: 'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/157/15776/15776877.jpg',
category: 'Laptops',
brand: 'Apple',
price: 2099.99
),
Product(
name: 'HP 15" Laptop - Jet Black ', 
description: 'Offering impressive performance in a sleek package, the HP 15 laptop is a worthy pick for on-the-go productivity and portable entertainment. Powered by an Intel Core i5 CPU and 8GB RAM, it gives you fast and reliable performance for taking on challenging tasks. Equipped with fast charging technology and a durable battery, this laptop provides hours of uninterrupted operation.', 
image: 'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/164/16433/16433552.jpg',
category: 'Laptops',
brand: 'HP',
price: 699.99
),
Product(
name: 'Dell Inspiron 14" Laptop - Platinum Silver', 
description: 'Packed with powerful features, the Dell Inspiron 14" laptop lets you get the job done without breaking a sweat. Embedded with an Intel Core i5 CPU and 16GB of RAM, it provides you all the speedy performance you need for tons of productivity tasks. It also includes built-in Wi-Fi and Bluetooth for wireless connectivity to networks and compatible devices.', 
image: 'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/160/16068/16068628.jpg',
category: 'Laptops',
brand: 'Dell',
price: 1199.99
)
];