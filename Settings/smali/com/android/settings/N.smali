.class Lcom/android/settings_ex/N;
.super Landroid/content/BroadcastReceiver;
.source "AutoDisableScreenButtonsAppListSettings.java"


# instance fields
.field final synthetic bG:Lcom/android/settings_ex/AutoDisableScreenButtonsAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AutoDisableScreenButtonsAppListSettings;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings_ex/N;->bG:Lcom/android/settings_ex/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/N;->bG:Lcom/android/settings_ex/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings_ex/AutoDisableScreenButtonsAppListSettings;->a(Lcom/android/settings_ex/AutoDisableScreenButtonsAppListSettings;)V

    .line 154
    return-void
.end method
