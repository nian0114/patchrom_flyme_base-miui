.class public Lcom/android/settings_ex/LegalSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LegalSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/k;


# static fields
.field public static final ig:Lcom/android/settings_ex/search/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/android/settings_ex/dH;

    invoke-direct {v0}, Lcom/android/settings_ex/dH;-><init>()V

    sput-object v0, Lcom/android/settings_ex/LegalSettings;->ig:Lcom/android/settings_ex/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/settings_ex/LegalSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LegalSettings;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/LegalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 56
    const-string v2, "terms"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/iE;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 58
    const-string v2, "license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/iE;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 60
    const-string v2, "copyright"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/iE;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 62
    const-string v2, "webview_license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/iE;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 64
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0xe1

    return v0
.end method
