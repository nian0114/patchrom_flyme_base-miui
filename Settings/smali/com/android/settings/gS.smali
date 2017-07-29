.class Lcom/android/settings_ex/gS;
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
    .line 907
    iput-object p1, p0, Lcom/android/settings_ex/gS;->yb:Lcom/android/settings_ex/RadioInfo;

    iput-object p2, p0, Lcom/android/settings_ex/gS;->ye:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings_ex/gS;->yf:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/settings_ex/gS;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->B(Lcom/android/settings_ex/RadioInfo;)V

    .line 911
    iget-object v0, p0, Lcom/android/settings_ex/gS;->ye:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/gS;->yf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 912
    return-void
.end method
