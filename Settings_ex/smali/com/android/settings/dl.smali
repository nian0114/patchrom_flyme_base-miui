.class Lcom/android/settings_ex/dl;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetSettings.java"


# instance fields
.field final synthetic nH:Lcom/android/settings_ex/HeadsetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/HeadsetSettings;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings_ex/dl;->nH:Lcom/android/settings_ex/HeadsetSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/dl;->nH:Lcom/android/settings_ex/HeadsetSettings;

    invoke-static {v0}, Lcom/android/settings_ex/HeadsetSettings;->a(Lcom/android/settings_ex/HeadsetSettings;)V

    .line 264
    return-void
.end method
