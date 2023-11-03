// import 'package:astrosel/bck/blocs/follower_cubit.dart';
// import 'package:astrosel/bck/blocs/notification_cubit.dart';
// import 'package:astrosel/bck/blocs/onoff_cubit.dart';
// import 'package:astrosel/bck/blocs/order_cubit.dart';
// import 'package:astrosel/bck/blocs/review_cubit.dart';
// import 'package:astrosel/bck/blocs/transcation_cubit.dart';
// import 'package:astrosel/bck/blocs/waitlist_cubit.dart';
// import 'package:astrosel/bck/blocs/wallet_cubit.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../bck/blocs/authenticate_bloc.dart';
// import '../bck/blocs/notify_cubit.dart';
// import '../bck/blocs/profile_cubit.dart';
// import '../bck/blocs/authorize_cubit.dart';

// import 'package:provider/single_child_widget.dart';

// class MainBloc {
//   static List<SingleChildWidget> allBlocs() {
//     return [
//       BlocProvider(create: (ctx) => AuthenticateCubit()),
//       BlocProvider(create: (ctx) => AuthorizeCubit()),
//       BlocProvider(create: (ctx) => FollowerCubit()),
//       BlocProvider(create: (ctx) => NotificationCubit()),
//       BlocProvider(create: (ctx) => OnOffCubit()),
//       BlocProvider(create: (ctx) => OrderCubit()),
//       BlocProvider(create: (ctx) => ProfileCubit()),
//       BlocProvider(create: (ctx) => ReviewCubit()),
//       BlocProvider(create: (ctx) => TranscationCubit()),
//       BlocProvider(create: (ctx) => WaitListCubit()),
//       BlocProvider(create: (ctx) => WalletCubit()),
//     ];
//   }
// }


//  // BlocBuilder(
//             // bloc: BlocProvider.of<ProfileCubit>(context)
//             //   ..profileShowCubit(context: context),
//             // builder: (context, state) {
//             //   if (state is ProfileErrorState) {
//             //     return const Center(
//             //       child: Text('Error'),
//             //     );
//             //   }