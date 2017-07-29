.class Lcom/android/settings_ex/wifi/E;
.super Ljava/lang/Object;
.source "MiuiWifiService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/MiuiWifiService;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/settings_ex/wifi/E;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/wifi/E;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/MiuiWifiService;->xw()V

    .line 422
    iget-object v0, p0, Lcom/android/settings_ex/wifi/E;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 423
    const-string v2, "key_agreement_remind_again"

    iget-object v0, p0, Lcom/android/settings_ex/wifi/E;->aBh:Lcom/android/settings_ex/wifi/MiuiWifiService;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/MiuiWifiService;->d(Lcom/android/settings_ex/wifi/MiuiWifiService;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 424
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 425
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
