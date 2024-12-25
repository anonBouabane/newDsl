// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

List<CustomerModel> customerModelFromJson(String str) =>
    List<CustomerModel>.from(
        json.decode(str).map((x) => CustomerModel.fromJson(x)));

 
class CustomerModel {
  String? customerId;
  String? shopName;
  String? customerFullName;
  String? customerNickName;
  String? customerPhone;
  String? province;
  String? district;
  String? village;
  String? villageUnit;
  String? road;
  String? customerStatus;
  String? addBy;
  String? dateAdd;
  String? provinceId;
  String? provinceName;
  String? districtsId;
  String? districtsName;
  CustomerModel({
    this.customerId,
    this.shopName,
    this.customerFullName,
    this.customerNickName,
    this.customerPhone,
    this.province,
    this.district,
    this.village,
    this.villageUnit,
    this.road,
    this.customerStatus,
    this.addBy,
    this.dateAdd,
    this.provinceId,
    this.provinceName,
    this.districtsId,
    this.districtsName,
  });
  

  CustomerModel copyWith({
    String? customerId,
    String? shopName,
    String? customerFullName,
    String? customerNickName,
    String? customerPhone,
    String? province,
    String? district,
    String? village,
    String? villageUnit,
    String? road,
    String? customerStatus,
    String? addBy,
    String? dateAdd,
    String? provinceId,
    String? provinceName,
    String? districtsId,
    String? districtsName,
  }) {
    return CustomerModel(
      customerId: customerId ?? this.customerId,
      shopName: shopName ?? this.shopName,
      customerFullName: customerFullName ?? this.customerFullName,
      customerNickName: customerNickName ?? this.customerNickName,
      customerPhone: customerPhone ?? this.customerPhone,
      province: province ?? this.province,
      district: district ?? this.district,
      village: village ?? this.village,
      villageUnit: villageUnit ?? this.villageUnit,
      road: road ?? this.road,
      customerStatus: customerStatus ?? this.customerStatus,
      addBy: addBy ?? this.addBy,
      dateAdd: dateAdd ?? this.dateAdd,
      provinceId: provinceId ?? this.provinceId,
      provinceName: provinceName ?? this.provinceName,
      districtsId: districtsId ?? this.districtsId,
      districtsName: districtsName ?? this.districtsName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerId': customerId,
      'shopName': shopName,
      'customerFullName': customerFullName,
      'customerNickName': customerNickName,
      'customerPhone': customerPhone,
      'province': province,
      'district': district,
      'village': village,
      'villageUnit': villageUnit,
      'road': road,
      'customerStatus': customerStatus,
      'addBy': addBy,
      'dateAdd': dateAdd,
      'provinceId': provinceId,
      'provinceName': provinceName,
      'districtsId': districtsId,
      'districtsName': districtsName,
    };
  }

  factory CustomerModel.fromMap(Map<String, dynamic> map) {
    return CustomerModel(
      customerId: map['customerId'] != null ? map['customerId'] as String : null,
      shopName: map['shopName'] != null ? map['shopName'] as String : null,
      customerFullName: map['customerFullName'] != null ? map['customerFullName'] as String : null,
      customerNickName: map['customerNickName'] != null ? map['customerNickName'] as String : null,
      customerPhone: map['customerPhone'] != null ? map['customerPhone'] as String : null,
      province: map['province'] != null ? map['province'] as String : null,
      district: map['district'] != null ? map['district'] as String : null,
      village: map['village'] != null ? map['village'] as String : null,
      villageUnit: map['villageUnit'] != null ? map['villageUnit'] as String : null,
      road: map['road'] != null ? map['road'] as String : null,
      customerStatus: map['customerStatus'] != null ? map['customerStatus'] as String : null,
      addBy: map['addBy'] != null ? map['addBy'] as String : null,
      dateAdd: map['dateAdd'] != null ? map['dateAdd'] as String : null,
      provinceId: map['provinceId'] != null ? map['provinceId'] as String : null,
      provinceName: map['provinceName'] != null ? map['provinceName'] as String : null,
      districtsId: map['districtsId'] != null ? map['districtsId'] as String : null,
      districtsName: map['districtsName'] != null ? map['districtsName'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerModel.fromJson(String source) => CustomerModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CustomerModel(customerId: $customerId, shopName: $shopName, customerFullName: $customerFullName, customerNickName: $customerNickName, customerPhone: $customerPhone, province: $province, district: $district, village: $village, villageUnit: $villageUnit, road: $road, customerStatus: $customerStatus, addBy: $addBy, dateAdd: $dateAdd, provinceId: $provinceId, provinceName: $provinceName, districtsId: $districtsId, districtsName: $districtsName)';
  }

  @override
  bool operator ==(covariant CustomerModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.customerId == customerId &&
      other.shopName == shopName &&
      other.customerFullName == customerFullName &&
      other.customerNickName == customerNickName &&
      other.customerPhone == customerPhone &&
      other.province == province &&
      other.district == district &&
      other.village == village &&
      other.villageUnit == villageUnit &&
      other.road == road &&
      other.customerStatus == customerStatus &&
      other.addBy == addBy &&
      other.dateAdd == dateAdd &&
      other.provinceId == provinceId &&
      other.provinceName == provinceName &&
      other.districtsId == districtsId &&
      other.districtsName == districtsName;
  }

  @override
  int get hashCode {
    return customerId.hashCode ^
      shopName.hashCode ^
      customerFullName.hashCode ^
      customerNickName.hashCode ^
      customerPhone.hashCode ^
      province.hashCode ^
      district.hashCode ^
      village.hashCode ^
      villageUnit.hashCode ^
      road.hashCode ^
      customerStatus.hashCode ^
      addBy.hashCode ^
      dateAdd.hashCode ^
      provinceId.hashCode ^
      provinceName.hashCode ^
      districtsId.hashCode ^
      districtsName.hashCode;
  }
}
