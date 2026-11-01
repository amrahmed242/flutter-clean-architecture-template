import 'package:material_ui/material_ui.dart';

enum NotifierState { busy, idle, error }

/*
 * ⚠️ OBSOLETE: kept for reference only, do not use it in new code.
 * this was the ChangeNotifier based page model from the provider package days.
 * use a riverpod `Notifier` / `AsyncNotifier` with a sealed state class instead,
 * see `features/users/controllers/`.
 *
 * @wrapper class for change notifier adding some helper methods that reduce
 *  boiler plate code in every page model
 * @added mounted option to stop calling build methods exception after disposal
 */
@Deprecated('Use a riverpod Notifier/AsyncNotifier with a sealed state class')
class BaseNotifier extends ChangeNotifier {
  NotifierState? _state;
  bool _mounted = true;

  BaseNotifier({NotifierState state = NotifierState.idle}) {
    _state = state;
  }

  bool get mounted => _mounted;
  NotifierState? get state => _state;
  bool get idle => _state == NotifierState.idle;
  bool get busy => _state == NotifierState.busy;
  bool get hasError => _state == NotifierState.error;

  void setBusy() => setState(state: NotifierState.busy);
  void setIdle() => setState(state: NotifierState.idle);
  void setError() => setState(state: NotifierState.error);

  void setState({NotifierState? state, bool notifyListener = true}) {
    if (state != null) _state = state;
    if (mounted && notifyListener) notifyListeners();
  }

  @override
  void dispose() {
    _mounted = false;
    super.dispose();
  }
}
