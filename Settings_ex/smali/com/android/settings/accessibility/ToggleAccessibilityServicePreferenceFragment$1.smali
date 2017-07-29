.class Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$1;
.super Lcom/android/settings_ex/accessibility/SettingsContentObserver;
.source "ToggleAccessibilityServicePreferenceFragment.java"


# instance fields
.field final synthetic Dz:Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->Dz:Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0, p2}, Lcom/android/settings_ex/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->Dz:Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {v0}, Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;->a(Lcom/android/settings_ex/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    .line 72
    return-void
.end method
