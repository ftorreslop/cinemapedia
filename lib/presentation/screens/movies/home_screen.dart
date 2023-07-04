import 'package:flutter/material.dart';

import 'package:cinemapedia/presentation/views/views.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  final int pageIndex;

  const HomeScreen({super.key, required this.pageIndex});

  final viewRoutes = const <Widget>[HomeView(), SizedBox(), FavoritesView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
      bottomNavigationBar: CustomBottomNavigation(currentIndex: pageIndex),
    );
  }
}

// class _HomeView extends ConsumerStatefulWidget {
//   const _HomeView();

//   @override
//   _HomeViewState createState() => _HomeViewState();
// }

// class _HomeViewState extends ConsumerState<_HomeView> {
//   @override
//   void initState() {
//     super.initState();
//     ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
//     ref.read(popularMoviesProvider.notifier).loadNextPage();
//     ref.read(upcomingMoviesProvider.notifier).loadNextPage();
//     ref.read(topRatedMoviesProvider.notifier).loadNextPage();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final initialLoading = ref.watch(initialLoadigProvider);

//     if (initialLoading) return const FullScreenLoader();

//     final slideshowMovies = ref.watch(moviesSlideshowProvider);
//     final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
//     final popularMovies = ref.watch(popularMoviesProvider);
//     final upcomingMovies = ref.watch(upcomingMoviesProvider);
//     final topRatedMovies = ref.watch(topRatedMoviesProvider);

//     return CustomScrollView(
//       slivers: [
//         const SliverAppBar(
//           floating: true,
//           flexibleSpace: FlexibleSpaceBar(
//             title: CustomAppbar(),
//           ),
//         ),
//         SliverList(
//             delegate: SliverChildBuilderDelegate(
//           (context, index) {
//             return Column(
//               children: [
//                 // const CustomAppbar(),
//                 MoviesSlideshow(movies: slideshowMovies),
//                 MovieHorizontalListview(
//                   movies: nowPlayingMovies,
//                   title: 'En cines',
//                   subTitle: 'Lunes 20',
//                   loadNextPage: () {
//                     ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
//                   },
//                 ),
//                 MovieHorizontalListview(
//                   movies: upcomingMovies,
//                   title: 'Proximamente',
//                   loadNextPage: () {
//                     ref.read(upcomingMoviesProvider.notifier).loadNextPage();
//                   },
//                 ),
//                 MovieHorizontalListview(
//                   movies: popularMovies,
//                   title: 'Populares',
//                   loadNextPage: () {
//                     ref.read(popularMoviesProvider.notifier).loadNextPage();
//                   },
//                 ),
//                 MovieHorizontalListview(
//                   movies: topRatedMovies,
//                   title: 'Mejor calificadas',
//                   subTitle: 'Desde siempre',
//                   loadNextPage: () {
//                     ref.read(topRatedMoviesProvider.notifier).loadNextPage();
//                   },
//                 ),
//                 const SizedBox(height: 10),
//               ],
//             );
//           },
//           childCount: 1,
//         )),
//       ],
//     );
//   }
// }
