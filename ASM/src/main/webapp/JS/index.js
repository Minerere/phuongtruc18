
angular.module("myapp",[]).controller("myctrl",function($scope){
    $scope.hotsale = "/image/14-hotsale.png";
    
   $scope.ip14 = [{
       name: "iPhone 14 Pro Max 128GB",
       photo: "ip14prm.png",
       price: "28.290.000",
       discount: "34.990.000",
       status: "khai-truong.webp"

   },
   {
       name: "iPhone 14 Pro 128GB",
       photo: "ip14pro.png",
       price: "25.490.000",
       discount: "30.990.000",
       status: "hotsale.png"

   },
   {
       name: "iPhone 14 128GB",
       photo: "ip14.png",
       price: "19.900.000",
       discount: "24.990.000",
       status: "hotsale.png"

   },
   {
       name: "iPhone 14 Plus 128GB",
       photo: "ip14p.png",
       price: "22.990.000",
       discount: "27.990.000",
       status: "hotsale.png"

   }
   
   ];
   $scope.pk = [{
             name: "Sạc 20W USB-C Power Adapter",
             photo: "pk1.png",
             price: "550.000₫ ",
             discount: "690.000₫ ",
             

         },
         {
             name: "Magic Mouse 2",
             photo: "pk2.jpeg",
             price: "1.690.000₫ ",
             discount: "2.990.000₫ ",
             status: "/image/banchay.webp"  

         },
         {
             name: "iPhone 14 Pro Max Leather Case with MagSafe",
             photo: "pk3.jpeg",
             price: "1.590.000₫ ",
             
             status: "/image/banchay.webp"

         },
         {
             name: "Pencil 1 (2022)",
             photo: "pk4.png",
             price: "2.650.000₫ ",
             discount: "2.990.000₫ ",
             status: "/image/new.png"

         }
         
         ];
   $scope.ipad = [{
             name: "iPad gen 9 10.2 inch WiFi 64GB",
             photo: "IPAD1.png",
             price: "7.390.000",
             discount: "9.990.000",
             status: "khai-truong.webp"

         },
         {
             name: "iPad Pro M2 11 inch WiFi 128GB",
             photo: "ipad2.png",
             price: "20.690.000",
             discount: "23.990.000",
             status: "hotsale.png"

         },
         {
             name: "iPad Pro M2 12.9 inch WiFi 128GB",
             photo: "ipad3.png",
             price: "28.490.000",
             discount: "31.990.000",
             status: "hotsale.png"

         },
         {
             name: "iPad Gen 10th 10.9 inch WiFi 64GB",
             photo: "ipad4.png",
             price: "10.890.000",
             discount: "12.990.000",
             status: "hotsale.png"

         }
         
         ];

  $scope.mac = [{
             name: "MacBook Pro M1 2020",
             photo: "mac1.png",
             price: "28.550.000",
             discount: "34.990.000",
             status: "hotsale.png"

         },
         {
             name: "MacBook Air M1 2020 (8GB RAM | 256GB SSD)",
             photo: "mac2.png",
             price: "19.890.000",
             discount: "28.990.000",
             status: "khai-truong.webp"

         },
         {
             name: "MacBook Air M2 2022 (8GB RAM | 256GB SSD)",
             photo: "mac3.png",
             price: "26.690.000",
             discount: "32.990.000",
             status: "hotsale.png"

         },
         {
             name: "MacBook Pro 13 inch M2 (10 core| 8GB RAM| 256GB SSD)",
             photo: "mac4.png",
             price: "30.890.000",
             discount: "35.990.000",
              status: "hotsale.png"
             

         }
         
         ];
         $scope.watch = [{
             name: "Apple Watch Series 7 Nhôm GPS",
             photo: "watch1.png",
             price: "7.990.000",
             discount: "11.990.000",
             status: "khai-truong.webp"

         },
         {
             name: "Apple Watch SE Nhôm 2022 GPS",
             photo: "wactch2.png",
             price: "6.490.000",
             discount: "8.990.000",
             status: "khai-truong.webp"

         },
         {
             name: "Apple Watch Series 8 Nhôm GPS",
             photo: "watch3.png",
             price: "9.590.000",
             discount: "11.990.000",
             status: "hotsale.png"

         },
         {
             name: "Apple Watch Ultra LTE 49mm Alpine Loop size S",
             photo: "watch4.png",
             price: "20.390.000",
             discount: "23.990.000",
             status: "hotsale.png"

         }
         
         ];
         $scope.ipod = [{
             name: "AirPods Max",
             photo: "pod1.jpeg",
             price: "12.590.000",
             discount: "13.990.000",
             

         },
         {
             name: "AirPods Pro 2",
             photo: "pod2.png",
             price: "5.990.000",
             discount: "6.790.000",
             status: "/image/banchay.webp"  

         },
         {
             name: "AirPods 2",
             photo: "pod3.jpeg",
             price: "2.890.000",
             discount: "4.390.000",
             status: "/image/banchay.webp"

         },
         {
             name: "AirPods 3 (2022) Lightning Charging Case",
             photo: "pod4.jpeg",
             price: "4.290.000",
             discount: "5.490.000",
             status: "/image/new.png"

         }
         
         ];
  });
  