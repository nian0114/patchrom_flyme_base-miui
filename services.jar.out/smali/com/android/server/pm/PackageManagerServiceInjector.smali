.class Lcom/android/server/pm/PackageManagerServiceInjector;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;,
        Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    }
.end annotation


# static fields
.field private static final APP_LIST_FILE:Ljava/lang/String; = "/system/etc/install_app_filter.xml"

.field private static final BLOCK_APPS:[[Ljava/lang/String;

.field static final DELETE_FAILED_FORBIDED_BY_MIUI:I = -0x3e8

.field static final INSTALL_IGNORE_PACKAGE:I = -0x3e8

.field private static final IS_X7_LTE_ALL:Z

.field private static final MSG_INSTALL_APP_GOON:I = 0x0

.field private static final PACKAGE_INSTALLER_NAME:Ljava/lang/String; = "com.google.android.packageinstaller"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final SUPPORT_OLDMAN_MODE:Ljava/lang/String; = "support_oldman_mode"

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_ADD_APPS:Ljava/lang/String; = "add_apps"

.field private static final TAG_APP:Ljava/lang/String; = "app"

.field private static final TAG_IGNORE_APPS:Ljava/lang/String; = "ignore_apps"

.field static mHandler:Landroid/os/Handler;

.field private static msBlockAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnoreApks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnorePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotDisable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sShellCheckPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sXSpaceFriendlyActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    const-class v0, Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    .line 90
    const-string v0, "X7-LTE-ALL"

    const-string v1, "persist.radio.modem"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageManagerServiceInjector;->IS_X7_LTE_ALL:Z

    .line 93
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v1, "/system/app/TSMClient"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v1, "/system/app/NfcNci"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v1, "/system/priv-app/SmartcardService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    const-string v0, "support_fm"

    invoke-static {v0, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v1, "/system/app/FM.apk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v1, "/system/app/FM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceInjector;->IS_X7_LTE_ALL:Z

    if-eqz v0, :cond_2

    .line 104
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v1, "/system/app/VirtualSim.apk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v1, "/system/app/VirtualSim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->readIgnoreApks()V

    .line 110
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    const-string v1, "com.sogou.inputmethod.mi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    new-array v0, v6, [[Ljava/lang/String;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.jeejen.home"

    aput-object v2, v1, v4

    const-string v2, "com.jeejen.contact"

    aput-object v2, v1, v5

    const-string v2, "com.jeejen.jjbox"

    aput-object v2, v1, v6

    const-string v2, "com.jeejen.helper"

    aput-object v2, v1, v7

    const-string v2, "com.jeejen.container.miui"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "com.jeejen.family.miui"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.jeejen.family.miui.mms"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.jeejen.store"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.jeejen.knowledge"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.miui.home"

    aput-object v2, v1, v4

    const-string v2, "com.android.mms"

    aput-object v2, v1, v5

    const-string v2, "com.android.contacts"

    aput-object v2, v1, v6

    const-string v2, "com.android.launcher3"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    .line 369
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->msBlockAppMap:Ljava/util/Map;

    .line 743
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$1;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerServiceInjector$1;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandler:Landroid/os/Handler;

    .line 787
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    .line 790
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    const-string v1, "com.sina.weibo.action.sdkidentity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    const-string v1, "com.sina.weibo.remotessoservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    .line 823
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.finddevice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    .line 845
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.BACKUP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.CLEAR_APP_USER_DATA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.MANAGE_DEVICE_ADMINS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    const-string v0, "ro.debuggable"

    invoke-static {v0, v4}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_4

    const-string v0, "ro.secureboot.devicelock"

    invoke-static {v0, v4}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "unlocked"

    const-string v1, "ro.secureboot.lockstate"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 863
    :cond_3
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 866
    :cond_4
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static addIgnoreApk(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 185
    if-eqz p0, :cond_0

    .line 186
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    return-void
.end method

.method static addIgnorePackage(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 195
    if-eqz p0, :cond_0

    .line 196
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    return-void
.end method

.method static addLostPackagePropertyForOta(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 706
    const-string v0, "com.google.android.setupwizard"

    .line 707
    .local v0, "SetupWizardPkg":Ljava/lang/String;
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    .line 709
    if-eqz p0, :cond_2

    .line 710
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 711
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1

    .line 712
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 713
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 724
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 716
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v3, "pm Argument is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 721
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 719
    :cond_2
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v3, "context Argument is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static addMiuiSharedUids(Lcom/android/server/pm/Settings;Z)V
    .locals 5
    .param p0, "settings"    # Lcom/android/server/pm/Settings;
    .param p1, "multipleUids"    # Z

    .prologue
    const/16 v1, 0x2710

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 209
    const-string v2, "android.uid.backup"

    if-eqz p1, :cond_1

    const/16 v0, 0x2648

    :goto_0
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 213
    const-string v2, "android.uid.theme"

    if-eqz p1, :cond_2

    const/16 v0, 0x2649

    :goto_1
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 217
    const-string v2, "android.uid.updater"

    if-eqz p1, :cond_3

    const/16 v0, 0x264a

    :goto_2
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 221
    const-string v0, "android.uid.finddevice"

    if-eqz p1, :cond_0

    const/16 v1, 0x2652

    :cond_0
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 225
    return-void

    :cond_1
    move v0, v1

    .line 209
    goto :goto_0

    :cond_2
    move v0, v1

    .line 213
    goto :goto_1

    :cond_3
    move v0, v1

    .line 217
    goto :goto_2
.end method

.method static adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZ)V
    .locals 0
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "scannedPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "forceDexOpt"    # Z
    .param p4, "deferDexOpt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/content/pm/PackageParser$Package;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, "packagesForUser":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZ)V

    .line 439
    return-void
.end method

.method static adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZZ)V
    .locals 0
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "scannedPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "forceDexOpt"    # Z
    .param p4, "deferDexOpt"    # Z
    .param p5, "bootComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/content/pm/PackageParser$Package;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "packagesForUser":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    invoke-static/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 444
    return-void
.end method

.method static checkAndResolveFlags(Landroid/content/Intent;Ljava/lang/String;II)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 795
    if-eqz p0, :cond_0

    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    or-int/lit16 p2, p2, 0x2000

    .line 801
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return p2
.end method

.method static checkAndRunPreInstallation(Landroid/os/Handler;Landroid/os/Message;)Z
    .locals 8
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 728
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 729
    .local v2, "param":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->getApkPathFromInstallParams(Lcom/android/server/pm/PackageManagerService$InstallParams;)Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "apkPath":Ljava/lang/String;
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v3

    .line 731
    .local v3, "policy":Lcom/miui/whetstone/PowerKeeperPolicy;
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "check if need preinstall apps"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {v3, v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkPreInstallNeeded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 733
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pending installation for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;-><init>(Landroid/os/Handler;Landroid/os/Message;)V

    .line 735
    .local v1, "p":Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v4, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->registerForAppsPreInstalled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 736
    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->preInstallApps()V

    .line 737
    const/4 v4, 0x1

    .line 739
    .end local v1    # "p":Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
    :cond_0
    return v4
.end method

.method static checkApk(Landroid/content/Context;Landroid/os/Message;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "systemReady"    # Z

    .prologue
    .line 423
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->checkApk(Landroid/content/Context;Landroid/os/Message;Z)Z

    move-result v0

    return v0
.end method

.method static checkApkOnlySupport32BitForUserMode(Landroid/content/pm/PackageParser$Package;)V
    .locals 0
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 428
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->checkApkOnlySupport32BitForUserMode(Landroid/content/pm/PackageParser$Package;)V

    .line 430
    return-void
.end method

.method static checkMiuiIntent(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .locals 12
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 293
    .local p4, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_a

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_a

    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v1, :cond_a

    .line 294
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.intent.category.HOME"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 338
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 339
    move/from16 v0, p5

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 343
    :cond_1
    :goto_1
    return-object v10

    .line 298
    :cond_2
    const-string v1, "com.miui.home"

    const-string v2, "com.miui.home.launcher.Launcher"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 300
    :cond_3
    const-string v1, "http"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "https"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 302
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lmiui/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 304
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v10, :cond_1

    .line 309
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 310
    move-object/from16 v0, p4

    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBrowserResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 311
    if-eqz v10, :cond_0

    goto :goto_1

    .line 315
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5
    const-string v1, "mimarket"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "market"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 318
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 319
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_0

    .line 320
    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 321
    .local v8, "host":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v1, "details"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "search"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    :cond_7
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 323
    .restart local v10    # "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_0

    goto/16 :goto_1

    .line 329
    .end local v8    # "host":Ljava/lang/String;
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_8
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const-string v9, "com.google.android.packageinstaller"

    .line 331
    .local v9, "realPkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    const-string v3, "com.google.android.packageinstaller"

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 333
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    const-string v3, "com.google.android.packageinstaller"

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 335
    :cond_9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    const-string v1, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {p1, v9, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 335
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 343
    .end local v9    # "realPkgName":Ljava/lang/String;
    :cond_a
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    goto/16 :goto_1
.end method

.method static checkMiuiSdk(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 674
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->checkMiuiSdk(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService;)Z

    move-result v0

    return v0
.end method

.method static checkPackageForUserModeLPw(Lcom/android/server/pm/PackageSetting;)V
    .locals 15
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 372
    const-string v11, "support_oldman_mode"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 374
    sget-object v11, Lcom/android/server/pm/PackageManagerServiceInjector;->msBlockAppMap:Ljava/util/Map;

    if-nez v11, :cond_2

    .line 375
    sget-object v12, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    monitor-enter v12

    .line 376
    :try_start_0
    sget-object v11, Lcom/android/server/pm/PackageManagerServiceInjector;->msBlockAppMap:Ljava/util/Map;

    if-nez v11, :cond_1

    .line 377
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    sput-object v11, Lcom/android/server/pm/PackageManagerServiceInjector;->msBlockAppMap:Ljava/util/Map;

    .line 378
    const/4 v7, 0x0

    .local v7, "mode":I
    :goto_0
    sget-object v11, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    array-length v11, v11

    if-ge v7, v11, :cond_1

    .line 379
    sget-object v11, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    aget-object v1, v11, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v0, v1, v4

    .line 380
    .local v0, "app":Ljava/lang/String;
    sget-object v11, Lcom/android/server/pm/PackageManagerServiceInjector;->msBlockAppMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 378
    .end local v0    # "app":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 384
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "mode":I
    :cond_1
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_2
    sget-object v11, Lcom/android/server/pm/PackageManagerServiceInjector;->msBlockAppMap:Ljava/util/Map;

    iget-object v12, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 389
    .local v8, "modeInt":Ljava/lang/Integer;
    if-nez v8, :cond_3

    .line 390
    sget-object v11, Lcom/android/server/pm/PackageManagerServiceInjector;->msBlockAppMap:Ljava/util/Map;

    iget-object v12, p0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "modeInt":Ljava/lang/Integer;
    check-cast v8, Ljava/lang/Integer;

    .line 393
    .restart local v8    # "modeInt":Ljava/lang/Integer;
    :cond_3
    if-eqz v8, :cond_5

    .line 396
    const/4 v9, 0x0

    .line 397
    .local v9, "setInstalledMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v2, :cond_4

    .line 399
    :try_start_1
    const-string v11, "setInstalled"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 400
    if-eqz v9, :cond_6

    .line 408
    :cond_4
    if-eqz v9, :cond_5

    .line 409
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v11, v12, :cond_7

    const/4 v5, 0x1

    .line 410
    .local v5, "inst":Z
    :goto_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 413
    .local v10, "userId":I
    const/4 v11, 0x2

    :try_start_2
    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, p0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 420
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "inst":Z
    .end local v8    # "modeInt":Ljava/lang/Integer;
    .end local v9    # "setInstalledMethod":Ljava/lang/reflect/Method;
    .end local v10    # "userId":I
    :cond_5
    :goto_4
    return-void

    .line 384
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 402
    .restart local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "modeInt":Ljava/lang/Integer;
    .restart local v9    # "setInstalledMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v11

    .line 397
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_2

    .line 409
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 414
    .restart local v5    # "inst":Z
    .restart local v10    # "userId":I
    :catch_1
    move-exception v3

    .line 415
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method static checkUidPermissionForUserMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "permName"    # Ljava/lang/String;
    .param p1, "nameForUid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 639
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 640
    const-string v1, "android.permission.CALL_EMERGENCY"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 642
    :cond_0
    const-string v1, "com.jeejen.contact"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 648
    :cond_1
    :goto_0
    return v0

    .line 644
    :cond_2
    const-string v1, "com.jeejen.family.miui"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 648
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p0, "origin"    # Ljava/io/File;
    .param p1, "codeFile"    # Ljava/io/File;

    .prologue
    .line 665
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerProxy;->copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V

    .line 666
    return-void
.end method

.method private static deleteContents(Ljava/io/File;)Z
    .locals 9
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 533
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 534
    .local v2, "files":[Ljava/io/File;
    const/4 v5, 0x1

    .line 535
    .local v5, "success":Z
    if-eqz v2, :cond_2

    .line 536
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 537
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 538
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->deleteContents(Ljava/io/File;)Z

    move-result v6

    and-int/2addr v5, v6

    .line 540
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 541
    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v5, 0x0

    .line 536
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 546
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return v5
.end method

.method private static deleteFileOrDirectory(Ljava/io/File;)V
    .locals 1
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 550
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->deleteContents(Ljava/io/File;)Z

    .line 553
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 554
    return-void
.end method

.method static doRenameApk(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0
    .param p0, "codeFile"    # Ljava/io/File;
    .param p1, "originName"    # Ljava/lang/String;
    .param p2, "installFlags"    # I

    .prologue
    .line 669
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerProxy;->doRenameApk(Ljava/io/File;Ljava/lang/String;I)V

    .line 670
    return-void
.end method

.method private static existsApkFileUnderDir(Ljava/io/File;)Z
    .locals 7
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 562
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 563
    .local v0, "apkStuff":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 564
    move-object v1, v0

    .local v1, "arr$":[Ljava/io/File;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 565
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 566
    const/4 v5, 0x1

    .line 570
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return v5

    .line 564
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 570
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static filterBackgroundDexOptApps(Lcom/android/server/pm/PackageManagerService;Ljava/util/Collection;)V
    .locals 0
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 805
    .local p1, "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->filterBackgroundDexOptApps(Lcom/android/server/pm/PackageManagerService;Ljava/util/Collection;)V

    .line 806
    return-void
.end method

.method static getBrowserResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 5
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "CN"

    invoke-static {v3}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 256
    const/4 v1, 0x0

    .line 270
    :cond_0
    :goto_0
    return-object v1

    .line 258
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 261
    .local v1, "ret":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_0

    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 263
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    const-string v3, "com.android.browser"

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v3, :cond_2

    .line 265
    move-object v1, v2

    .line 266
    goto :goto_0
.end method

.method static getInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "installerPackageName"    # Ljava/lang/String;

    .prologue
    .line 357
    const-string v0, "adb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "com.android.cts."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 p1, 0x0

    .line 360
    .end local p1    # "installerPackageName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method static getMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 279
    .local v1, "ret":Landroid/content/pm/ResolveInfo;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 280
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    const-string v3, "com.xiaomi.market"

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v3, :cond_0

    .line 281
    move-object v1, v2

    .line 285
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v1
.end method

.method private static getPackageName(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 528
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 529
    .local v0, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 8
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .line 228
    const/4 v3, 0x0

    .line 229
    .local v3, "ret":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget v1, v5, Landroid/content/pm/ResolveInfo;->match:I

    .line 230
    .local v1, "match":I
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 231
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 232
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget v6, v4, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget v5, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v6, v5, :cond_2

    .line 251
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v3

    .line 236
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget v5, v4, Landroid/content/pm/ResolveInfo;->match:I

    if-le v5, v1, :cond_4

    .line 237
    iget v1, v4, Landroid/content/pm/ResolveInfo;->match:I

    .line 238
    const/4 v3, 0x0

    .line 247
    :cond_3
    iget-boolean v5, v4, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v5}, Lmiui/content/pm/ExtraPackageManager;->isMiuiSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 248
    move-object v3, v4

    goto :goto_0

    .line 239
    :cond_4
    iget v5, v4, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v5, v1, :cond_0

    .line 242
    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method static ignoreApk(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static ignorePackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 201
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static initExtraGuard(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 433
    invoke-static {p0}, Lmiui/provider/ExtraGuard;->init(Landroid/content/Context;)V

    .line 434
    return-void
.end method

.method static initTempInitApk(Z)V
    .locals 4
    .param p0, "isFirstBoot"    # Z

    .prologue
    .line 626
    invoke-static {p0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageHideManager;->getIgnoreApkPathList()Ljava/util/List;

    move-result-object v1

    .line 627
    .local v1, "ignorePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 628
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 629
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->addIgnoreApk(Ljava/lang/String;)V

    goto :goto_0

    .line 632
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static isAllowedDisable(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x1

    .line 832
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isAllowedHideApp(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZI)Z
    .locals 5
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 879
    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 880
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_3

    move v1, v2

    .line 881
    .local v1, "isSystem":Z
    :goto_0
    const-string v4, "com.android.browser"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.chrome"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 882
    :cond_0
    const/4 v1, 0x0

    .line 884
    :cond_1
    if-eqz p2, :cond_5

    if-nez v1, :cond_2

    sget-boolean v4, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v4, :cond_5

    .line 885
    :cond_2
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v4, "MIUILOG- Not Support"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :goto_1
    return v2

    .line 880
    .end local v1    # "isSystem":Z
    :cond_3
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    .restart local v1    # "isSystem":Z
    :cond_5
    move v2, v3

    .line 888
    goto :goto_1
.end method

.method private static isPackageInstalled(Lcom/android/server/pm/Settings;Ljava/lang/String;)Z
    .locals 2
    .param p0, "settings"    # Lcom/android/server/pm/Settings;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 557
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 558
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 678
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isTrueSystemPackage(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 5
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "codePath"    # Ljava/lang/String;

    .prologue
    .line 689
    const/4 v1, 0x0

    .line 690
    .local v1, "ret":Z
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 691
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 692
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 693
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_2

    .line 694
    const/4 v1, 0x1

    .line 698
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 701
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " a true system package"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_1
    return v1

    .line 696
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 698
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 701
    :cond_3
    const-string v2, "not"

    goto :goto_1
.end method

.method static performPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 0
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "curPkgSettings"    # Lcom/android/server/pm/Settings;

    .prologue
    .line 447
    invoke-static {p0, p1}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApps(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    .line 448
    return-void
.end method

.method static preCheckUidPermission(Ljava/lang/String;I)I
    .locals 3
    .param p0, "permName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 869
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.security.adbinput"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 871
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUILOG- permission\u3000denied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v0, -0x1

    .line 874
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x64

    goto :goto_0
.end method

.method static protectAppFromDeleting(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 12
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 459
    const/4 v7, 0x0

    .line 460
    .local v7, "p":Landroid/content/pm/PackageParser$Package;
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v11

    .line 461
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object v7, v0

    .line 462
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v8, :cond_1

    :cond_0
    move v8, v10

    .line 524
    :goto_0
    return v8

    .line 462
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 468
    :cond_1
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_6

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v8, :cond_6

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v11, "com.miui.sdk.module"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 471
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v11, "keyguard"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 473
    .local v5, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 475
    const/16 v8, -0x3e8

    :try_start_2
    invoke-static {p2, p1, v8}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v8, v9

    .line 482
    goto :goto_0

    .line 478
    :catch_0
    move-exception v3

    .line 479
    .local v3, "e1":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    move v8, v10

    .line 480
    goto :goto_0

    .line 486
    .end local v3    # "e1":Landroid/os/RemoteException;
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 487
    .local v1, "am":Landroid/app/IActivityManager;
    new-instance v6, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;

    invoke-direct {v6}, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;-><init>()V

    .line 488
    .local v6, "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "com.android.packageinstaller"

    const-string v11, "com.android.packageinstaller.PackageDeleteConfirmActivity"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v8, "extra_pkgname"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v8, "observer"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 493
    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 496
    :try_start_3
    const-string v8, "pm"

    invoke-static {v1, v8, v4}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->startActivity(Landroid/app/IActivityManager;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v10

    .line 498
    goto :goto_0

    .line 500
    :cond_3
    monitor-enter v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 501
    :goto_1
    :try_start_4
    iget-boolean v8, v6, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->finished:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v8, :cond_4

    .line 503
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 504
    :catch_1
    move-exception v2

    .line 505
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 506
    monitor-exit v6

    move v8, v10

    goto :goto_0

    .line 509
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget-boolean v8, v6, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->delete:Z

    if-nez v8, :cond_5

    .line 511
    const/16 v8, -0x3e8

    invoke-static {p2, p1, v8}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 515
    monitor-exit v6

    move v8, v9

    goto/16 :goto_0

    .line 517
    :cond_5
    monitor-exit v6

    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "km":Landroid/app/KeyguardManager;
    .end local v6    # "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    :cond_6
    move v8, v10

    .line 524
    goto/16 :goto_0

    .line 517
    .restart local v1    # "am":Landroid/app/IActivityManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "km":Landroid/app/KeyguardManager;
    .restart local v6    # "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    :catchall_1
    move-exception v8

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v8
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 518
    :catch_2
    move-exception v3

    .line 519
    .restart local v3    # "e1":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    move v8, v10

    .line 520
    goto/16 :goto_0
.end method

.method private static readIgnoreApks()V
    .locals 15

    .prologue
    .line 114
    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "custVariant":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v5, 0x0

    .line 120
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v13, Ljava/io/File;

    const-string v14, "/system/etc/install_app_filter.xml"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v6, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 122
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 123
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v13, "UTF-8"

    invoke-interface {v9, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 124
    const/4 v11, 0x0

    .line 125
    .local v11, "tagName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 126
    .local v0, "appPath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 127
    .local v7, "is_add_apps":Z
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    .line 128
    .local v12, "type":I
    :goto_1
    const/4 v13, 0x1

    if-eq v13, v12, :cond_c

    .line 129
    packed-switch v12, :pswitch_data_0

    .line 168
    :cond_2
    :goto_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_1

    .line 131
    :pswitch_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 132
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v13

    if-lez v13, :cond_3

    .line 133
    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_3
    const-string v13, "add_apps"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 136
    const/4 v7, 0x1

    goto :goto_2

    .line 137
    :cond_4
    const-string v13, "ignore_apps"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 138
    const/4 v7, 0x0

    goto :goto_2

    .line 139
    :cond_5
    const-string v13, "app"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 140
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, "ss":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 142
    .local v8, "is_current_cust":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v13, v10

    if-ge v4, v13, :cond_6

    .line 143
    aget-object v13, v10, v4

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 144
    const/4 v8, 0x1

    .line 148
    :cond_6
    if-eqz v7, :cond_7

    if-eqz v8, :cond_8

    :cond_7
    if-nez v7, :cond_a

    if-eqz v8, :cond_a

    .line 149
    :cond_8
    sget-object v13, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 171
    .end local v0    # "appPath":Ljava/lang/String;
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "i":I
    .end local v7    # "is_add_apps":Z
    .end local v8    # "is_current_cust":Z
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "ss":[Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_0
    move-exception v13

    move-object v5, v6

    .line 174
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :goto_4
    if-eqz v5, :cond_0

    .line 176
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 177
    :catch_1
    move-exception v13

    goto/16 :goto_0

    .line 142
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "appPath":Ljava/lang/String;
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "i":I
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "is_add_apps":Z
    .restart local v8    # "is_current_cust":Z
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "ss":[Ljava/lang/String;
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 150
    :cond_a
    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    .line 151
    :try_start_3
    sget-object v13, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 152
    sget-object v13, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 172
    .end local v0    # "appPath":Ljava/lang/String;
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "i":I
    .end local v7    # "is_add_apps":Z
    .end local v8    # "is_current_cust":Z
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "ss":[Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_2
    move-exception v13

    move-object v5, v6

    .line 174
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :goto_5
    if-eqz v5, :cond_0

    .line 176
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 177
    :catch_3
    move-exception v13

    goto/16 :goto_0

    .line 158
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "appPath":Ljava/lang/String;
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "is_add_apps":Z
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :pswitch_1
    :try_start_5
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "end_tag_name":Ljava/lang/String;
    const-string v13, "add_apps"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 160
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 161
    :cond_b
    const-string v13, "ignore_apps"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v13

    if-eqz v13, :cond_2

    .line 162
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 174
    .end local v2    # "end_tag_name":Ljava/lang/String;
    :cond_c
    if-eqz v6, :cond_e

    .line 176
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v5, v6

    .line 179
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 177
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v13

    move-object v5, v6

    .line 179
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 174
    .end local v0    # "appPath":Ljava/lang/String;
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "is_add_apps":Z
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catchall_0
    move-exception v13

    :goto_6
    if-eqz v5, :cond_d

    .line 176
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 179
    :cond_d
    :goto_7
    throw v13

    .line 177
    :catch_5
    move-exception v14

    goto :goto_7

    .line 174
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v13

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_6

    .line 172
    :catch_6
    move-exception v13

    goto :goto_5

    .line 171
    :catch_7
    move-exception v13

    goto :goto_4

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "appPath":Ljava/lang/String;
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "is_add_apps":Z
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_e
    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static removePackageFromSharedUser(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 454
    :cond_0
    return-void
.end method

.method static resolveUserId(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 811
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 815
    const/4 p2, 0x0

    .line 817
    .end local p2    # "userId":I
    :cond_1
    return p2
.end method

.method static setExtraRestoreconFlag()V
    .locals 0

    .prologue
    .line 839
    invoke-static {}, Lcom/android/server/pm/ExtraPackageManagerService;->setExtraRestoreconFlag()V

    .line 840
    return-void
.end method

.method private static shouldDeletePackage(Ljava/util/Set;Lcom/android/server/pm/Settings;Ljava/io/File;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/server/pm/Settings;
    .param p2, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/Settings;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "keepedFilePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 575
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v1

    .line 579
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 581
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->existsApkFileUnderDir(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 584
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".+-[0-9]+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 588
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    :cond_3
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-static {p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->isPackageInstalled(Lcom/android/server/pm/Settings;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static tryDeleteInvalidOrDuplicatePackages(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 11
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v8

    if-nez v8, :cond_2

    .line 605
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 607
    .local v6, "keepedFilePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 608
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 611
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/app"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    .local v2, "appDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 613
    .local v1, "apks":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 614
    move-object v3, v1

    .local v3, "arr$":[Ljava/io/File;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v0, v3, v5

    .line 615
    .local v0, "apk":Ljava/io/File;
    invoke-static {v6, p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->shouldDeletePackage(Ljava/util/Set;Lcom/android/server/pm/Settings;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 616
    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Try to delete invalid or duplicate package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 618
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 614
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 623
    .end local v0    # "apk":Ljava/io/File;
    .end local v1    # "apks":[Ljava/io/File;
    .end local v2    # "appDir":Ljava/io/File;
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "keepedFilePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "len$":I
    :cond_2
    return-void
.end method
