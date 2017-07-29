.class public Lcom/android/settings/MiuiSecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private dr:Lcom/android/settings/aH;

.field private ds:Landroid/app/admin/DevicePolicyManager;

.field private sr:Landroid/preference/ListPreference;

.field private ss:Landroid/preference/CheckBoxPreference;

.field private st:Landroid/preference/CheckBoxPreference;

.field private su:Landroid/preference/CheckBoxPreference;

.field private sv:Landroid/preference/CheckBoxPreference;

.field private sw:Z

.field private sx:Z

.field private sy:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private E(Z)V
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_screen_on_proximity_sensor"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 214
    return-void
.end method

.method private I(Z)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecuritySettings;->E(Z)V

    .line 221
    return-void
.end method

.method private J(Z)V
    .locals 2

    .prologue
    .line 275
    if-eqz p1, :cond_5

    .line 276
    invoke-static {}, Landroid/provider/MiuiSettings$System;->getSmallWindowMode()Landroid/provider/MiuiSettings$System$SmallWindowType;

    move-result-object v0

    .line 277
    iget-boolean v1, p0, Lcom/android/settings/MiuiSecuritySettings;->sy:Z

    if-nez v1, :cond_1

    .line 278
    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    sget-object v1, Landroid/provider/MiuiSettings$System$SmallWindowType;->A1_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    if-eq v1, v0, :cond_2

    sget-object v1, Landroid/provider/MiuiSettings$System$SmallWindowType;->X7_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    if-ne v1, v0, :cond_3

    .line 281
    :cond_2
    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 283
    :cond_3
    sget-object v1, Landroid/provider/MiuiSettings$System$SmallWindowType;->A7_LATTICE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    if-ne v1, v0, :cond_4

    .line 284
    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 286
    :cond_4
    sget-object v1, Landroid/provider/MiuiSettings$System$SmallWindowType;->B7_FULL:Landroid/provider/MiuiSettings$System$SmallWindowType;

    if-ne v1, v0, :cond_0

    .line 287
    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 291
    :cond_5
    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private K(Z)V
    .locals 3

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volumekey_wake_screen"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 419
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private L(Z)V
    .locals 3

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volumekey_launch_camera"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    return-void

    .line 427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/preference/ListPreference;J)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 333
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 334
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v0

    .line 336
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 337
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 338
    cmp-long v4, p2, v4

    if-ltz v4, :cond_0

    move v1, v0

    .line 336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_1
    aget-object v0, v2, v1

    return-object v0
.end method

.method private e(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 297
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private fM()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->dr:Lcom/android/settings/aH;

    invoke-virtual {v0}, Lcom/android/settings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dB;->d(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    .line 225
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fN()V
    .locals 4

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 304
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 306
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fP()V

    .line 307
    return-void
.end method

.method private fO()V
    .locals 8

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 312
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    .line 314
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 316
    const-string v0, ""

    .line 326
    :goto_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v4, v2

    if-nez v2, :cond_0

    .line 327
    const v0, 0x7f0c0d7a

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    return-void

    .line 318
    :cond_1
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_3

    .line 320
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0c03d6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/preference/ListPreference;J)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fP()V
    .locals 10

    .prologue
    const-wide/32 v4, 0x7ffffffe

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 349
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 350
    :goto_0
    const-string v7, "oled"

    const-string v8, "ro.display.type"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 351
    if-eqz v7, :cond_9

    .line 352
    cmp-long v7, v0, v2

    if-nez v7, :cond_1

    move-wide v0, v4

    :goto_1
    move-wide v4, v0

    .line 354
    :goto_2
    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 388
    :goto_3
    return-void

    :cond_0
    move-wide v0, v2

    .line 349
    goto :goto_0

    .line 352
    :cond_1
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 358
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 359
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 360
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    .line 361
    :goto_4
    array-length v8, v2

    if-ge v0, v8, :cond_4

    .line 362
    aget-object v8, v2, v0

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 363
    cmp-long v8, v8, v4

    if-gtz v8, :cond_3

    .line 364
    aget-object v8, v1, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    aget-object v8, v2, v0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 368
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v1

    if-ne v0, v1, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v2

    if-eq v0, v1, :cond_6

    .line 369
    :cond_5
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 370
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 372
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 374
    int-to-long v8, v1

    cmp-long v0, v8, v4

    if-gtz v0, :cond_8

    .line 375
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 387
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v6, 0x1

    :cond_7
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 376
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 380
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-wide v4, v0

    goto/16 :goto_2
.end method

.method private fQ()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volumekey_wake_screen"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private fR()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volumekey_launch_camera"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fS()Z
    .locals 4

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 433
    const-string v0, "Elliptic Proximity"

    .line 434
    const-string v0, "Elliptic Labs"

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 437
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 438
    if-eqz v0, :cond_0

    const-string v2, "Elliptic Proximity"

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Elliptic Labs"

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/android/settings/MiuiSecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance v0, Lcom/android/settings/aH;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/aH;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->dr:Lcom/android/settings/aH;

    .line 74
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ds:Landroid/app/admin/DevicePolicyManager;

    .line 75
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiPasswordGuardActivity;

    if-eqz v0, :cond_0

    .line 81
    const v0, 0x7f0400c9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 393
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 395
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 397
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fO()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    const-string v1, "SecuritySettings"

    const-string v2, "could not persist screen timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 230
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->dr:Lcom/android/settings/aH;

    invoke-virtual {v1}, Lcom/android/settings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->E(Z)V

    .line 271
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 235
    :cond_1
    const-string v2, "unlock_set_or_change"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sw:Z

    if-eqz v0, :cond_2

    const v5, 0x7f0c10f9

    .line 238
    :goto_1
    const-string v2, "com.android.settings.MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment"

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 236
    :cond_2
    const v5, 0x7f0c10fa

    goto :goto_1

    .line 240
    :cond_3
    const-string v2, "lockenabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    const-string v2, "power_button_instantly_locks"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 244
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiSecuritySettings;->e(Landroid/preference/Preference;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/settings/dB;->c(Lcom/android/internal/widget/LockPatternUtils;Z)V

    goto :goto_0

    .line 245
    :cond_4
    const-string v1, "bluetooth_unlock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 246
    const-string v2, "com.android.settings.MiuiSecurityBluetoothSettingsFragment"

    const v5, 0x7f0c101d

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 248
    :cond_5
    const-string v1, "smartcover_sensitive_hall_sensor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, p2

    .line 249
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 250
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->J(Z)V

    goto :goto_0

    .line 251
    :cond_6
    const-string v1, "owner_info_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 252
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 253
    const-string v0, ":miui:starting_window_label"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v2, "com.android.settings.OwnerInfoSettings"

    move-object v0, p0

    move-object v1, p0

    move v3, v6

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 255
    :cond_7
    const-string v1, "keyguard_shortcut_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 256
    const-string v2, "com.android.settings.KeyguardShortcutSettings"

    const v5, 0x7f0c11bc

    move-object v0, p0

    move-object v1, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0

    .line 258
    :cond_8
    const-string v1, "wakeup_for_keyguard_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wakeup_for_keyguard_notification"

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 262
    :cond_9
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->su:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_a

    .line 263
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->su:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->K(Z)V

    goto/16 :goto_0

    .line 264
    :cond_a
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->sv:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_b

    .line 265
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->L(Z)V

    goto/16 :goto_0

    .line 266
    :cond_b
    const-string v1, "privacy_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const-string v2, "com.android.settings.privacypassword.TransparentHelper$TransparentHelperFragment"

    const v5, 0x7f0c11f3

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 90
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 97
    :cond_0
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 99
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->addPreferencesFromResource(I)V

    .line 102
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    .line 106
    const-string v0, "screen_timeout"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    .line 107
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fN()V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fO()V

    .line 112
    :cond_1
    const-string v0, "screen_on_proximity_sensor"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 114
    const-string v1, "android.hardware.sensor.proximity"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 115
    :cond_2
    const-string v0, "security_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->dr:Lcom/android/settings/aH;

    invoke-virtual {v0}, Lcom/android/settings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/settings/dB;->k(Lcom/android/internal/widget/LockPatternUtils;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 127
    const-string v0, "security_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiPasswordGuardActivity;

    if-eqz v0, :cond_4

    .line 135
    :cond_4
    new-instance v0, Lcom/android/settings/cZ;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/cZ;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v0}, Lcom/android/settings/cZ;->isHardwareDetected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sw:Z

    .line 137
    const-string v0, "unlock_set_or_change"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 139
    const-string v0, "security_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 140
    const-string v1, "bluetooth_unlock"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 141
    new-instance v6, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_a

    .line 143
    const-string v1, "security_second_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 144
    if-eqz v1, :cond_5

    .line 145
    if-eqz v4, :cond_5

    .line 146
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    :cond_5
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fM()Z

    move-result v1

    if-nez v1, :cond_e

    .line 165
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 166
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 181
    :cond_6
    :goto_2
    const-string v1, "smartcover_sensitive_hall_sensor"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 183
    const-string v4, "support_hall_sensor"

    invoke-static {v4, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/MiuiSecuritySettings;->sx:Z

    .line 184
    const-string v4, "support_small_win_cover"

    invoke-static {v4, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/MiuiSecuritySettings;->sy:Z

    .line 185
    iget-boolean v4, p0, Lcom/android/settings/MiuiSecuritySettings;->sx:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/settings/MiuiSecuritySettings;->sy:Z

    if-eqz v4, :cond_10

    .line 186
    :cond_7
    const-string v0, "persist.sys.smartcover_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 188
    if-eqz v0, :cond_8

    move v3, v2

    .line 189
    :cond_8
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 190
    invoke-direct {p0, v3}, Lcom/android/settings/MiuiSecuritySettings;->J(Z)V

    .line 195
    :goto_3
    const-string v0, "wakeup_for_keyguard_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wakeup_for_keyguard_notification"

    invoke-static {v1, v3, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 200
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    const-string v0, "pref_volume_wake"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->su:Landroid/preference/CheckBoxPreference;

    .line 203
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->su:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fQ()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    const-string v0, "pref_volume_launch_camera"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sv:Landroid/preference/CheckBoxPreference;

    .line 206
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sv:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fR()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 208
    return-void

    .line 119
    :cond_9
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "enable_screen_on_proximity_sensor"

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11090013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-static {v1, v4, v5}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 151
    :cond_a
    if-eqz v4, :cond_b

    .line 152
    iget-boolean v1, p0, Lcom/android/settings/MiuiSecuritySettings;->sw:Z

    if-eqz v1, :cond_c

    const v1, 0x7f0c10f9

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 156
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fM()Z

    move-result v1

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 157
    invoke-virtual {v6}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 158
    const v1, 0x7f0c101f

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 152
    :cond_c
    const v1, 0x7f0c10fa

    goto :goto_4

    .line 160
    :cond_d
    const v1, 0x7f0c101e

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 169
    :cond_e
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "show_lock_before_unlock"

    sget-boolean v5, Landroid/provider/MiuiSettings$System;->SHOW_LOCK_BEFORE_UNLOCK_DEFAULT:Z

    invoke-static {v1, v4, v5}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 174
    iget-object v4, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 175
    if-nez v1, :cond_6

    .line 176
    if-nez v1, :cond_f

    move v1, v2

    :goto_5
    invoke-direct {p0, v1}, Lcom/android/settings/MiuiSecuritySettings;->I(Z)V

    goto/16 :goto_2

    :cond_f
    move v1, v3

    goto :goto_5

    .line 192
    :cond_10
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3
.end method
