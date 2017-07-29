.class Lcom/android/settings_ex/eO;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;


# instance fields
.field final synthetic rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ex/eO;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(I)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/eO;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->a(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/eO;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->b(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)V

    .line 73
    :cond_0
    return-void
.end method
