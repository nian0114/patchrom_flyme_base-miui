.class Lcom/android/settings_ex/cL;
.super Landroid/content/BroadcastReceiver;
.source "DreamSettings.java"


# instance fields
.field final synthetic mg:Lcom/android/settings_ex/DreamSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/DreamSettings;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/settings_ex/cL;->mg:Lcom/android/settings_ex/DreamSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/DreamSettings;Lcom/android/settings_ex/cD;)V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/android/settings_ex/cL;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 378
    const-string v0, "PackageReceiver.onReceive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings_ex/cL;->mg:Lcom/android/settings_ex/DreamSettings;

    invoke-static {v0}, Lcom/android/settings_ex/DreamSettings;->b(Lcom/android/settings_ex/DreamSettings;)V

    .line 380
    return-void
.end method
