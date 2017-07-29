.class public Lcom/android/settings_ex/dh;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# static fields
.field private static mT:Ljava/util/HashMap;

.field private static mU:Ljava/util/HashMap;

.field private static mV:Ljava/util/ArrayList;

.field private static mW:Ljava/util/ArrayList;

.field private static mX:Ljava/util/ArrayList;

.field private static mY:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/dh;->mV:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ex/dh;->mT:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ex/dh;->mU:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/dh;->mW:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/dh;->mX:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings_ex/dh;->mY:Ljava/util/HashSet;

    .line 37
    const-string v0, "airplane_mode_settings"

    const v1, 0x7f08000f

    const v2, 0x7f130389

    const v3, 0x7f0c01af

    const v4, 0x7f0c0be9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 38
    const-string v0, "mobile_network_settings"

    const v1, 0x7f080064

    const v2, 0x7f1303b1

    const v3, 0x7f0c04fd

    const v4, 0x7f0c0bcf

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 39
    const-string v0, "wifi_settings"

    const v1, 0x7f0800c2

    const v2, 0x7f130390

    const v3, 0x7f0c02d2

    const v4, 0x7f0c0bd3

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIIIZ)V

    .line 40
    const-string v0, "bluetooth_settings"

    const v1, 0x7f08001f

    const v2, 0x7f13038c

    const v3, 0x7f0c026f

    const v4, 0x7f0c0be1

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIIIZ)V

    .line 41
    const-string v0, "android_beam_settings"

    const v1, 0x7f080010

    const v2, 0x7f13038a

    const v3, 0x7f0c02c6

    const v4, 0x7f0c0bed

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 42
    const-string v0, "vpn_settings"

    const v1, 0x7f0800b8

    const v2, 0x7f1303d1

    const v3, 0x7f0c07df

    const v4, 0x7f0c0bee

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 43
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 44
    const-string v0, "tether_settings"

    const v1, 0x7f0800ac

    const v2, 0x7f1303cf

    const v3, 0x7f0c04ea

    const v4, 0x7f0c0be5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 46
    :cond_0
    const-string v0, "brightness"

    const v1, 0x7f080021

    const v2, 0x7f13038d

    const v3, 0x7f0c03ca

    const v4, 0x7f0c0c05

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIIIZ)V

    .line 47
    invoke-static {}, Lcom/android/b/a;->zg()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    :goto_0
    const-string v0, "accelerometer"

    const v1, 0x7f080002

    const v2, 0x7f130385

    const v3, 0x7f0c03c7

    const v4, 0x7f0c0c04

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 53
    const-string v0, "screen_timeout"

    const v1, 0x7f080083

    const v2, 0x7f1303b5

    const v3, 0x7f0c03d5

    const v4, 0x7f0c0c20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 54
    const-string v0, "ring_volume"

    const v1, 0x7f08007c

    const v2, 0x7f1303b3

    const v3, 0x7f0c0398

    const v4, 0x7f0c0c0c

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIIIZ)V

    .line 55
    const-string v0, "ringtone"

    const v1, 0x7f08007d

    const v2, 0x7f1303b4

    const v3, 0x7f0c0a53

    const v4, 0x7f0c0c0d

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIIIZ)V

    .line 56
    const-string v0, "sms_received_sound"

    const v1, 0x7f08009e

    const v2, 0x7f1303ce

    const v3, 0x7f0c0d56

    const v4, 0x7f0c0c0e

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIIIZ)V

    .line 57
    const-string v0, "unlock_set_or_change"

    const v1, 0x7f0800b2

    const v2, 0x7f1303d0

    const v3, 0x7f0c022f

    const v4, 0x7f0c0c1f

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 58
    const-string v0, "access_control_settings"

    const v1, 0x7f080004

    const v2, 0x7f130386

    const v3, 0x7f0c0d61

    const v4, 0x7f0c0c36

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 59
    const-string v0, "location_gps"

    const v1, 0x7f080046

    const v2, 0x7f1303ac

    const v3, 0x7f0c0525

    const v4, 0x7f0c0c65

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 60
    const-string v0, "status_bar_settings"

    const v1, 0x7f0800a2

    const v2, 0x7f1303bf

    const v3, 0x7f0c0dc6

    const v4, 0x7f0c0bf4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 61
    const-string v0, "micloud_settings"

    const v1, 0x7f080060

    const v2, 0x7f1303af

    const v3, 0x7f0c0f44

    const v4, 0x7f0c0c7d

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIIIZ)V

    .line 62
    const-string v0, "mimoney_settings"

    const v1, 0x7f080061

    const v2, 0x7f1303b0

    const v3, 0x7f0c0f45

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIIIZ)V

    .line 63
    invoke-static {}, Lcom/android/b/a;->zg()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    :goto_1
    const-string v0, "key_settings"

    const v1, 0x7f08004f

    const v2, 0x7f1303ad

    const v3, 0x7f0c0d9e

    const v4, 0x7f0c0c50

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 69
    const-string v0, "led_settings"

    const v1, 0x7f080054

    const v2, 0x7f1303ae

    const v3, 0x7f0c0df6

    const v4, 0x7f0c0c56

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 70
    .line 72
    const-string v0, "about_settings"

    const/high16 v1, 0x7f080000

    const v2, 0x7f130384

    const v3, 0x7f0c052f

    const v4, 0x7f0c0c74

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    .line 73
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_MIFIVE:Z

    if-eqz v0, :cond_2

    .line 74
    :cond_1
    const-string v0, "power_mode"

    const v1, 0x7f080071

    const v2, 0x7f1303b2

    const v3, 0x7f0c0ea9

    const v4, 0x7f0c0c6a

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIIIZ)V

    .line 77
    :cond_2
    return-void

    .line 50
    :cond_3
    const-string v0, "wallpaper"

    const v1, 0x7f0800ba

    const v2, 0x7f1303ba

    const v3, 0x7f0c03d7

    const v4, 0x7f0c0bff

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIIIZ)V

    goto/16 :goto_0

    .line 66
    :cond_4
    const-string v0, "battery_indicator_style"

    const v1, 0x7f08001b

    const v2, 0x7f13038b

    const v3, 0x7f0c0dce

    const v4, 0x7f0c0c67

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIII)V

    goto/16 :goto_1
.end method

.method private static H(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    const v2, 0x7f0c0bed

    if-ne v2, p0, :cond_2

    .line 97
    invoke-static {}, Lcom/android/settings_ex/dh;->dZ()Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    sget-object v2, Lcom/android/settings_ex/dh;->mY:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 103
    goto :goto_0
.end method

.method public static I(I)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 151
    if-le p0, v0, :cond_0

    sget-object v1, Lcom/android/settings_ex/dh;->mX:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 152
    sget-object v0, Lcom/android/settings_ex/dh;->mX:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 154
    :cond_0
    return v0
.end method

.method private static a(Ljava/lang/String;IIII)V
    .locals 6

    .prologue
    .line 80
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/dh;->a(Ljava/lang/String;IIIIZ)V

    .line 81
    return-void
.end method

.method private static a(Ljava/lang/String;IIIIZ)V
    .locals 9

    .prologue
    .line 84
    sget-object v0, Lcom/android/settings_ex/dh;->mV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 85
    sget-object v0, Lcom/android/settings_ex/dh;->mT:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/settings_ex/dh;->mU:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v8, Lcom/android/settings_ex/dh;->mV:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings_ex/di;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/di;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/android/settings_ex/dh;->H(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/android/settings_ex/dh;->mW:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/settings_ex/dh;->mX:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    return-void
.end method

.method private static dZ()Z
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "android.hardware.nfc"

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ea()[I
    .locals 4

    .prologue
    .line 164
    sget-object v0, Lcom/android/settings_ex/dh;->mV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 165
    new-array v3, v2, [I

    .line 166
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 167
    sget-object v0, Lcom/android/settings_ex/dh;->mV:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/di;

    iget v0, v0, Lcom/android/settings_ex/di;->mZ:I

    aput v0, v3, v1

    .line 166
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_0
    return-object v3
.end method

.method public static getKey(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    sget-object v1, Lcom/android/settings_ex/dh;->mV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 126
    sget-object v0, Lcom/android/settings_ex/dh;->mV:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/di;

    iget-object v0, v0, Lcom/android/settings_ex/di;->key:Ljava/lang/String;

    .line 128
    :cond_0
    return-object v0
.end method
