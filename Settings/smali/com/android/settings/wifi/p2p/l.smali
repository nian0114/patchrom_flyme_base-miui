.class Lcom/android/settings_ex/wifi/p2p/l;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field final synthetic aGB:Lcom/android/settings_ex/wifi/p2p/k;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/k;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/l;->aGB:Lcom/android/settings_ex/wifi/p2p/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method
