.class Lcom/android/settings_ex/display/B;
.super Landroid/content/BroadcastReceiver;
.source "PaperModeSetAppsFragment.java"


# instance fields
.field final synthetic Zs:Lcom/android/settings_ex/display/PaperModeSetAppsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/display/PaperModeSetAppsFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings_ex/display/B;->Zs:Lcom/android/settings_ex/display/PaperModeSetAppsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/display/B;->Zs:Lcom/android/settings_ex/display/PaperModeSetAppsFragment;

    invoke-static {v0}, Lcom/android/settings_ex/display/PaperModeSetAppsFragment;->a(Lcom/android/settings_ex/display/PaperModeSetAppsFragment;)V

    .line 93
    return-void
.end method
