.class public Lcom/miui/whetstone/WhetstoneServiceNative;
.super Lcom/miui/whetstone/IWhetstone$Stub;
.source "WhetstoneServiceNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/whetstone/IWhetstone$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelLocationRequest(Lcom/miui/whetstone/ILocationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/miui/whetstone/ILocationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    return-void
.end method

.method public checkAppTheShotScreenPermission(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public checkIfAppBelongToActive(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public checkIfHaveTheCallFunctionPermission(III)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "callPid"    # I
    .param p3, "callUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public checkIfProcessBelongToActive(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public completeBackagroundAllModes(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public completeBackgroundModes(III)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I
    .locals 1
    .param p1, "config"    # Lcom/miui/whetstone/WhetstoneConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveAppListByLevel(I)Ljava/util/List;
    .locals 1
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveAppListByType(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationActiveLevel(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationThread(I)Landroid/os/IBinder;
    .locals 1
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBatteryCapacity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getBatteryChargeTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBatteryCurrentNow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getBatteryStandbyTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getComponentManager()Lcom/miui/whetstone/IComponentManager;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundApplicationThread()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundApplicationUid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundPreTaskApp()Lcom/miui/whetstone/AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetokToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessActiveLevel(Ljava/lang/String;II)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public getProcessBackgourndModes(II)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public getSmartConfigLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getWhetstoneLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 1
    .param p1, "applicationThread"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWhetstonePackageInfo(Ljava/lang/String;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z
    .locals 1
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public isInCharging()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public isNeeded(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public killApplication(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restartMask"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public log(I[B)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    return-void
.end method

.method public putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "database"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public registTargetProcessForegroundNotify(Ljava/lang/String;Ljava/util/List;Lcom/miui/whetstone/IProcessForegroundCallback;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/miui/whetstone/IProcessForegroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/whetstone/IProcessForegroundCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public registerActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    .locals 1
    .param p1, "listner"    # Lcom/miui/whetstone/active/IActiveAppStatusChange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public registerAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/miui/whetstone/IAppObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "info"    # Lcom/miui/whetstone/CloudControlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/whetstone/CloudControlInfo;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/CloudControlInfo;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public registerPackageStatusNotify(Ljava/util/List;Ljava/util/List;Lcom/miui/whetstone/IPkgStatusCallback;)V
    .locals 0
    .param p3, "callback"    # Lcom/miui/whetstone/IPkgStatusCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/whetstone/IPkgStatusCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "targetPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "targetActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public requestBackgroundModes(III)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/ILocationCallback;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/miui/whetstone/ILocationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    return-void
.end method

.method public screenShot(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public setWhetstoneLevel(I)V
    .locals 0
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    return-void
.end method

.method public unregisterActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    .locals 1
    .param p1, "listner"    # Lcom/miui/whetstone/active/IActiveAppStatusChange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/miui/whetstone/IAppObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    return-void
.end method

.method public unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public updateActiveProcessStatus(IIII)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "type"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    return-void
.end method

.method public updateProcessCurrentPss(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "pss"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    return-void
.end method

.method public wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "bssid"    # Ljava/lang/String;
    .param p4, "capabilities"    # Ljava/lang/String;
    .param p5, "mac"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "result"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method

.method public wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "bssid"    # Ljava/lang/String;
    .param p4, "capabilities"    # Ljava/lang/String;
    .param p5, "mac"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    return-void
.end method

.method public wifiSmartConfigStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    return-void
.end method

.method public wifiSmartConfigSupport()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/String;
    .param p3, "did"    # J
    .param p5, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/String;
    .param p3, "did"    # J
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    return-void
.end method
