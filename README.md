# Dart SpaceX API Client (v4)

[![pub package](https://img.shields.io/pub/v/spacex_api.svg)](https://pub.dev/packages/spacex_api)

![Build](https://github.com/ahsanz024/spacex_api/workflows/Build/badge.svg)

Dart wrapper for **[unofficial SpaceX API v4](https://github.com/r-spacex/SpaceX-API)** (with support for all endpoints and query subsystem in Dart), providing information about everything related to SpaceX and its public data.

- **Capsules** - detailed information about Dragon capsules.
- **Company** - detailed information about SpaceX as a company.
- **Cores** - detalied information about first stage cores.
- **Crew** - detailed information about Dragon crew members.
- **Dragons** - detailed information about Dragon capsule versions.
- **Landpads** - detailed information about landing pads and ships.
- **Launches** - detailed information about launches.
- **Launchpads** - detailed information about launchpads.
- **Payloads** - detailed information about launch payloads.
- **Roadster** - detailed information about Elon's Tesla Roadster.
- **Rockets** - detailed information about rocket versions.
- **Ships** - detailed information about ships in the SpaceX fleet.
- **Starlink** - detailed information about Starlink satellites and orbits.

## Examples

    // Fetch all items
    Future<void> getAllStarlink(SpaceXApi api) async {
        final response = await api.getAllStarlinks();
        if (response.statusCode == 200) {
            List<Starlink> data =
                Utils.convertResponseToList<Starlink>(response, (e) => Starlink.fromJson(e));
            print("Fetch Starlinks ${data.length}");
        }
    }

    // Query items
    Future<void> queryStarlinks(SpaceXApi api) async {
        final query = Options();
        query.limit = 25;
        query.page = 1;
        query.pagination = true;
        query.select = [
            "version",
            "height_km",
            "longitude",
        ];
        var queryJson = convert.jsonEncode(query.toJson());

        final response = await api.queryStarlinks(query: queryJson);
        if (response.statusCode == 200) {
            final jsonResp = Utils.parseResponseAsJson(response);
            PagenatedResponse pagenatedResponse = PagenatedResponse.fromJson(jsonResp);
            List<Starlink> data = pagenatedResponse.docs
                .map((e) => Starlink.fromJson(e))
                .cast<Starlink>()
                .toList();
            print("Qeury Starlinks ${data.length}");
        }
    }

More examples can be found in the **[Examples](/example/example.dart)**.
