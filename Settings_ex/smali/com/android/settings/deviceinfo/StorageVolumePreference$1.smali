.class Lcom/android/settings_ex/deviceinfo/StorageVolumePreference$1;
.super Ljava/lang/Object;
.source "StorageVolumePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Xo:Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference$1;->Xo:Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageSettings$UnmountTask;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference$1;->Xo:Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference$1;->Xo:Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;

    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;->a(Lcom/android/settings_ex/deviceinfo/StorageVolumePreference;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageSettings$UnmountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings$UnmountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    return-void
.end method