.class Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;
.super Ljava/lang/Object;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic QP:Lcom/android/settings/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->QP:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 226
    if-eqz p2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->QP:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->a(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->QP:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->a(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0
.end method
