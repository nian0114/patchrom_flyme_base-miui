.class Lcom/android/settings_ex/location/MiuiLocationSettings$2;
.super Ljava/lang/Object;
.source "MiuiLocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic ahw:Lcom/android/settings_ex/location/MiuiLocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/MiuiLocationSettings;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings_ex/location/MiuiLocationSettings$2;->ahw:Lcom/android/settings_ex/location/MiuiLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/location/MiuiLocationSettings$2;->ahw:Lcom/android/settings_ex/location/MiuiLocationSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/location/MiuiLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/location/LocationMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0518

    iget-object v5, p0, Lcom/android/settings_ex/location/MiuiLocationSettings$2;->ahw:Lcom/android/settings_ex/location/MiuiLocationSettings;

    const/4 v6, 0x0

    move-object v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/fA;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 174
    const/4 v0, 0x1

    return v0
.end method
