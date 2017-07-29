.class Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings$3;
.super Ljava/lang/Object;
.source "MiuiBluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Sm:Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;

.field final synthetic Sn:Lcom/android/b/b/H;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;Lcom/android/b/b/H;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings$3;->Sm:Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings$3;->Sn:Lcom/android/b/b/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings$3;->Sm:Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings$3;->Sn:Lcom/android/b/b/H;

    invoke-virtual {v1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;->a(Lcom/android/settings_ex/bluetooth/MiuiBluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V

    .line 317
    return-void
.end method
