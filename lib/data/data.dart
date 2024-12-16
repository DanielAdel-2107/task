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
                    "suboptions": [
                      {"type": "minor_damage", "label": "أضرار بسيطة"},
                      {"type": "major_damage", "label": "أضرار كبيرة"},
                      {"type": "collision", "label": "تصادم"}
                    ]
                  },
                  {
                    "type": "motorcycle_accident",
                    "label": "حادث دراجة نارية",
                    "suboptions": [
                      {
                        "type": "single_motorcycle",
                        "label": "حادث دراجة منفردة"
                      },
                      {
                        "type": "motorcycle_car_collision",
                        "label": "تصادم مع سيارة"
                      }
                    ]
                  },
                  {
                    "type": "truck_accident",
                    "label": "حادث شاحنة",
                    "suboptions": [
                      {"type": "cargo_spill", "label": "تسرب حمولة"},
                      {"type": "overturn", "label": "انقلاب شاحنة"}
                    ]
                  },
                  {
                    "type": "bicycle_accident",
                    "label": "حادث دراجة هوائية",
                    "suboptions": [
                      {
                        "type": "pedestrian_collision",
                        "label": "تصادم مع مشاة"
                      },
                      {"type": "vehicle_collision", "label": "تصادم مع مركبة"}
                    ]
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
                    "suboptions": [
                      {"type": "store_robbery", "label": "سرقة متجر"},
                      {"type": "bank_robbery", "label": "سرقة بنك"}
                    ]
                  },
                  {
                    "type": "home_burglary",
                    "label": "اقتحام منزل",
                    "suboptions": [
                      {"type": "forced_entry", "label": "اقتحام بالقوة"},
                      {"type": "stealth_entry", "label": "اقتحام خفي"}
                    ]
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
              },
              {
                "type": "child_birth",
                "label": "ولادة طارئة",
                "suboptions": [
                  {"type": "premature_birth", "label": "ولادة مبكرة"},
                  {"type": "complications", "label": "مضاعفات الولادة"}
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
              },
              {
                "type": "chemical_fire",
                "label": "حريق كيميائي",
                "suboptions": [
                  {"type": "industrial_fire", "label": "حريق صناعي"},
                  {"type": "hazardous_material", "label": "مواد خطرة"}
                ]
              }
            ]
          }
        ]
      }
    }
  };
}
