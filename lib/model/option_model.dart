class OptionModel {
  final String type;
  final String label;
  final List<Suboptions> suboptions;

  OptionModel(this.suboptions, {required this.type, required this.label});

  factory OptionModel.fromJson(Map<String, dynamic> json) {
    return OptionModel(
      (json['suboptions'] as List)
          .map((item) => Suboptions.fromJson(item))
          .toList(),
      type: json['type'],
      label: json['label'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'label': label,
      'suboptions': suboptions.map((item) => item.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return 'OptionModel(type: $type, label: $label, suboptions: $suboptions)';
  }
}

class Suboptions {
  final String type;
  final String label;
  final List<Suboptions>? suboptions;

  Suboptions({
    required this.type,
    required this.label,
    this.suboptions,
  });

  factory Suboptions.fromJson(Map<String, dynamic> json) {
    return Suboptions(
      type: json['type'],
      label: json['label'],
      suboptions: json['suboptions'] != null
          ? (json['suboptions'] as List)
              .map((item) => Suboptions.fromJson(item))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'label': label,
      'suboptions': suboptions?.map((item) => item.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return 'Suboptions(type: $type, label: $label, suboptions: $suboptions)';
  }
}
