'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "64bb930bbb0c81134aaa7069bb8d3516",
"main.dart.js": "422bde0e8831c7a60c9b10aa628c2606",
"index.html": "bd4ef9042bf6bd1b99f9240592fec1bd",
"/": "bd4ef9042bf6bd1b99f9240592fec1bd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/AssetManifest.json": "375a102677f982367152d0d08c1144ed",
"assets/NOTICES": "859ab71d49226254132312914d06213a",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/images/fedex_logo.png": "bdf2d1c2a1be0a7436a09df6135bf12b",
"assets/assets/images/bg.png": "0264de1bd129967fbace17edc9604107",
"assets/assets/images/logo.png": "20f64179f4ec172dbc4094f4cc924a97",
"assets/assets/images/logo2.png": "f8f6d902f1e13e05dd387d822684bea4",
"assets/assets/images/hubspot_logo.png": "4a4e85f1e682407980bdb9c6db0b5fda",
"assets/assets/images/app_store.png": "d5e8445e5167025d7b3826aa9f7b07d2",
"assets/assets/images/google_logo.png": "df071bec17de3d0929681ef7fd0357ca",
"assets/assets/images/walmart_logo.png": "97a5799e698092f68892f110e8132e29",
"assets/assets/images/phone_mockup_2.png": "1a548811331568b2b1a99335c0fcf429",
"assets/assets/images/phone_mockup.png": "fec52807c79e4ea6e6095d8731e51210",
"assets/assets/images/cover_img.png": "35d077f20fda4729190f43eb56dc42a5",
"assets/assets/images/bookmyshow_logo.png": "28a6ced46b99d56280c71cea58c1e6a4",
"assets/assets/images/right_arrow.png": "8c17c1b450a90184a58a9d4f9ada73b4",
"assets/assets/images/feature_icons/03.png": "be623f25ee3740ff6be04c2ee1d9f321",
"assets/assets/images/feature_icons/07.png": "f816798404449cf027a3b365ced3643b",
"assets/assets/images/feature_icons/06.png": "4aec800e1e736dc2b2f2cd8ea052b1ae",
"assets/assets/images/feature_icons/05.png": "ecffeb698c512f4506dbf4c9b106e5db",
"assets/assets/images/feature_icons/01.png": "6c6311c2d27530d3a69e68667c227444",
"assets/assets/images/feature_icons/02.png": "20968e4b13c5aa42ab194c5d98dbec3d",
"assets/assets/images/feature_icons/04.png": "bd7c1c600daae5ad1e58a8d5a9b1764a",
"assets/assets/images/quote_mark.png": "77222515b645fc41b3244c98f43445ff",
"assets/assets/images/airbnb_logo.png": "9817e31a10bda862091f2c2f42963103",
"assets/assets/images/google_play.png": "b825d7db06064b64109c278edfb2ab12",
"assets/assets/images/microsoft_logo.png": "952a51d611cac8582b6f8c35c68cc311",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"icons/apple-icon-60x60.png": "2fda7c0f65ae7f8bb3021376b2afb61c",
"icons/browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"icons/ms-icon-310x310.png": "7a96ea87011b2505660ea001d12d327f",
"icons/apple-icon-120x120.png": "e17ead8734b5c68217f7a0b1823a097e",
"icons/apple-icon.png": "66afdf89b0ff72516280a7d9f2873dd1",
"icons/favicon.ico": "c084cf249d97d84c4e817a1726e75077",
"icons/android-icon-192x192.png": "c34bdf36f7e335b2b8aaef0b836d0a76",
"icons/android-icon-48x48.png": "9805272b75e49df1a2144f4df6aff9f1",
"icons/ms-icon-144x144.png": "692a3e500f89df86b1d8a5d8bdbedded",
"icons/ms-icon-70x70.png": "57b207bcdf7892db5d5f5b634e30822d",
"icons/android-icon-144x144.png": "692a3e500f89df86b1d8a5d8bdbedded",
"icons/apple-icon-144x144.png": "692a3e500f89df86b1d8a5d8bdbedded",
"icons/apple-icon-precomposed.png": "66afdf89b0ff72516280a7d9f2873dd1",
"icons/favicon-16x16.png": "318191cf8ce82f5f4b48873f05bd4358",
"icons/favicon-32x32.png": "eb528e246a78a176e856a0c7c1216901",
"icons/android-icon-36x36.png": "807e5c26aceaa6ef30f57189722234e3",
"icons/android-icon-72x72.png": "9362f4142e44ec182ef1fc226c026a66",
"icons/ms-icon-150x150.png": "c6ef6ab09915efb4f804fd8bc9f72dbd",
"icons/android-icon-96x96.png": "ebc5c69459f71a5a82fa71392968e06a",
"icons/apple-icon-180x180.png": "5d4e8fc9882a41f3d255d3a16e50439e",
"icons/apple-icon-72x72.png": "9362f4142e44ec182ef1fc226c026a66",
"icons/apple-icon-152x152.png": "f2b589507aabb6c7c50afc8cbf1d2810",
"icons/apple-icon-57x57.png": "3eddf86cff454a2a4dde8e36c2ae9aef",
"icons/apple-icon-76x76.png": "fe3df1067aef337df496b331c0c57f06",
"icons/favicon-96x96.png": "ebc5c69459f71a5a82fa71392968e06a",
"icons/apple-icon-114x114.png": "1e1552c1341fa729437c84d9213338d3",
"manifest.json": "c9860747c144e1d3256378be6ed5451f",
"favicon.png": "5dcef449791fa27946b3d35ad8803796"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
