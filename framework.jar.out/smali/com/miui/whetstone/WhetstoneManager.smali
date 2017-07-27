.class public abstract Lcom/miui/whetstone/WhetstoneManager;
.super Ljava/lang/Object;
.source "WhetstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneManager$PermissionFile;,
        Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field private static ws:Lcom/miui/whetstone/IWhetstone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 29
    const-string v0, "persist.sys.whetstone.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/WhetstoneManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    return-void
.end method

.method static synthetic access$002(Lcom/miui/whetstone/IWhetstone;)Lcom/miui/whetstone/IWhetstone;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/IWhetstone;

    .prologue
    .line 26
    sput-object p0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object p0
.end method

.method public static cancelLocationRequest(Lcom/miui/whetstone/ILocationCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/miui/whetstone/ILocationCallback;

    .prologue
    .line 681
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 682
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 684
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->cancelLocationRequest(Lcom/miui/whetstone/ILocationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkAppTheShotScreenPermission(II)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 742
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 743
    const/4 v1, 0x1

    .line 744
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 746
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->checkAppTheShotScreenPermission(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 751
    :cond_0
    :goto_0
    return v1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkIfAppBelongToActive(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 248
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 252
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->checkIfAppBelongToActive(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 257
    :cond_0
    :goto_0
    return v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkIfHaveTheCallFunctionPermission(III)Z
    .locals 2
    .param p0, "type"    # I
    .param p1, "callPid"    # I
    .param p2, "callUid"    # I

    .prologue
    .line 658
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 659
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 661
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->checkIfHaveTheCallFunctionPermission(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 666
    :goto_0
    return v1

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 666
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkIfProcessBelongToActive(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 262
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 266
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->checkIfProcessBelongToActive(Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 271
    :cond_0
    :goto_0
    return v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkIfSupportWhestone()Z
    .locals 5

    .prologue
    .line 614
    const/4 v2, 0x0

    .line 615
    .local v2, "result":Z
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v3, :cond_1

    .line 616
    const-string v3, "miui.whetstone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v3

    sput-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 618
    :try_start_0
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v3, :cond_0

    .line 619
    new-instance v0, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;

    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-direct {v0, v3}, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    .line 620
    .local v0, "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v3}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    const/4 v2, 0x1

    .line 630
    .end local v0    # "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    :cond_0
    :goto_0
    return v2

    .line 623
    :catch_0
    move-exception v1

    .line 624
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 625
    const/4 v3, 0x0

    sput-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    goto :goto_0

    .line 628
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static checkService()V
    .locals 0

    .prologue
    .line 62
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->getService()Lcom/miui/whetstone/IWhetstone;

    .line 63
    return-void
.end method

.method public static completeBackagroundAllModes(II)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 346
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 350
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->completeBackagroundAllModes(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 355
    :cond_0
    :goto_0
    return v1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static completeBackgroundModes(III)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "type"    # I

    .prologue
    .line 332
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 333
    const/4 v1, 0x0

    .line 334
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 336
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->completeBackgroundModes(III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 341
    :cond_0
    :goto_0
    return v1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I
    .locals 3
    .param p0, "config"    # Lcom/miui/whetstone/WhetstoneConfig;

    .prologue
    .line 588
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 589
    const/4 v1, 0x0

    .line 590
    .local v1, "ret":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 592
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 597
    :cond_0
    :goto_0
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->clearDeadAppFromNative()V

    .line 598
    return v1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActiveAppListByLevel(I)Ljava/util/List;
    .locals 3
    .param p0, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 238
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getActiveAppListByLevel(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 243
    :cond_0
    :goto_0
    return-object v0

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActiveAppListByType(I)Ljava/util/List;
    .locals 3
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 224
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getActiveAppListByType(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 229
    :cond_0
    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getApplicationActiveLevel(Ljava/lang/String;I)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 277
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, "level":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 281
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->getApplicationActiveLevel(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 286
    :cond_0
    :goto_0
    return v1

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getApplicationThread(I)Landroid/os/IBinder;
    .locals 3
    .param p0, "pid"    # I

    .prologue
    .line 205
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "applicationThread":Landroid/os/IBinder;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 209
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getApplicationThread(I)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    :cond_0
    :goto_0
    return-object v0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryCapacity()I
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "capacity":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 124
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getBatteryCapacity()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryChargeTime()J
    .locals 4

    .prologue
    .line 133
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 134
    const-wide/16 v0, 0x0

    .line 135
    .local v0, "ct":J
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v3, :cond_0

    .line 137
    :try_start_0
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v3}, Lcom/miui/whetstone/IWhetstone;->getBatteryChargeTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 142
    :cond_0
    :goto_0
    return-wide v0

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryCurrentNow()I
    .locals 3

    .prologue
    .line 158
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "cn":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 162
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getBatteryCurrentNow()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryStandbyTime()J
    .locals 4

    .prologue
    .line 146
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 147
    const-wide/16 v0, 0x0

    .line 148
    .local v0, "ct":J
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v3, :cond_0

    .line 150
    :try_start_0
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v3}, Lcom/miui/whetstone/IWhetstone;->getBatteryStandbyTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 155
    :cond_0
    :goto_0
    return-wide v0

    .line 151
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getComponentManager()Lcom/miui/whetstone/IComponentManager;
    .locals 3

    .prologue
    .line 722
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 723
    const/4 v1, 0x0

    .line 724
    .local v1, "ret":Lcom/miui/whetstone/IComponentManager;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 726
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getComponentManager()Lcom/miui/whetstone/IComponentManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 731
    :cond_0
    :goto_0
    return-object v1

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundApplicationThread()Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 403
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "applicationThread":Landroid/os/IBinder;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 407
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getForegroundApplicationThread()Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 412
    :cond_0
    :goto_0
    return-object v0

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundApplicationUid()I
    .locals 3

    .prologue
    .line 645
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 646
    const/4 v1, 0x0

    .line 647
    .local v1, "uid":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 649
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getForegroundApplicationUid()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 654
    :cond_0
    :goto_0
    return v1

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundPreTaskApp()Lcom/miui/whetstone/AppInfo;
    .locals 3

    .prologue
    .line 797
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 798
    const/4 v1, 0x0

    .line 799
    .local v1, "info":Lcom/miui/whetstone/AppInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 801
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getForegroundPreTaskApp()Lcom/miui/whetstone/AppInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 806
    :cond_0
    :goto_0
    return-object v1

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMetokToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 602
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 603
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 605
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1}, Lcom/miui/whetstone/IWhetstone;->getMetokToken()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 610
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 606
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 607
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 610
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getProcessActiveLevel(Ljava/lang/String;II)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 291
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, "level":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 295
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->getProcessActiveLevel(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 300
    :cond_0
    :goto_0
    return v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getProcessBackgourndModes(II)I
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 360
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, "mode":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 364
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->getProcessBackgourndModes(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 369
    :cond_0
    :goto_0
    return v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getService()Lcom/miui/whetstone/IWhetstone;
    .locals 4

    .prologue
    .line 46
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v2, :cond_0

    .line 47
    const-string v2, "miui.whetstone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 49
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 50
    new-instance v0, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;

    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-direct {v0, v2}, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    .line 51
    .local v0, "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object v2

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const/4 v2, 0x0

    sput-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    goto :goto_0
.end method

.method public static getSmartConfigLevel()I
    .locals 3

    .prologue
    .line 562
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 563
    const/4 v1, 0x0

    .line 564
    .local v1, "ret":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 566
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getSmartConfigLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 571
    :cond_0
    :goto_0
    return v1

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstoneLeve()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/whetstone/WhetstoneManager;->getWhetstoneLeve(I)I

    move-result v0

    return v0
.end method

.method public static getWhetstoneLeve(I)I
    .locals 3
    .param p0, "defValue"    # I

    .prologue
    .line 107
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 108
    move v1, p0

    .line 109
    .local v1, "level":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 111
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getWhetstoneLevel()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 3
    .param p0, "applicationThread"    # Landroid/os/IBinder;

    .prologue
    .line 177
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 181
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    :cond_0
    :goto_0
    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstonePackageInfo(Ljava/lang/String;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 195
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getWhetstonePackageInfo(Ljava/lang/String;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    :cond_0
    :goto_0
    return-object v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 3
    .param p0, "event"    # Landroid/view/InputEvent;
    .param p1, "mode"    # I

    .prologue
    .line 479
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 480
    const/4 v1, 0x0

    .line 481
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 483
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 488
    :cond_0
    :goto_0
    return v1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z
    .locals 3
    .param p0, "packageURI"    # Landroid/net/Uri;
    .param p1, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p2, "flags"    # I

    .prologue
    .line 505
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 506
    const/4 v1, 0x0

    .line 507
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 509
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 514
    :cond_0
    :goto_0
    return v1

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isBitmapCacheNeeded()Z
    .locals 4

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 69
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 71
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/miui/whetstone/IWhetstone;->isNeeded(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isInCharging()Z
    .locals 3

    .prologue
    .line 575
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 579
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->isInCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 584
    :cond_0
    :goto_0
    return v1

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isOPENGLDisableNeeded()Z
    .locals 4

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 83
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 85
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/miui/whetstone/IWhetstone;->isNeeded(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static killApplication(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "restartMask"    # I
    .param p2, "uid"    # I

    .prologue
    .line 709
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 710
    const/4 v1, 0x1

    .line 711
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 713
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->killApplication(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 718
    :cond_0
    :goto_0
    return v1

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static log(I[B)V
    .locals 0
    .param p0, "tag"    # I
    .param p1, "data"    # [B

    .prologue
    .line 757
    return-void
.end method

.method public static putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "database"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 493
    const/4 v1, 0x0

    .line 494
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 496
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 501
    :cond_0
    :goto_0
    return v1

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static registTargetProcessForegroundNotify(Ljava/lang/String;Ljava/util/List;Lcom/miui/whetstone/IProcessForegroundCallback;)V
    .locals 2
    .param p0, "from"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/miui/whetstone/IProcessForegroundCallback;
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

    .prologue
    .line 764
    .local p1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 765
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 767
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->registTargetProcessForegroundNotify(Ljava/lang/String;Ljava/util/List;Lcom/miui/whetstone/IProcessForegroundCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    .locals 3
    .param p0, "listner"    # Lcom/miui/whetstone/active/IActiveAppStatusChange;

    .prologue
    .line 374
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 378
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->registerActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 383
    :cond_0
    :goto_0
    return v1

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/miui/whetstone/IAppObserver;

    .prologue
    .line 775
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 776
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 778
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->registerAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestBackgroundModes(III)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "type"    # I

    .prologue
    .line 318
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 322
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->requestBackgroundModes(III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 327
    :cond_0
    :goto_0
    return v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/ILocationCallback;)V
    .locals 2
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/miui/whetstone/ILocationCallback;

    .prologue
    .line 670
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 671
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 673
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/ILocationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static screenShot(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 466
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 467
    const/4 v1, 0x0

    .line 468
    .local v1, "ret":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 470
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->screenShot(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 475
    :cond_0
    :goto_0
    return-object v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setWhetstoneLeve(I)V
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 95
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 96
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->setWhetstoneLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static unregisterActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    .locals 3
    .param p0, "listner"    # Lcom/miui/whetstone/active/IActiveAppStatusChange;

    .prologue
    .line 388
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 389
    const/4 v1, 0x0

    .line 390
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 392
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->unregisterActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    :cond_0
    :goto_0
    return v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static unregisterAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/miui/whetstone/IAppObserver;

    .prologue
    .line 786
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 787
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 789
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->unregisterAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateActiveProcessStatus(IIII)V
    .locals 2
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "type"    # I
    .param p3, "status"    # I

    .prologue
    .line 305
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 306
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 308
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/miui/whetstone/IWhetstone;->updateActiveProcessStatus(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateProcessCurrentPss(II)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "pss"    # I

    .prologue
    .line 634
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 635
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 637
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->updateProcessCurrentPss(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/whetstone/WhetstoneResultBinder;)V
    .locals 8
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/miui/whetstone/WhetstoneResultBinder;

    .prologue
    .line 417
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 418
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 420
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v7

    .line 422
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 423
    new-instance v0, Lcom/miui/whetstone/WhetstoneResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstoneResult;-><init>(I)V

    invoke-virtual {p4, v0}, Lcom/miui/whetstone/WhetstoneResultBinder;->onResult(Lcom/miui/whetstone/WhetstoneResult;)V

    goto :goto_0
.end method

.method public static wifiSmartConfigAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 7
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "result"    # Landroid/os/IBinder;

    .prologue
    .line 532
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/whetstone/WhetstoneManager;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 534
    return-void
.end method

.method public static wifiSmartConfigMacAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/whetstone/WhetstoneResultBinder;)V
    .locals 8
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/miui/whetstone/WhetstoneResultBinder;

    .prologue
    .line 430
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 431
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 433
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v7

    .line 435
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Lcom/miui/whetstone/WhetstoneResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstoneResult;-><init>(I)V

    invoke-virtual {p5, v0}, Lcom/miui/whetstone/WhetstoneResultBinder;->onResult(Lcom/miui/whetstone/WhetstoneResult;)V

    .line 436
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 9
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "result"    # Landroid/os/IBinder;

    .prologue
    .line 519
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 520
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 522
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v8

    .line 525
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigStop()V
    .locals 2

    .prologue
    .line 442
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 443
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 445
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 446
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 447
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigSupport()Z
    .locals 3

    .prologue
    .line 453
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 457
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigSupport()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 462
    :cond_0
    :goto_0
    return v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "token"    # Ljava/lang/String;

    .prologue
    .line 549
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 550
    const/4 v7, 0x0

    .line 551
    .local v7, "ret":Ljava/lang/String;
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 553
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 558
    :cond_0
    :goto_0
    return-object v7

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/IBinder;

    .prologue
    .line 538
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 539
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 541
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
