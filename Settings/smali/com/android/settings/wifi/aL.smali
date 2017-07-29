.class Lcom/android/settings_ex/wifi/aL;
.super Ljava/lang/Thread;
.source "WifiStatusTest.java"


# instance fields
.field final synthetic aED:Lcom/android/settings_ex/wifi/WifiStatusTest;

.field final synthetic ye:Landroid/os/Handler;

.field final synthetic yf:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings_ex/wifi/aL;->aED:Lcom/android/settings_ex/wifi/WifiStatusTest;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/aL;->ye:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings_ex/wifi/aL;->yf:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aL;->aED:Lcom/android/settings_ex/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiStatusTest;->t(Lcom/android/settings_ex/wifi/WifiStatusTest;)V

    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aL;->ye:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/aL;->yf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    return-void
.end method
