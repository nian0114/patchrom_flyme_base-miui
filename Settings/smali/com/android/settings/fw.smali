.class Lcom/android/settings_ex/fw;
.super Landroid/database/ContentObserver;
.source "MiuiSoundSettings.java"


# instance fields
.field final synthetic tI:Lcom/android/settings_ex/MiuiSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiSoundSettings;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/settings_ex/fw;->tI:Lcom/android/settings_ex/MiuiSoundSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 361
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/fw;->tI:Lcom/android/settings_ex/MiuiSoundSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/MiuiSoundSettings;->gb()V

    .line 363
    return-void
.end method
