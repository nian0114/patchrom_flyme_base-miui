.class Lcom/android/settings/eZ;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic sl:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/settings/eZ;->sl:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings/eZ;->sl:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;Ljava/lang/String;Z)V

    .line 421
    const/4 v0, 0x0

    return v0
.end method
