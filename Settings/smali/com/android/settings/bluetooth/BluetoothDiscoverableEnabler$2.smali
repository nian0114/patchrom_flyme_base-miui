.class Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic QC:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;->QC:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;->QC:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->a(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 98
    return-void
.end method
