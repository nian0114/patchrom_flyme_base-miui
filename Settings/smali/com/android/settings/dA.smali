.class public abstract Lcom/android/settings_ex/dA;
.super Lmiui/preference/PreferenceActivity;
.source "InstrumentedPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/dA;->z()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 45
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings_ex/dA;->z()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 39
    return-void
.end method

.method protected abstract z()I
.end method
