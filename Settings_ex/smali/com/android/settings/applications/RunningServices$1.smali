.class Lcom/android/settings_ex/applications/RunningServices$1;
.super Ljava/lang/Object;
.source "RunningServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Od:Lcom/android/settings_ex/applications/RunningServices;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/RunningServices;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningServices$1;->Od:Lcom/android/settings_ex/applications/RunningServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServices$1;->Od:Lcom/android/settings_ex/applications/RunningServices;

    invoke-static {v0}, Lcom/android/settings_ex/applications/RunningServices;->a(Lcom/android/settings_ex/applications/RunningServices;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServices$1;->Od:Lcom/android/settings_ex/applications/RunningServices;

    invoke-static {v1}, Lcom/android/settings_ex/applications/RunningServices;->b(Lcom/android/settings_ex/applications/RunningServices;)Lcom/android/settings_ex/applications/RunningProcessesView;

    move-result-object v1

    invoke-static {v0, v1, v2, v2}, Lcom/android/settings_ex/iE;->a(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 112
    return-void
.end method