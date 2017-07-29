.class Lcom/android/settings_ex/wifi/J;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aBx:Lcom/android/settings_ex/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/MiuiWifiSettings;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings_ex/wifi/J;->aBx:Lcom/android/settings_ex/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/wifi/J;->aBx:Lcom/android/settings_ex/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 271
    return-void
.end method
