.class Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$1;
.super Ljava/lang/Object;
.source "PrivateVolumeForget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic VT:Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$1;->VT:Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$1;->VT:Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$1;->VT:Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget;

    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget;->a(Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget;)Landroid/os/storage/VolumeRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->b(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 72
    return-void
.end method
