.class public Lcom/android/settings_ex/applications/AdvancedAppSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AdvancedAppSettings.java"

# interfaces
.implements Lcom/android/b/a/s;


# instance fields
.field private EX:Lcom/android/b/a/w;

.field private EY:Landroid/preference/Preference;

.field private EZ:Landroid/preference/Preference;

.field private Fa:Landroid/preference/Preference;

.field private Fb:Landroid/preference/Preference;

.field private Fc:Landroid/preference/Preference;

.field private Fd:Landroid/content/BroadcastReceiver;

.field private final Fe:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 127
    new-instance v0, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;-><init>(Lcom/android/settings_ex/applications/AdvancedAppSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->Fe:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ex/applications/AdvancedAppSettings;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->Fd:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ex/applications/AdvancedAppSettings;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->EY:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ex/applications/AdvancedAppSettings;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->Fb:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ex/applications/AdvancedAppSettings;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->Fc:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method public aj(Z)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public al(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jB()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public jC()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public jD()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public jE()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public jF()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "manage_perms"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/a/a;->a(Landroid/app/Application;)Lcom/android/b/a/a;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/s;)Lcom/android/b/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->EX:Lcom/android/b/a/w;

    .line 75
    const-string v0, "manage_perms"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->EY:Landroid/preference/Preference;

    .line 76
    const-string v0, "domain_urls"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->EZ:Landroid/preference/Preference;

    .line 77
    const-string v0, "high_power_apps"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->Fa:Landroid/preference/Preference;

    .line 78
    const-string v0, "system_alert_window"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->Fb:Landroid/preference/Preference;

    .line 79
    const-string v0, "write_settings_apps"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->Fc:Landroid/preference/Preference;

    .line 80
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x82

    return v0
.end method