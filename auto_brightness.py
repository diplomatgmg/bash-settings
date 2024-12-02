import time

ILLUMINANCE = "/sys/bus/iio/devices/iio:device0/in_illuminance_raw"
BRIGHTNESS = "/sys/class/backlight/amdgpu_bl1/brightness"
MIN_BRIGHTNESS = 0
MAX_BRIGHTNESS = 255
MIN_ILLUMINANCE = 1000
MAX_ILLUMINANCE = 2752


def get_current_brightness() -> int:
    try:
        with open(BRIGHTNESS, "r") as f:
            return int(f.read().strip())
    except:  # noqa
        return MIN_BRIGHTNESS


def get_current_illuminance() -> int:
    try:
        with open(ILLUMINANCE, "r") as f:
            return max(MIN_ILLUMINANCE, int(f.read().strip()))
    except:  # noqa
        return 0


def set_brightness(brightness: int):
    """Запись яркости в файл."""
    try:
        brightness = max(MIN_BRIGHTNESS, min(brightness, MAX_BRIGHTNESS))
        with open(BRIGHTNESS, "w") as f:
            f.write(str(brightness))
    except:  # noqa
        pass


def main():
    while True:
        current_brightness = get_current_brightness()
        current_illuminance = get_current_illuminance()

        needed_brightness = int(
            ((MAX_BRIGHTNESS * current_illuminance) / MAX_ILLUMINANCE) + MIN_BRIGHTNESS
        )

        if current_brightness != needed_brightness:
            step = 1 if needed_brightness > current_brightness else -1
            for brightness in range(current_brightness, needed_brightness, step):
                set_brightness(brightness)
                time.sleep(0.01)

        time.sleep(1)


if __name__ == "__main__":
    main()
