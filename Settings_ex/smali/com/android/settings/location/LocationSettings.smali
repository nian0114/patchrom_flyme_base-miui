.class public Lcom/android/settings_ex/location/LocationSettings;
.super Lcom/android/settings_ex/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings_ex/widget/I;


# instance fields
.field private Cp:Z

.field private aN:Landroid/os/UserManager;

.field private ahe:Landroid/os/UserHandle;

.field private ahf:Landroid/preference/Preference;

.field private ahg:Landroid/preference/Preference;

.field private ahh:Landroid/preference/PreferenceCategory;

.field private ahi:Lcom/android/settings_ex/location/SettingsInjector;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private me:Lcom/android/settings_ex/widget/SwitchBar;

.field private ta:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->Cp:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/settings_ex/location/SettingsInjector;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ahi:Lcom/android/settings_ex/location/SettingsInjector;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 4

    .prologue
    .line 272
    const-string v0, "location_services"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 274
    new-instance v1, Lcom/android/settings_ex/location/SettingsInjector;

    invoke-direct {v1, p1}, Lcom/android/settings_ex/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->ahi:Lcom/android/settings_ex/location/SettingsInjector;

    .line 277
    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->ahi:Lcom/android/settings_ex/location/SettingsInjector;

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/location/SettingsInjector;->cs(I)Ljava/util/List;

    move-result-object v1

    .line 280
    new-instance v2, Lcom/android/settings_ex/location/LocationSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/location/LocationSettings$3;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    iput-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 294
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 295
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/location/LocationSettings;->a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 300
    :goto_1
    return-void

    .line 277
    :cond_0
    const/4 v1, -0x2

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/android/settings_ex/location/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/location/LocationSettings$1;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 177
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method private c(Landroid/preference/PreferenceScreen;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->aN:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings_ex/iE;->b(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ahe:Landroid/os/UserHandle;

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ahe:Landroid/os/UserHandle;

    if-nez v0, :cond_1

    .line 243
    const-string v0, "managed_profile_location_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->ahf:Landroid/preference/Preference;

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_1
    const-string v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ahf:Landroid/preference/Preference;

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ahf:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private c(ZI)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ahf:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ahf:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ahf:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private hw()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/hp;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 189
    :cond_0
    const v1, 0x7f08005a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 192
    invoke-direct {p0, v3}, Lcom/android/settings_ex/location/LocationSettings;->c(Landroid/preference/PreferenceScreen;)V

    .line 193
    const-string v1, "location_mode"

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->ahg:Landroid/preference/Preference;

    .line 194
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->ahg:Landroid/preference/Preference;

    new-instance v4, Lcom/android/settings_ex/location/LocationSettings$2;

    invoke-direct {v4, p0, v0}, Lcom/android/settings_ex/location/LocationSettings$2;-><init>(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/settings_ex/hp;)V

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 206
    const-string v1, "recent_location_requests"

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->ahh:Landroid/preference/PreferenceCategory;

    .line 208
    new-instance v1, Lcom/android/settings_ex/location/RecentLocationApps;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/location/RecentLocationApps;-><init>(Landroid/app/Activity;)V

    .line 209
    invoke-virtual {v1}, Lcom/android/settings_ex/location/RecentLocationApps;->rN()Ljava/util/List;

    move-result-object v1

    .line 210
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 211
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->ahh:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v1, v4}, Lcom/android/settings_ex/location/LocationSettings;->a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->ahe:Landroid/os/UserHandle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->aN:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings;->ahe:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    const/4 v1, 0x1

    .line 229
    :goto_1
    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings_ex/location/LocationSettings;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->rL()V

    .line 232
    return-object v3

    .line 214
    :cond_1
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 215
    const v4, 0x7f04009f

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 216
    const v4, 0x7f0c0514

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 217
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 218
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->ahh:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 1

    .prologue
    .line 392
    if-eqz p2, :cond_0

    .line 393
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->cr(I)V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->cr(I)V

    goto :goto_0
.end method

.method public ay()I
    .locals 1

    .prologue
    .line 326
    const v0, 0x7f0c09be

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(IZ)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    packed-switch p1, :pswitch_data_0

    .line 351
    :goto_0
    if-eqz p1, :cond_3

    move v0, v1

    .line 354
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->me:Lcom/android/settings_ex/widget/SwitchBar;

    if-nez p2, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 355
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->ahg:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 356
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->ahh:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 358
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->ta:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 360
    iget-boolean v3, p0, Lcom/android/settings_ex/location/LocationSettings;->Cp:Z

    if-eqz v3, :cond_0

    .line 361
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->me:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/widget/SwitchBar;->b(Lcom/android/settings_ex/widget/I;)V

    .line 363
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->ta:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 364
    iget-boolean v3, p0, Lcom/android/settings_ex/location/LocationSettings;->Cp:Z

    if-eqz v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->me:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/widget/SwitchBar;->a(Lcom/android/settings_ex/widget/I;)V

    .line 369
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->ahf:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 370
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->aN:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings;->ahe:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 371
    const v0, 0x7f0c050d

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/location/LocationSettings;->c(ZI)V

    .line 384
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ahi:Lcom/android/settings_ex/location/SettingsInjector;

    invoke-virtual {v0}, Lcom/android/settings_ex/location/SettingsInjector;->rO()V

    .line 385
    return-void

    .line 333
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ahg:Landroid/preference/Preference;

    const v3, 0x7f0c0512

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 336
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ahg:Landroid/preference/Preference;

    const v3, 0x7f0c0511

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 339
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ahg:Landroid/preference/Preference;

    const v3, 0x7f0c0510

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 342
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ahg:Landroid/preference/Preference;

    const v3, 0x7f0c050f

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 351
    goto :goto_1

    :cond_4
    move v3, v2

    .line 354
    goto :goto_2

    :cond_5
    move v3, v2

    .line 355
    goto :goto_3

    .line 374
    :cond_6
    if-eqz v0, :cond_7

    .line 375
    const v0, 0x7f0c0abc

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/location/LocationSettings;->c(ZI)V

    goto :goto_4

    .line 377
    :cond_7
    const v0, 0x7f0c0abd

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/location/LocationSettings;->c(ZI)V

    goto :goto_4

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings_ex/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/hp;

    .line 118
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/hp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->aN:Landroid/os/UserManager;

    .line 120
    invoke-virtual {v0}, Lcom/android/settings_ex/hp;->hF()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->me:Lcom/android/settings_ex/widget/SwitchBar;

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->me:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->wQ()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->ta:Landroid/widget/Switch;

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->me:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 123
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 304
    const/4 v0, 0x1

    const v1, 0x7f0c051c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 306
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/location/LocationSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 307
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onDestroyView()V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->me:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 129
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/hp;

    .line 312
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 320
    invoke-super {p0, p1}, Lcom/android/settings_ex/location/LocationSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 314
    :pswitch_0
    const-class v1, Lcom/android/settings_ex/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c051d

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/hp;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 318
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->Cp:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->me:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->b(Lcom/android/settings_ex/widget/I;)V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->Cp:Z

    .line 165
    :cond_1
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onPause()V

    .line 166
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 157
    const-string v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->aN:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->aN:Landroid/os/UserManager;

    .line 143
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onResume()V

    .line 144
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->hw()Landroid/preference/PreferenceScreen;

    .line 145
    iget-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->Cp:Z

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->me:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->a(Lcom/android/settings_ex/widget/I;)V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->Cp:Z

    .line 149
    :cond_1
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x3f

    return v0
.end method
