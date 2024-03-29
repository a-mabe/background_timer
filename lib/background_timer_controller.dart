import 'package:flutter/widgets.dart';

///
/// Controller for Count down
///
class CountdownController {
  /// Called when pausing the timer.
  ///
  VoidCallback? onPause;

  /// Called when resuming the timer.
  ///
  VoidCallback? onResume;

  /// Called when restarting the timer.
  ///
  VoidCallback? onRestart;

  /// Called when the timer starts.
  ///
  VoidCallback? onStart;

  ///
  /// Checks if the timer is running and enables you to take actions
  /// according to that. if the timer is still active,
  ///
  /// `isCompleted` returns `false` and vice versa.
  ///
  /// for example:
  ///
  /// ``` dart
  ///   _controller.isCompleted ? _controller.restart() : _controller.pause();
  /// ```
  ///
  bool? isCompleted;

  /// Whether or not the timer should automatically begin.
  ///
  final bool autoStart;

  ///
  /// Constructor
  ///
  CountdownController({this.autoStart = false});

  ///
  /// Run timer
  ///
  start() {
    if (onStart != null) {
      onStart!();
    }
  }

  ///
  /// Set onStart callback.
  ///
  setOnStart(VoidCallback onStart) {
    this.onStart = onStart;
  }

  ///
  /// Set timer pause.
  ///
  pause() async {
    if (onPause != null) {
      onPause!();
    }
  }

  ///
  /// Set onPause callback.
  ///
  setOnPause(VoidCallback onPause) {
    this.onPause = onPause;
  }

  ///
  /// Resume from pause.
  ///
  resume() {
    if (onResume != null) {
      onResume!();
    }
  }

  ///
  /// Set onResume callback.
  ///
  setOnResume(VoidCallback onResume) {
    this.onResume = onResume;
  }

  ///
  /// Restart timer, starts things fresh.
  ///
  restart() {
    if (onRestart != null) {
      onRestart!();
    }
  }

  ///
  /// set onRestart callback.
  ///
  setOnRestart(VoidCallback onRestart) {
    this.onRestart = onRestart;
  }
}
