.class Lcom/android/settings/et;
.super Ljava/lang/Object;
.source "MiuiFingerprintDetailFragment.java"

# interfaces
.implements Lcom/android/settings/de;


# instance fields
.field final synthetic rf:Lcom/android/settings/MiuiFingerprintDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiFingerprintDetailFragment;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/et;->rf:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dY()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/et;->rf:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/et;->rf:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->a(Lcom/android/settings/MiuiFingerprintDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/df;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/et;->rf:Lcom/android/settings/MiuiFingerprintDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->a(Lcom/android/settings/MiuiFingerprintDetailFragment;Z)Z

    .line 73
    iget-object v0, p0, Lcom/android/settings/et;->rf:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/et;->rf:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-static {v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->a(Lcom/android/settings/MiuiFingerprintDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/FingerprintIdUtils;->deleteFingerprintById(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/et;->rf:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->finish()V

    .line 75
    return-void
.end method

.method public onFailed()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/et;->rf:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/settings/et;->rf:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c1199

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/et;->rf:Lcom/android/settings/MiuiFingerprintDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiFingerprintDetailFragment;->a(Lcom/android/settings/MiuiFingerprintDetailFragment;Z)Z

    .line 66
    iget-object v0, p0, Lcom/android/settings/et;->rf:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->finish()V

    .line 67
    return-void
.end method
