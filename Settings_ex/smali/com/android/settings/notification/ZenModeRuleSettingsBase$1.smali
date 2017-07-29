.class Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$1;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic als:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$1;->als:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase$1;->als:Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;->a(Lcom/android/settings_ex/notification/ZenModeRuleSettingsBase;)V

    .line 103
    const/4 v0, 0x1

    return v0
.end method
