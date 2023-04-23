# cz

Very basic application to illustrate some principles when using tokenized values and widgets in Flutter.

## Getting Started

There are 2 branches available:

- `main` - Contains the full implementation with all the widget providers and the differently branded applications
- `simple` - The simple setup of the app with the white label styling and no widget providers. To provide a simple starting point.

## Running the app

I recommend using _Flutter Version Manager_ ([fvm](https://fvm.app/)) to run the app. This will ensure that you are using the correct version of Flutter.

If you're a VSCode user, you can install the [fvm extension](https://marketplace.visualstudio.com/items?itemName=leoafarias.fvm) to make it even easier.
You can then also use the `launch` menu to launch the different flavors of the app.

If you want to launch from the command line you should run:

- `fvm flutter run -t lib/main.dart` for the default app
- `fvm flutter run -t lib/main_vl.dart` for the "VL" app
- `fvm flutter run -t lib/main_wl.dart` for the "WL" app
