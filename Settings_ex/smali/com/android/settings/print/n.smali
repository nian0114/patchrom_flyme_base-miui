.class Lcom/android/settings_ex/print/n;
.super Lcom/android/settings_ex/print/s;
.source "PrintSettingsFragment.java"


# instance fields
.field final synthetic amH:Lcom/android/settings_ex/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/print/PrintSettingsFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings_ex/print/n;->amH:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-direct {p0, p2}, Lcom/android/settings_ex/print/s;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/print/n;->amH:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->a(Lcom/android/settings_ex/print/PrintSettingsFragment;)V

    .line 120
    return-void
.end method
