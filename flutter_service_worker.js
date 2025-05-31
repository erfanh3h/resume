'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "4bc087eee0fd43dfb6f659f904add6a0",
"assets/AssetManifest.bin.json": "3958dc454997d36d8b7165cbea0d142e",
"assets/AssetManifest.json": "f7f3f69140259224656ce64e7c633a6c",
"assets/assets/Fonts/PlayPen.ttf": "ce1525a7f985eb73fe7d3d86861644b8",
"assets/assets/Fonts/Vazir.ttf": "b295a26db726e74748c7280264b5d5d4",
"assets/assets/Images/arad.png": "22cd9b798a54c8b02f61864921310f76",
"assets/assets/Images/balout.jpg": "01b870a45ff1fc89f9f9d008dee75be8",
"assets/assets/Images/barg.png": "83be195e989d9d3e7699e6928affdd4a",
"assets/assets/Images/bitely.png": "fa87bfdb06159b241412adf8cdcc486e",
"assets/assets/Images/cafe-fekr.png": "5efcf39e4dcfc29717c6fb0c3f8d411b",
"assets/assets/Images/cssd.png": "60a836869bba0a9e5bc6e5217f2d7ebf",
"assets/assets/Images/mafia1400.jpg": "c5251c7bad777d182ba940d33e8fe9b3",
"assets/assets/Images/mentor.png": "82bc99f3665c17fd5033603db7986868",
"assets/assets/Images/meshkee.png": "e4f41feff08f8b5632e739ce3568caf1",
"assets/assets/Images/nojoum.png": "9b457063ca14ed018a940a4132c18a02",
"assets/assets/Images/pj1_1.png": "f5110940200d622800dc39702ec6ddac",
"assets/assets/Images/pj1_2.png": "1d2d65ea4c82f6ce5290e532e80332cf",
"assets/assets/Images/pj1_3.png": "e523b46fb9adb37ee80e39b330b4e7ab",
"assets/assets/Images/pj1_4.png": "c2943f905121e9097306a20ca6476abd",
"assets/assets/Images/pj1_5.png": "96db0cbf8980e8e1528ae23f62e1164a",
"assets/assets/Images/pj1_6.png": "d274b956533ecfb8ff9c0094ef088257",
"assets/assets/Images/pj2_1.png": "b509dec506deaa7b7abd26f90a579507",
"assets/assets/Images/pj2_2.png": "d4f0e1706208583fea29648efad8644b",
"assets/assets/Images/pj2_3.png": "b896bb79ca3e4ddd2575368a456bafa4",
"assets/assets/Images/pj2_4.png": "7df2c08c77d834e4db3fe86627461051",
"assets/assets/Images/pj2_5.png": "54661b851e2b98800d51bf4ac460c3ec",
"assets/assets/Images/pj2_6.png": "24230697896e96c20f329a6fecb3ae8c",
"assets/assets/Images/pj3_1.png": "b408fbab1fc0edbaae6091de49ca9e47",
"assets/assets/Images/pj3_2.png": "7e56ebcf7d80db2c8a55d663b67e22a2",
"assets/assets/Images/pj3_3.png": "157fed42343dca110e9dd4372d808dd5",
"assets/assets/Images/pj3_4.png": "3d52c96b0ba3625ef3fb81b2df120897",
"assets/assets/Images/pj3_5.png": "1e4577bacc7ab357e20ad5145f142335",
"assets/assets/Images/pj4_1.png": "c8b41417a5b6fdf8dd26a86439ec1d80",
"assets/assets/Images/pj4_2.png": "3a6ad4457e64ff4c80ba680a4cb2dae9",
"assets/assets/Images/pj4_3.png": "2eee2a1eda31a33d0fe6c2a7559ae57e",
"assets/assets/Images/pj4_4.png": "b5b8cb3955e9a3d83617524b7d62b2ea",
"assets/assets/Images/pj4_5.png": "bee5755b3f5fec5ee77fe251345529cc",
"assets/assets/Images/pj5_1.jpg": "02a7f7a44586f500fe3aaa6a9fb2c7fa",
"assets/assets/Images/pj5_2.png": "646b143aa99c529f715c6fab47d513fb",
"assets/assets/Images/pj5_3.jpg": "a8f816f271a991185e816beac92339c4",
"assets/assets/Images/pj5_4.jpg": "18180f6a90f087d29f99cbd6e207dde8",
"assets/assets/Images/pj6_1.png": "c91cd3f8c4d2d1ef556bd791f3876c53",
"assets/assets/Images/pj6_2.png": "c560a9dbd73a25cc91d5f92a982536f2",
"assets/assets/Images/pj6_3.png": "aca4ed4444243f811824851d8e0615de",
"assets/assets/Images/pj6_4.png": "8817464c90a12ec01e84ae682bc23363",
"assets/assets/Images/pj6_5.png": "8b00b35aa3516b1845c797d826687547",
"assets/assets/Images/pj6_6.png": "f1e3348d634576ce6b27bb0a6699d5b1",
"assets/assets/Images/pj9_1.png": "b11eef340dbb08f1bbc32394b6778f5d",
"assets/assets/Images/pj9_2.png": "f3cebff31f433c395ffe9d34a47aa4f0",
"assets/assets/Images/pj9_3.png": "28638ddf759e8dc4f79d67ae7ebd827e",
"assets/assets/Images/pj9_4.png": "8c6cfdeb7a97ede0aa5231907cf5804d",
"assets/assets/Images/pj9_5.png": "71b2968373faab992b1f79d870b25723",
"assets/assets/Images/profile.jpeg": "fc66a88467ebda0aa8c18578a88c5939",
"assets/assets/Images/qom-uni.png": "4a62c620f72c621642701920c5ef9c89",
"assets/FontManifest.json": "7412ea39283af31725a01120edbd08d2",
"assets/fonts/MaterialIcons-Regular.otf": "dc5477b9efaa5edea895f2e6973cbafa",
"assets/NOTICES": "7df6d3cc0ccd5f88d0026c188426fef8",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "2ee3f90b7b89ae63dd66419c1cf5d0eb",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "c01c7a33acedab1bab69fbe86e19e4b9",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a0d9178fd48271f13f82debf22a82d4f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "0292de19e6fbb720a639bd436cc5f146",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "27361387bc24144b46a745f1afe92b50",
"canvaskit/canvaskit.wasm": "a37f2b0af4995714de856e21e882325c",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "f7c5e5502d577306fb6d530b1864ff86",
"canvaskit/chromium/canvaskit.wasm": "c054c2c892172308ca5a0bd1d7a7754b",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "9fe690d47b904d72c7d020bd303adf16",
"canvaskit/skwasm.wasm": "1c93738510f202d9ff44d36a4760126b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "b17f90d0e010d19700759347e0137ff5",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "c8b61f7ad7b36173cffa5bc4ac98eede",
"/": "c8b61f7ad7b36173cffa5bc4ac98eede",
"main.dart.js": "8ebdd4d653cfc1296efa96a54f869bf5",
"manifest.json": "a2ad0cae3b0210961d701c011e443c7c",
"version.json": "5fc10240b73452c6a64964c44206397c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
