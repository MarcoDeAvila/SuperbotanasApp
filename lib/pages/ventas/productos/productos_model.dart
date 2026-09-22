import '/components/filters_widget.dart';
import '/components/menubar/menubar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'productos_widget.dart' show ProductosWidget;
import 'package:flutter/material.dart';

class ProductosModel extends FlutterFlowModel<ProductosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Filters component.
  late FiltersModel filtersModel;
  // Model for menubar component.
  late MenubarModel menubarModel;

  @override
  void initState(BuildContext context) {
    filtersModel = createModel(context, () => FiltersModel());
    menubarModel = createModel(context, () => MenubarModel());
  }

  @override
  void dispose() {
    filtersModel.dispose();
    menubarModel.dispose();
  }
}
