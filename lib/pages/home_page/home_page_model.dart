import '/backend/backend.dart';
import '/components/notification_colreg2_widget.dart';
import '/components/notification_colreg_widget.dart';
import '/components/notification_critical_widget.dart';
import '/components/notification_status2_widget.dart';
import '/components/notification_status_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for Notification_colreg2 component.
  late NotificationColreg2Model notificationColreg2Model;
  // Model for Notification_colreg component.
  late NotificationColregModel notificationColregModel;
  // Model for Notification_Critical component.
  late NotificationCriticalModel notificationCriticalModel;
  // Model for Notification_status component.
  late NotificationStatusModel notificationStatusModel;
  // Model for Notification_status2 component.
  late NotificationStatus2Model notificationStatus2Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    notificationColreg2Model =
        createModel(context, () => NotificationColreg2Model());
    notificationColregModel =
        createModel(context, () => NotificationColregModel());
    notificationCriticalModel =
        createModel(context, () => NotificationCriticalModel());
    notificationStatusModel =
        createModel(context, () => NotificationStatusModel());
    notificationStatus2Model =
        createModel(context, () => NotificationStatus2Model());
  }

  void dispose() {
    notificationColreg2Model.dispose();
    notificationColregModel.dispose();
    notificationCriticalModel.dispose();
    notificationStatusModel.dispose();
    notificationStatus2Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
