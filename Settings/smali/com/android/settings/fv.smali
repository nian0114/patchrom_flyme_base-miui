.class Lcom/android/settings_ex/fv;
.super Landroid/content/BroadcastReceiver;
.source "MiuiSoundSettings.java"


# instance fields
.field final synthetic tI:Lcom/android/settings_ex/MiuiSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiSoundSettings;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/settings_ex/fv;->tI:Lcom/android/settings_ex/MiuiSoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings_ex/fv;->tI:Lcom/android/settings_ex/MiuiSoundSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/MiuiSoundSettings;->gb()V

    .line 353
    return-void
.end method
