.class Lcom/android/settings_ex/bS;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# instance fields
.field final synthetic iO:Lcom/android/settings_ex/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DateTimeSettings;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/settings_ex/bS;->iO:Lcom/android/settings_ex/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/bS;->iO:Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/settings_ex/bS;->iO:Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DateTimeSettings;->k(Landroid/content/Context;)V

    .line 371
    :cond_0
    return-void
.end method
