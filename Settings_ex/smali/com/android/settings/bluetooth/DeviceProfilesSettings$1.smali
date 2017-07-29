.class Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic RA:Lcom/android/b/b/H;

.field final synthetic RB:Lcom/android/b/b/T;

.field final synthetic RC:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Lcom/android/b/b/H;Lcom/android/b/b/T;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->RC:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->RA:Lcom/android/b/b/H;

    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->RB:Lcom/android/b/b/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->RA:Lcom/android/b/b/H;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->RB:Lcom/android/b/b/T;

    invoke-virtual {v0, v1}, Lcom/android/b/b/H;->c(Lcom/android/b/b/T;)V

    .line 337
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->RB:Lcom/android/b/b/T;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->RA:Lcom/android/b/b/H;

    invoke-virtual {v1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/b/b/T;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 338
    return-void
.end method
