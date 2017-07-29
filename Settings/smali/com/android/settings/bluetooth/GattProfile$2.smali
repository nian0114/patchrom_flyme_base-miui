.class Lcom/android/settings_ex/bluetooth/GattProfile$2;
.super Ljava/lang/Object;
.source "GattProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic RA:Lcom/android/b/b/H;

.field final synthetic Sb:Lcom/android/settings_ex/bluetooth/GattProfile;

.field final synthetic Sc:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/GattProfile;Landroid/bluetooth/BluetoothDevice;Lcom/android/b/b/H;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/GattProfile$2;->Sb:Lcom/android/settings_ex/bluetooth/GattProfile;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/GattProfile$2;->Sc:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/GattProfile$2;->RA:Lcom/android/b/b/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/GattProfile$2;->Sb:Lcom/android/settings_ex/bluetooth/GattProfile;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/GattProfile$2;->Sc:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/GattProfile;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 168
    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/GattProfile$2;->Sb:Lcom/android/settings_ex/bluetooth/GattProfile;

    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/GattProfile;->a(Lcom/android/settings_ex/bluetooth/GattProfile;)Lcom/android/b/b/J;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/GattProfile$2;->RA:Lcom/android/b/b/H;

    invoke-virtual {v0, v1}, Lcom/android/b/b/J;->i(Lcom/android/b/b/H;)V

    .line 172
    :cond_1
    return-void
.end method
