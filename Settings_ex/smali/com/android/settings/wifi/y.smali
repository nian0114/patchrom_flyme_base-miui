.class Lcom/android/settings_ex/wifi/y;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic aAO:Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;

.field final synthetic aAQ:Lcom/android/settings_ex/wifi/e;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;Lcom/android/settings_ex/wifi/e;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings_ex/wifi/y;->aAO:Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/y;->aAQ:Lcom/android/settings_ex/wifi/e;

    iput-object p3, p0, Lcom/android/settings_ex/wifi/y;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/wifi/y;->aAQ:Lcom/android/settings_ex/wifi/e;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/y;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/y;->aAO:Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;

    invoke-static {v2}, Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;->d(Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;)Lcom/android/b/e/a;

    move-result-object v2

    iget-object v2, v2, Lcom/android/b/e/a;->aDq:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settings_ex/wifi/e;->g(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 249
    if-eqz p2, :cond_0

    .line 250
    const-string v0, "autoConnectWifi"

    const-string v1, "clickAutoConnectWifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/wifi/y;->aAQ:Lcom/android/settings_ex/wifi/e;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/y;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/y;->aAO:Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;

    invoke-static {v2}, Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;->d(Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;)Lcom/android/b/e/a;

    move-result-object v2

    iget-object v2, v2, Lcom/android/b/e/a;->aDq:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/wifi/e;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    :cond_0
    return-void
.end method