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
                  {
                    "type": "truck_accident",
                    "label": "حادث شاحنة",
                  },
                  {
                    "type": "bicycle_accident",
                    "label": "حادث دراجة هوائية",
                  }
                ]
              },
              {
                "type": "robbery",
                "label": "سرقة",
                "suboptions": [
                  {
                    "type": "armed_robbery",
                    "label": "سرقة مسلحة",
                  },
                  {
                    "type": "home_burglary",
                    "label": "اقتحام منزل",
                  }
                ]
              }
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
                  {"type": "unconsciousness", "label": "فقدان الوعي"}
                ]
              },
              {
                "type": "injury",
                "label": "إصابة",
                "suboptions": [
                  {"type": "head_injury", "label": "إصابة في الرأس"},
                  {"type": "fracture", "label": "كسر"},
                  {"type": "bleeding", "label": "نزيف"}
                ]
              }
            ]
          },
          {
            "type": "fire_department",
            "label": "طوارئ إطفاء",
            "suboptions": [
              {
                "type": "building_fire",
                "label": "حريق مبنى",
                "suboptions": [
                  {"type": "residential_fire", "label": "حريق سكني"},
                  {"type": "commercial_fire", "label": "حريق تجاري"}
                ]
              },
              {
                "type": "wildfire",
                "label": "حريق غابات",
                "suboptions": [
                  {"type": "forest_fire", "label": "حريق غابة"},
                  {"type": "bush_fire", "label": "حريق شجيرات"}
                ]
              }
            ]
          }
        ]
      }
    }
  };
}
