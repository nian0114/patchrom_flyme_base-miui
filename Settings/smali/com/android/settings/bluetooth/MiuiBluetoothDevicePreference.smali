.class public Lcom/android/settings_ex/bluetooth/MiuiBluetoothDevicePreference;
.super Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
.source "MiuiBluetoothDevicePreference.java"


# instance fields
.field Sd:Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/b/b/H;Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/b/b/H;)V

    .line 14
    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothDevicePreference;->Sd:Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;

    .line 15
    return-void
.end method


# virtual methods
.method public e(Lcom/android/b/b/H;)V
    .locals 1

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothDevicePreference;->Qp:Lcom/android/b/b/H;

    .line 18
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothDevicePreference;->Qp:Lcom/android/b/b/H;

    invoke-virtual {v0, p0}, Lcom/android/b/b/H;->a(Lcom/android/b/b/I;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/MiuiBluetoothDevicePreference;->np()V

    .line 20
    return-void
.end method

.method protected nt()I
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothDevicePreference;->Sd:Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothDevicePreference;->Sd:Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;

    iget-boolean v0, v0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;->Si:Z

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothDevicePreference;->Sd:Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;->Sa:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/MiuiBluetoothDevicePreference;->no()Lcom/android/b/b/H;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 26
    const v0, 0x7f0200e8

    .line 32
    :goto_0
    return v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothDevicePreference;->Sd:Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;->Sa:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/MiuiBluetoothDevicePreference;->no()Lcom/android/b/b/H;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_1

    .line 29
    const v0, 0x7f0200e9

    goto :goto_0

    .line 32
    :cond_1
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->nt()I

    move-result v0

    goto :goto_0
.end method
