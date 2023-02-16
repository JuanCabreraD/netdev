from dnacentersdk import api

dnac = api.DNACenterAPI(base_url='https://sandboxdnac2.cisco.com:443',username='devnetuser',password='Cisco123!', verify=False)

try:
  devices = dnac.devices.get_device_list()
  for device in devices.response:
    print(device['hostname']," ", device['managementIpAddress'])
except ApiError as e:
  print(e)