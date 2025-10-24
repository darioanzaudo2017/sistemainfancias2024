import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomePageWidget() : Auth2LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomePageWidget() : Auth2LoginWidget(),
        ),
        FFRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: PerfilWidget.routeName,
          path: PerfilWidget.routePath,
          builder: (context, params) => PerfilWidget(
            idingreso: params.getParam(
              'idingreso',
              ParamType.int,
            ),
            rowexp: params.getParam<VistaExpedientesUltimoEstadoRow>(
              'rowexp',
              ParamType.SupabaseRow,
            ),
            usuariorow: params.getParam<UsuariosRow>(
              'usuariorow',
              ParamType.SupabaseRow,
            ),
            spd: params.getParam<SpdRow>(
              'spd',
              ParamType.SupabaseRow,
            ),
            usuariorol: params.getParam<VistaUsuariosRolesRow>(
              'usuariorol',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: IngresosWidget.routeName,
          path: IngresosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => IngresosWidget(
            idexpediente: params.getParam<VistaExpedientesUltimoEstadoRow>(
              'idexpediente',
              ParamType.SupabaseRow,
            ),
            idexp: params.getParam(
              'idexp',
              ParamType.int,
            ),
            usuariorow: params.getParam<UsuariosRow>(
              'usuariorow',
              ParamType.SupabaseRow,
            ),
            spd: params.getParam<SpdRow>(
              'spd',
              ParamType.SupabaseRow,
            ),
            idcarpeta: params.getParam(
              'idcarpeta',
              ParamType.String,
            ),
            usuariorol: params.getParam<VistaUsuariosRolesRow>(
              'usuariorol',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: DefiniciondemedidasWidget.routeName,
          path: DefiniciondemedidasWidget.routePath,
          builder: (context, params) => DefiniciondemedidasWidget(
            ingresorow: params.getParam<IngresosRow>(
              'ingresorow',
              ParamType.SupabaseRow,
            ),
            rowexp: params.getParam<VistaExpedientesUltimoEstadoRow>(
              'rowexp',
              ParamType.SupabaseRow,
            ),
            usuariorow: params.getParam<UsuariosRow>(
              'usuariorow',
              ParamType.SupabaseRow,
            ),
            usuariosrol: params.getParam<VistaUsuariosRolesRow>(
              'usuariosrol',
              ParamType.SupabaseRow,
            ),
            spd: params.getParam<SpdRow>(
              'spd',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: ActaacuerdoWidget.routeName,
          path: ActaacuerdoWidget.routePath,
          builder: (context, params) => ActaacuerdoWidget(),
        ),
        FFRoute(
          name: Auth2CreateWidget.routeName,
          path: Auth2CreateWidget.routePath,
          builder: (context, params) => Auth2CreateWidget(
            idrol: params.getParam(
              'idrol',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Auth2LoginWidget.routeName,
          path: Auth2LoginWidget.routePath,
          builder: (context, params) => Auth2LoginWidget(),
        ),
        FFRoute(
          name: Auth2ForgotPasswordWidget.routeName,
          path: Auth2ForgotPasswordWidget.routePath,
          builder: (context, params) => Auth2ForgotPasswordWidget(),
        ),
        FFRoute(
          name: Auth2ProfileWidget.routeName,
          path: Auth2ProfileWidget.routePath,
          builder: (context, params) => Auth2ProfileWidget(),
        ),
        FFRoute(
          name: Auth2EditProfileWidget.routeName,
          path: Auth2EditProfileWidget.routePath,
          builder: (context, params) => Auth2EditProfileWidget(),
        ),
        FFRoute(
          name: Formulario5PaginaWidget.routeName,
          path: Formulario5PaginaWidget.routePath,
          builder: (context, params) => Formulario5PaginaWidget(
            idingreso: params.getParam(
              'idingreso',
              ParamType.int,
            ),
            rowexpediente: params.getParam<VistaExpedientesUltimoEstadoRow>(
              'rowexpediente',
              ParamType.SupabaseRow,
            ),
            rowingreso: params.getParam<IngresosRow>(
              'rowingreso',
              ParamType.SupabaseRow,
            ),
            edit: params.getParam(
              'edit',
              ParamType.bool,
            ),
            usuariorow: params.getParam<UsuariosRow>(
              'usuariorow',
              ParamType.SupabaseRow,
            ),
            usuariorol: params.getParam<VistaUsuariosRolesRow>(
              'usuariorol',
              ParamType.SupabaseRow,
            ),
            spd: params.getParam<SpdRow>(
              'spd',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: SenafWidget.routeName,
          path: SenafWidget.routePath,
          builder: (context, params) => SenafWidget(
            ingrow: params.getParam<IngresosRow>(
              'ingrow',
              ParamType.SupabaseRow,
            ),
            expediente: params.getParam<VistaExpedientesUltimoEstadoRow>(
              'expediente',
              ParamType.SupabaseRow,
            ),
            usuariorow: params.getParam<UsuariosRow>(
              'usuariorow',
              ParamType.SupabaseRow,
            ),
            usuariorol: params.getParam<VistaUsuariosRolesRow>(
              'usuariorol',
              ParamType.SupabaseRow,
            ),
            spdrow: params.getParam<SpdRow>(
              'spdrow',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: DashboardWidget.routeName,
          path: DashboardWidget.routePath,
          builder: (context, params) => DashboardWidget(
            usuariorow: params.getParam<UsuariosRow>(
              'usuariorow',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: ImprimirWidget.routeName,
          path: ImprimirWidget.routePath,
          builder: (context, params) => ImprimirWidget(
            idexpediente: params.getParam(
              'idexpediente',
              ParamType.int,
            ),
            idigreso: params.getParam(
              'idigreso',
              ParamType.int,
            ),
            exp: params.getParam(
              'exp',
              ParamType.String,
            ),
            fechaexp: params.getParam(
              'fechaexp',
              ParamType.DateTime,
            ),
            exprow: params.getParam<VistaExpedientesUltimoEstadoRow>(
              'exprow',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: AdminWidget.routeName,
          path: AdminWidget.routePath,
          builder: (context, params) => AdminWidget(
            usuariosroles: params.getParam<VistaUsuariosRolesRow>(
              'usuariosroles',
              ParamType.SupabaseRow,
            ),
            usuariorow: params.getParam<UsuariosRow>(
              'usuariorow',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: Caratula2Widget.routeName,
          path: Caratula2Widget.routePath,
          builder: (context, params) => Caratula2Widget(
            usuario: params.getParam<UsuariosRow>(
              'usuario',
              ParamType.SupabaseRow,
            ),
            spd: params.getParam<SpdRow>(
              'spd',
              ParamType.SupabaseRow,
            ),
            usuriorol: params.getParam<VistaUsuariosRolesRow>(
              'usuriorol',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: Respuestaform6pageWidget.routeName,
          path: Respuestaform6pageWidget.routePath,
          builder: (context, params) => Respuestaform6pageWidget(
            idingreso: params.getParam<IngresosRow>(
              'idingreso',
              ParamType.SupabaseRow,
            ),
            expedienterow: params.getParam<VistaExpedientesUltimoEstadoRow>(
              'expedienterow',
              ParamType.SupabaseRow,
            ),
            idform6: params.getParam(
              'idform6',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: PruebarlsWidget.routeName,
          path: PruebarlsWidget.routePath,
          builder: (context, params) => PruebarlsWidget(),
        ),
        FFRoute(
          name: InformesenafWidget.routeName,
          path: InformesenafWidget.routePath,
          builder: (context, params) => InformesenafWidget(
            link: params.getParam(
              'link',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: EntrevistasCopyWidget.routeName,
          path: EntrevistasCopyWidget.routePath,
          builder: (context, params) => EntrevistasCopyWidget(
            ingresorow: params.getParam(
              'ingresorow',
              ParamType.int,
            ),
            rowexp: params.getParam<VistaExpedientesUltimoEstadoRow>(
              'rowexp',
              ParamType.SupabaseRow,
            ),
            usuariorow: params.getParam<UsuariosRow>(
              'usuariorow',
              ParamType.SupabaseRow,
            ),
            usuariorol: params.getParam<VistaUsuariosRolesRow>(
              'usuariorol',
              ParamType.SupabaseRow,
            ),
            spd: params.getParam<SpdRow>(
              'spd',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: ExpedienterlsWidget.routeName,
          path: ExpedienterlsWidget.routePath,
          builder: (context, params) => ExpedienterlsWidget(),
        ),
        FFRoute(
          name: Auth2ForgotPasswordCopyWidget.routeName,
          path: Auth2ForgotPasswordCopyWidget.routePath,
          builder: (context, params) => Auth2ForgotPasswordCopyWidget(),
        ),
        FFRoute(
          name: HomestitchWidget.routeName,
          path: HomestitchWidget.routePath,
          builder: (context, params) => HomestitchWidget(),
        ),
        FFRoute(
          name: AdminzonaWidget.routeName,
          path: AdminzonaWidget.routePath,
          builder: (context, params) => AdminzonaWidget(
            usuariosroles: params.getParam<VistaUsuariosRolesRow>(
              'usuariosroles',
              ParamType.SupabaseRow,
            ),
            usuariorow: params.getParam<UsuariosRow>(
              'usuariorow',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: Auth2CreateCopyWidget.routeName,
          path: Auth2CreateCopyWidget.routePath,
          builder: (context, params) => Auth2CreateCopyWidget(
            idrol: params.getParam(
              'idrol',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: PaginapruebaqueryWidget.routeName,
          path: PaginapruebaqueryWidget.routePath,
          builder: (context, params) => PaginapruebaqueryWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/auth2Login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
