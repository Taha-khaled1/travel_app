import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_flutter/presentation_layer/resources/color_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/font_manager.dart';
import 'package:travel_app_flutter/presentation_layer/resources/styles_manager.dart';

class StepperPage extends StatefulWidget {
  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          switch (orientation) {
            case Orientation.portrait:
              return _buildStepper(StepperType.vertical);
            case Orientation.landscape:
              return _buildStepper(StepperType.horizontal);
            default:
              throw UnimplementedError(orientation.toString());
          }
        },
      ),
    );
  }

  CupertinoStepper _buildStepper(StepperType type) {
    final canCancel = currentStep > 0;
    final canContinue = currentStep < 4;
    return CupertinoStepper(
      physics: NeverScrollableScrollPhysics(),
      type: type,
      currentStep: currentStep,
      onStepTapped: (step) => setState(() => currentStep = step),
      onStepCancel: canCancel ? () => setState(() => --currentStep) : null,
      onStepContinue: canContinue ? () => setState(() => ++currentStep) : null,
      steps: [
        // for (var i = 0; i < 4; ++i)
        //   _buildStep(
        //     title: Text('الرحله جاريه ${i + 1}'),
        //     isActive: i == currentStep,
        //     state: i == currentStep
        //         ? StepState.editing
        //         : i < currentStep
        //             ? StepState.complete
        //             : StepState.indexed,
        //   ),
        _buildStep(
          description: 'يتم التحضير الي الرحله وتلقي الحجوزات',
          title: Text('الرحله جاريه'),
          state: StepState.complete,
        ),
        _buildStep(
          description: 'بدات الرحله وتم تجميع كل المسافرين',
          title: Text('الرحله بدات'),
          state: StepState.complete,
        ),
        _buildStep(
          description: 'تم ايقاف الرحله يرجي التواصل معنا للاستفسار',
          title: Text('تم ايقاف الرحله '),
          state: StepState.error,
        ),
        _buildStep(
          description: 'مغلق',
          title: Text('مغلق'),
          state: StepState.disabled,
        )
      ],
    );
  }

  Step _buildStep(
      {required Widget title,
      StepState state = StepState.indexed,
      bool isActive = false,
      required description}) {
    return Step(
      title: title,
      subtitle: Text(' '),
      state: state,
      isActive: isActive,
      content: LimitedBox(
        maxWidth: 400,
        maxHeight: 250,
        child: Container(
          margin: const EdgeInsets.only(top: 8, right: 8),
          alignment: Alignment.topRight,
          color: CupertinoColors.white,
          child: Text(
            description,
            textAlign: TextAlign.right,
            style: MangeStyles().getBoldStyle(
              color: ColorManager.kTexttow,
              fontSize: FontSize.s16,
            ),
          ),
        ),
      ),
    );
  }
}
