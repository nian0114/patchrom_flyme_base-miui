.class Lcom/android/settings_ex/gT;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# instance fields
.field final synthetic yb:Lcom/android/settings_ex/RadioInfo;

.field final synthetic ye:Landroid/os/Handler;

.field final synthetic yf:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/settings_ex/gT;->yb:Lcom/android/settings_ex/RadioInfo;

    iput-object p2, p0, Lcom/android/settings_ex/gT;->ye:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings_ex/gT;->yf:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/settings_ex/gT;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->C(Lcom/android/settings_ex/RadioInfo;)V

    .line 920
    iget-object v0, p0, Lcom/android/settings_ex/gT;->ye:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/gT;->yf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 921
    return-void
.end method