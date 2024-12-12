class StaticData {
  static Map<String, dynamic> data = {
    "data": {
      "type": "emergency",
      "attributes": {
        "options": [
          {
            "type": "police",
            "label": "طوارئ شرطة",
            "suboptions": [
              {
                "type": "accident",
                "label": "حادث مروري",
                "suboptions": [
                  {
                    "type": "car_accident",
                    "label": "حادث سيارة",
                  },
                  {
                    "type": "motorcycle_accident",
                    "label": "حادث دراجة نارية",
                  },
                  // ... المزيد من الأنواع
                ]
              },
              // ... المزيد من أنواع الحوادث
            ]
          },
          {
            "type": "ambulance",
            "label": "طوارئ إسعاف",
            "suboptions": [
              {
                "type": "heart_attack",
                "label": "أزمة قلبية",
                "suboptions": [
                  {"type": "chest_pain", "label": "ألم في الصدر"},
                  {"type": "shortness_of_breath", "label": "ضيق في التنفس"},
                  // ... المزيد من الأعراض
                ]
              },
              // ... المزيد من الحالات الطبية
            ]
          },
          // ... المزيد من أنواع الطوارئ
        ]
      }
    }
  };
}
