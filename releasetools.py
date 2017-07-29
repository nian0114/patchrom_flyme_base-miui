import common
import edify_generator
import os

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "assert" in edify.script[i]:
      edify.script[i] = ''
      return

def RemoveDeviceGetprop(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return

def AddArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "mount(" in edify.script[i] and "system" in edify.script[i]:
      edify.script[i] = 'mount("ext4", "EMMC", "/dev/block/bootdevice/by-name/system", "/system");'
      return

def AddArgsForFormatData(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "mount(" in edify.script[i] and "userdata" in edify.script[i]:
      edify.script[i] = 'mount("ext4", "EMMC", "/dev/block/bootdevice/by-name/userdata", "/data");'
      return

def InstallBased(info):
    for filename in os.listdir("other/firmware-update"):
        if not (filename.find('.mbn')==-1 and filename.find('.bin')==-1 and filename.find('.elf')==-1 and filename.find('.img')==-1):
            data=open(os.path.join(os.getcwd(),"other/firmware-update",filename)).read()
            common.ZipWriteStr(info.output_zip, "firmware-update/" + filename, data)
    extra_img_flash = """ui_print("Patching firmware images...");
package_extract_file("firmware-update/cmnlib64.mbn", "/dev/block/bootdevice/by-name/cmnlib64");
package_extract_file("firmware-update/cmnlib.mbn", "/dev/block/bootdevice/by-name/cmnlib");
package_extract_file("firmware-update/hyp.mbn", "/dev/block/bootdevice/by-name/hyp");
package_extract_file("firmware-update/pmic.elf", "/dev/block/bootdevice/by-name/pmic");
package_extract_file("firmware-update/tz.mbn", "/dev/block/bootdevice/by-name/tz");
package_extract_file("firmware-update/emmc_appsboot.mbn", "/dev/block/bootdevice/by-name/aboot");
package_extract_file("firmware-update/lksecapp.mbn", "/dev/block/bootdevice/by-name/lksecapp");
package_extract_file("firmware-update/devcfg.mbn", "/dev/block/bootdevice/by-name/devcfg");
package_extract_file("firmware-update/keymaster.mbn", "/dev/block/bootdevice/by-name/keymaster");
package_extract_file("firmware-update/xbl.elf", "/dev/block/bootdevice/by-name/xbl");
package_extract_file("firmware-update/rpm.mbn", "/dev/block/bootdevice/by-name/rpm");
package_extract_file("firmware-update/cmnlib64.mbn", "/dev/block/bootdevice/by-name/cmnlib64bak");
package_extract_file("firmware-update/cmnlib.mbn", "/dev/block/bootdevice/by-name/cmnlibbak");
package_extract_file("firmware-update/hyp.mbn", "/dev/block/bootdevice/by-name/hypbak");
package_extract_file("firmware-update/pmic.elf", "/dev/block/bootdevice/by-name/pmicbak");
package_extract_file("firmware-update/tz.mbn", "/dev/block/bootdevice/by-name/tzbak");
package_extract_file("firmware-update/emmc_appsboot.mbn", "/dev/block/bootdevice/by-name/abootbak");
package_extract_file("firmware-update/lksecapp.mbn", "/dev/block/bootdevice/by-name/lksecappbak");
package_extract_file("firmware-update/devcfg.mbn", "/dev/block/bootdevice/by-name/devcfgbak");
package_extract_file("firmware-update/keymaster.mbn", "/dev/block/bootdevice/by-name/keymasterbak");
package_extract_file("firmware-update/xbl.elf", "/dev/block/bootdevice/by-name/xblbak");
package_extract_file("firmware-update/rpm.mbn", "/dev/block/bootdevice/by-name/rpmbak");
package_extract_file("firmware-update/splash.img", "/dev/block/bootdevice/by-name/splash");
package_extract_file("firmware-update/NON-HLOS.bin", "/dev/block/bootdevice/by-name/modem");
package_extract_file("firmware-update/logo.img", "/dev/block/bootdevice/by-name/logo");
package_extract_file("firmware-update/adspso.bin", "/dev/block/bootdevice/by-name/dsp");
package_extract_file("firmware-update/BTFM.bin", "/dev/block/bootdevice/by-name/bluetooth");"""
    info.script.AppendExtra(extra_img_flash);

def FullOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    RemoveDeviceGetprop(info)
    InstallBased(info)

def IncrementalOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    RemoveDeviceGetprop(info)
