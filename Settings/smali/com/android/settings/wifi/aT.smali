.class Lcom/android/settings_ex/wifi/aT;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aEL:Lcom/android/settings_ex/wifi/WpsDialog;

.field final synthetic aEN:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WpsDialog;Lcom/android/settings_ex/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings_ex/wifi/aT;->aEL:Lcom/android/settings_ex/wifi/WpsDialog;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/aT;->aEN:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    iput-object p3, p0, Lcom/android/settings_ex/wifi/aT;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 240
    sget-object v0, Lcom/android/settings_ex/wifi/aU;->aEO:[I

    iget-object v1, p0, Lcom/android/settings_ex/wifi/aT;->aEN:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aT;->aEL:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->g(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/aT;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aT;->aEL:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->b(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aT;->aEL:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->d(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aT;->aEL:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->e(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/aT;->aEL:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WpsDialog;->a(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c05b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aT;->aEL:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->b(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aT;->aEL:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->d(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aT;->aEL:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->f(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aT;->aEL:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->a(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/aT;->aEL:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WpsDialog;->f(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aT;->aEL:Lcom/android/settings_ex/wifi/WpsDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WpsDialog;->a(Lcom/android/settings_ex/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
