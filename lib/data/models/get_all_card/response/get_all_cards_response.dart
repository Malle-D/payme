import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_cards_response.freezed.dart';

part 'get_all_cards_response.g.dart';

@freezed
class GetAllCardsResponse with _$GetAllCardsResponse {
  const factory GetAllCardsResponse(
    int? id,
    String? name,
    int? amount,
    String? owner,
    String? pan,
    @JsonKey(name: "expired-year")
    int? expiredYear,
    @JsonKey(name: "expired-month")
    int? expiredMonth,
    @JsonKey(name: "theme-type")
    int? themeType,
    bool? isVisible,
  ) = _GetAllCardsResponse;

  factory GetAllCardsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllCardsResponseFromJson(json);
}
