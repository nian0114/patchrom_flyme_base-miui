.class Lcom/android/settings_ex/ha;
.super Landroid/content/BroadcastReceiver;
.source "RestrictedSettingsFragment.java"


# instance fields
.field final synthetic ys:Lcom/android/settings_ex/RestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RestrictedSettingsFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings_ex/ha;->ys:Lcom/android/settings_ex/RestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/ha;->ys:Lcom/android/settings_ex/RestrictedSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->a(Lcom/android/settings_ex/RestrictedSettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/ha;->ys:Lcom/android/settings_ex/RestrictedSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->a(Lcom/android/settings_ex/RestrictedSettingsFragment;Z)Z

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/ha;->ys:Lcom/android/settings_ex/RestrictedSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->b(Lcom/android/settings_ex/RestrictedSettingsFragment;Z)Z

    .line 67
    :cond_0
    return-void
.end method
