.class Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Wr:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)V
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;->Wr:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;->Wr:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->a(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->update()V

    .line 918
    return-void
.end method