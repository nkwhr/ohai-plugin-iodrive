ohai-plugin-iodrive
==================

Ohai plugin for ioDrive

Usage
------

via ohai command

```
$ ohai -d /path/to/plugin_dir | jq .iodrive
```

```json
{
  "installed": true,
  "adapter": [
    {
      "board_kind": "Single Controller Adapter",
      "board_name": "ioDrive2 Adapter Controller",
      "bus_amps": "0.77",
      "bus_volts": "11.91",
      "bus_watts": "8.92",
      "external_power_connected": "0",
      "external_power_override": "0",
      "external_power_requirement": "None",
      "fio_serial_number": "xxxxxxxxxx",
      "has_adapter": "0",
      "has_pcie_correctable_errors": "0",
      "has_pcie_errors": "0",
      "has_pcie_fatal_errors": "0",
      "has_pcie_nonfatal_errors": "0",
      "has_pcie_unrecognized_reqs": "0",
      "iomemory": [
        {
          "active_media_pct": "100.00",
          "atomic_writes_available": "0",
          "beacon_state": "0",
          "board_kind": "Single Controller Adapter",
          "board_name": "ioDrive2 Adapter Controller",
          "ctrl_dev_path": "/dev/fct0",
          "current_errors": "",
          "current_info": "",
          "current_sysmon_alert_type": "0",
          "current_warnings": "",
          "device_label": "HP 785GB MLC PCIe ioDrive2 for ProLiant Servers 0000:07:00.0",
          "device_name": "fct0",
          "device_path": "/dev/fct0",
          ...
          "virtual_controller_active_count": "1",
          "virtual_controller_number": "0",
          "vsu": [
            {
              "device_name": "fioa",
              "device_path": "/dev/fioa",
              "numeric_id": "0",
              "persistent_uid": "bce47d56-43f6-4490-af88-d90d2a707235",
              "sector_count": "191650390",
              "sector_size_bytes": "4096",
              "size_bytes": "784999997440",
              "vsu_state": "Online",
              "vsu_type": "block device"
            }
          ],
          "write_pwr_throttling_count": "0",
          "write_reg_power_level": "Inactive",
          "write_reg_thermal_level": "Inactive",
          "write_reg_total_level": "Inactive",
          "write_thermal_throttling_count": "0",
          "write_throttling_reason": "No reason given.",
          "write_throttling_state": "None"
        }
      ],
      "min_driver_version": "3.2.2",
      "num_expected_iom": "1",
      ...
      "pcie_bandwidth_compatibility": "Optimal",
      "pcie_bandwidth_mbps": "2000.00",
      "pcie_link_lanes": "4",
      "pcie_link_speed_gtps": "5.0",
      "power_limit_watts": "24.75",
      "power_monitor_enabled": "1",
      "powercut_holdup_type": "Self",
      "product_name": "HP 785GB MLC PCIe ioDrive2 for ProLiant Servers",
      "product_name_short": "785GB ioDrive2",
      "required_pcie_bandwidth_mbps": "2000",
      "serial_number": "xxxxxxxxxxx"
    }
  ],
  "host": [
    {
      "driver_loaded": "1",
      "ram_available_kernel_bytes": "59119407104",
      "ram_available_physical_bytes": "59929944064",
      "ram_available_virtual_bytes": "34359697408",
      "ram_total_physical_bytes": "67514236928",
      "ram_total_virtual_bytes": "34359697408"
    }
  ],
  "version": "1.0"
}
```
