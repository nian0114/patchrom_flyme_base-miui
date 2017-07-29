.class Lcom/android/settings_ex/wifi/aY;
.super Ljava/util/TimerTask;
.source "WpsFragment.java"


# instance fields
.field final synthetic aFa:Lcom/android/settings_ex/wifi/WpsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WpsFragment;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings_ex/wifi/aY;->aFa:Lcom/android/settings_ex/wifi/WpsFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aY;->aFa:Lcom/android/settings_ex/wifi/WpsFragment;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsFragment;->e(Lcom/android/settings_ex/wifi/WpsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/wifi/aZ;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/aZ;-><init>(Lcom/android/settings_ex/wifi/aY;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method
