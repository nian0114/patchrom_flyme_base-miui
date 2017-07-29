.class Lcom/android/settings_ex/location/LocationSettings$2;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic ahj:Lcom/android/settings_ex/location/LocationSettings;

.field final synthetic ahk:Lcom/android/settings_ex/hp;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/settings_ex/hp;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationSettings$2;->ahj:Lcom/android/settings_ex/location/LocationSettings;

    iput-object p2, p0, Lcom/android/settings_ex/location/LocationSettings$2;->ahk:Lcom/android/settings_ex/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings$2;->ahk:Lcom/android/settings_ex/hp;

    const-class v1, Lcom/android/settings_ex/location/LocationMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0518

    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings$2;->ahj:Lcom/android/settings_ex/location/LocationSettings;

    const/4 v6, 0x0

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/hp;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 202
    const/4 v0, 0x1

    return v0
.end method
