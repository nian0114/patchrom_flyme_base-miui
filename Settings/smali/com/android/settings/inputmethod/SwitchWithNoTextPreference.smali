.class Lcom/android/settings_ex/inputmethod/SwitchWithNoTextPreference;
.super Landroid/preference/SwitchPreference;
.source "SwitchWithNoTextPreference.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/SwitchWithNoTextPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 28
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/SwitchWithNoTextPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method
