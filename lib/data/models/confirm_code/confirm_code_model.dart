import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_code_model.g.dart';
part 'confirm_code_model.freezed.dart';

@freezed
class ConfirmCodeModel with _$ConfirmCodeModel {
  @JsonSerializable(explicitToJson: true)

  const factory ConfirmCodeModel(
      @JsonKey(name: 'token')
      String token,
      @JsonKey(name: 'code')
      String code
      ) = _ConfirmCodeModel;

  factory ConfirmCodeModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmCodeModelFromJson(json);
}
