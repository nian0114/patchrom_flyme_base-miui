.class Lcom/android/settings_ex/wifi/ay;
.super Landroid/content/BroadcastReceiver;
.source "WifiSetupActivity.java"


# instance fields
.field final synthetic aEj:Lcom/android/settings_ex/wifi/WifiSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSetupActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings_ex/wifi/ay;->aEj:Lcom/android/settings_ex/wifi/WifiSetupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/wifi/ay;->aEj:Lcom/android/settings_ex/wifi/WifiSetupActivity;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSetupActivity;->a(Lcom/android/settings_ex/wifi/WifiSetupActivity;)V

    .line 84
    return-void
.end method
