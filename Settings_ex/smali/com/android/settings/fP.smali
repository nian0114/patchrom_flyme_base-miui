.class Lcom/android/settings_ex/fP;
.super Landroid/content/BroadcastReceiver;
.source "NotificationAppListSettings.java"


# instance fields
.field final synthetic vi:Lcom/android/settings_ex/NotificationAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/NotificationAppListSettings;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings_ex/fP;->vi:Lcom/android/settings_ex/NotificationAppListSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/fP;->vi:Lcom/android/settings_ex/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings_ex/NotificationAppListSettings;->a(Lcom/android/settings_ex/NotificationAppListSettings;)V

    .line 139
    return-void
.end method
