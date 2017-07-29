.class Lcom/android/settings_ex/eP;
.super Landroid/os/AsyncTask;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"


# instance fields
.field final synthetic rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->c(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)[B

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->d(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->setLock(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->d(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->e(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->e(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v2}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->f(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->setBluetoothAddressToUnlock(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->e(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v2}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->f(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->setBluetoothNameToUnlock(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v1}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->e(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/security/MiuiLockPatternUtils;->setBluetoothKeyToUnlock(Ljava/lang/String;)V

    .line 175
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 178
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->d(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 178
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/eP;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->a(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;I)I

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.bluetoothdeviceunlock"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->g(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->a(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;I)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 158
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/eP;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/eP;->rR:Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;->a(Lcom/android/settings_ex/MiuiSecurityBluetoothMatchDeviceFragment;Z)Z

    .line 164
    return-void
.end method
