import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_vessel_widget.dart' show AddVesselWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AddVesselModel extends FlutterFlowModel<AddVesselWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for vesselName widget.
  TextEditingController? vesselNameController;
  String? Function(BuildContext, String?)? vesselNameControllerValidator;
  // State field(s) for vesselLength widget.
  TextEditingController? vesselLengthController;
  String? Function(BuildContext, String?)? vesselLengthControllerValidator;
  // State field(s) for vessel_id widget.
  TextEditingController? vesselIdController;
  String? Function(BuildContext, String?)? vesselIdControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    vesselNameController?.dispose();
    vesselLengthController?.dispose();
    vesselIdController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
