.class Lcom/android/settings_ex/wifi/G;
.super Landroid/os/Handler;
.source "MiuiWifiService.java"


# instance fields
.field final synthetic aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wifi/MiuiWifiService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings_ex/wifi/G;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    .line 339
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 340
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 344
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 386
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 346
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/G;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/MiuiWifiService;->a(Lcom/android/settings_ex/wifi/MiuiWifiService;)Lcom/android/settings_ex/wifi/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/ak;->yn()V

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/wifi/G;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/MiuiWifiService;->b(Lcom/android/settings_ex/wifi/MiuiWifiService;)V

    goto :goto_0

    .line 351
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/G;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/MiuiWifiService;->a(Lcom/android/settings_ex/wifi/MiuiWifiService;)Lcom/android/settings_ex/wifi/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/ak;->ym()V

    .line 352
    iget-object v0, p0, Lcom/android/settings_ex/wifi/G;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/MiuiWifiService;->b(Lcom/android/settings_ex/wifi/MiuiWifiService;)V

    goto :goto_0

    .line 356
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/G;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/MiuiWifiService;->b(Lcom/android/settings_ex/wifi/MiuiWifiService;)V

    goto :goto_0

    .line 360
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/wifi/openwifi/q;

    .line 361
    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/openwifi/q;->za()Z

    move-result v1

    .line 363
    if-nez v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/android/settings_ex/wifi/G;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/openwifi/q;->yW()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/openwifi/q;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/openwifi/q;->getBssid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/openwifi/q;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/settings_ex/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 373
    :cond_1
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/wifi/openwifi/l;

    .line 374
    if-eqz v0, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/settings_ex/wifi/G;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/MiuiWifiService;->c(Lcom/android/settings_ex/wifi/MiuiWifiService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/openwifi/l;->h(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 380
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/wifi/G;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/openwifi/l;->cG(Landroid/content/Context;)V

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
