.class public Lcom/android/settings_ex/privacypassword/PrivacyPasswordSetting;
.super Landroid/preference/PreferenceActivity;
.source "PrivacyPasswordSetting.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 21
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings_ex/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
