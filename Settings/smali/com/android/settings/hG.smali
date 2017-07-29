.class Lcom/android/settings_ex/hG;
.super Landroid/database/DataSetObserver;
.source "SettingsPreferenceFragment.java"


# instance fields
.field final synthetic Ad:Lcom/android/settings_ex/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/hG;->Ad:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/hG;->Ad:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->hV()V

    .line 84
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/hG;->Ad:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->hV()V

    .line 89
    return-void
.end method
