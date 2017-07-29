.class Lcom/android/settings_ex/wifi/w;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aAO:Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings_ex/wifi/w;->aAO:Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/wifi/w;->aAO:Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/wifi/bi;->cF(Landroid/content/Context;)V

    .line 190
    return-void
.end method
