module Devices
  module Seeders
    module Constants
      # I alias these for convinience:
      ANALOG = CeleryScriptSettingsBag::ANALOG
      DIGITAL = CeleryScriptSettingsBag::DIGITAL

      module Names
        EXPRESS = "FarmBot Express"
        EXPRESS_XL = "FarmBot Express XL"
        GENESIS = "FarmBot Genesis"
        GENESIS_XL = "FarmBot Genesis XL"
      end

      module ProductLines
        GENESIS = :genesis
        EXPRESS = :express
        NONE = :none
      end

      module ToolNames
        SEED_BIN = "Seed Bin"
        SEED_TRAY = "Seed Tray"
        SEEDER = "Seeder"
        SOIL_SENSOR = "Soil Sensor"
        TOOL_VERIFICATION = "Tool Verification"
        VACUUM = "Vacuum"
        WATER = "Water"
        WATERING_NOZZLE = "Watering Nozzle"
        WEEDER = "Weeder"
      end

      # Stub plants ==============================
      PLANT_FIXTURE_PATH =
        "app/mutations/devices/seeders/plant_fixtures.yml"
      PLANTS = YAML.load(File.read(PLANT_FIXTURE_PATH))

      # Stub sequences ===========================
      SEQUENCE_FIXTURE_PATH =
        "app/mutations/devices/seeders/sequence_fixtures.yml"
      SEQUENCES = YAML.load(File.read(SEQUENCE_FIXTURE_PATH))

      SEQUENCE_MOUNT_TOOL = SEQUENCES.fetch(:MOUNT_TOOL)
      SEQUENCE_PICK_UP_SEED_EXPRESS = SEQUENCES.fetch(:PICK_UP_SEED_EXPRESS)
      SEQUENCE_PICK_UP_SEED_GENESIS = SEQUENCES.fetch(:PICK_UP_SEED_GENESIS)
      SEQUENCE_PLANT_SEED = SEQUENCES.fetch(:PLANT_SEED)
      SEQUENCE_TAKE_PHOTO_OF_PLANT = SEQUENCES.fetch(:TAKE_PHOTO_OF_PLANT)
      SEQUENCE_TOOL_ERROR = SEQUENCES.fetch(:TOOL_ERROR)
      SEQUENCE_UNMOUNT_TOOL = SEQUENCES.fetch(:UNMOUNT_TOOL)
      SEQUENCE_WATER_PLANT = SEQUENCES.fetch(:WATER_PLANT)
    end
  end
end
