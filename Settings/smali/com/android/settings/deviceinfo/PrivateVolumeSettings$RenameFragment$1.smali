.class Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic VV:Ljava/lang/String;

.field final synthetic Wu:Landroid/os/storage/StorageManager;

.field final synthetic Wv:Landroid/widget/EditText;

.field final synthetic Ww:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->Ww:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment;

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->Wu:Landroid/os/storage/StorageManager;

    iput-object p3, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->VV:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->Wv:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->Wu:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->VV:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->Wv:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/StorageManager;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void
.end method
