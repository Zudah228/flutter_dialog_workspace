import 'package:flutter/material.dart';

const defaultDialogDuration = Duration(milliseconds: 100);
const defaultDialogBarrieColor = Colors.black54;

class DialogBarrier extends StatefulWidget {
  const DialogBarrier({
    super.key,
    required this.child,
    required this.visible,
    required this.hide,
    this.barrierDismissible = true,
    this.duration = defaultDialogDuration,
  });

  final bool visible;
  final VoidCallback? hide;
  final Widget child;
  final bool barrierDismissible;
  final Duration duration;

  @override
  State<DialogBarrier> createState() => _DialogBarrierState();
}

class _DialogBarrierState extends State<DialogBarrier> {
  final _animationWidgetKey = GlobalKey<_DialogAnimationState>();

  /// アニメーション終了まで、以前の Widget を表示させる
  late Widget _child = widget.child;

  /// アニメーションを終了させてから非表示にする
  var _visible = false;

  @override
  void didUpdateWidget(covariant DialogBarrier oldWidget) {
    _child = widget.child;

    // visible に変化があった場合の発火
    if (oldWidget.visible != widget.visible) {
      // 削除されるときに値をリセットした場合、dispose アニメーション中には以前の widget を表示しておく。
      if (!widget.visible) {
        _child = oldWidget.child;
      }

      Future(() async {
        if (widget.visible) {
          await _animationWidgetKey.currentState?.forward();
        } else {
          await _animationWidgetKey.currentState?.reverse();
        }
        setState(() {
          _visible = widget.visible;
        });
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _visible,
      child: _DialogAnimation(
        key: _animationWidgetKey,
        duration: widget.duration,
        child: SizedBox.expand(
          child: GestureDetector(
            onTap: widget.barrierDismissible ? widget.hide : null,
            child: ColoredBox(
              color: defaultDialogBarrieColor,
              child: GestureDetector(
                // onTap ジェスチャーの上書き
                onTap: () {},
                child: _child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _DialogAnimation extends StatefulWidget {
  const _DialogAnimation(
      {Key? key, required this.child, required this.duration})
      : super(key: key);

  final Widget child;
  final Duration duration;

  @override
  _DialogAnimationState createState() => _DialogAnimationState();
}

class _DialogAnimationState extends State<_DialogAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late Animation<double> _animation;

  Future<void> forward() async {
    await _animationController.forward();
  }

  Future<void> reverse() async {
    await _animationController.reverse();
  }

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: widget.duration);

    final tween = Tween(begin: 0.0, end: 1.0);

    _animation = tween.animate(_animationController)..addListener(() {});
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.reverse();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: widget.child,
    );
  }
}
