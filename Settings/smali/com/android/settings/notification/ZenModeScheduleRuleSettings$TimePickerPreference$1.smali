.class Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic alG:Landroid/app/FragmentManager;

.field final synthetic alH:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;->alH:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iput-object p2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;->alG:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 230
    new-instance v0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;-><init>()V

    .line 231
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;->alH:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iput-object v1, v0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->alI:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 232
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;->alG:Landroid/app/FragmentManager;

    const-class v2, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x1

    return v0
.end method
