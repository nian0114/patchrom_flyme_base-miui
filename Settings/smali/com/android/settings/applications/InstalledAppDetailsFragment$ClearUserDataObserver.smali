.class Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "InstalledAppDetailsFragment.java"


# instance fields
.field final synthetic Jv:Lcom/android/settings/applications/InstalledAppDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;->Jv:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 218
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;->Jv:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->c(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 219
    if-eqz p2, :cond_0

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 220
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;->Jv:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->c(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
