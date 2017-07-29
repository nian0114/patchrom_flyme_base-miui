.class Lcom/android/settings_ex/eu;
.super Ljava/lang/Object;
.source "MiuiFingerprintDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic mQ:Lcom/android/settings_ex/de;

.field final synthetic rf:Lcom/android/settings_ex/MiuiFingerprintDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiFingerprintDetailFragment;Lcom/android/settings_ex/de;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/eu;->rf:Lcom/android/settings_ex/MiuiFingerprintDetailFragment;

    iput-object p2, p0, Lcom/android/settings_ex/eu;->mQ:Lcom/android/settings_ex/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 81
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/settings_ex/cZ;

    iget-object v1, p0, Lcom/android/settings_ex/eu;->rf:Lcom/android/settings_ex/MiuiFingerprintDetailFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/cZ;-><init>(Landroid/content/Context;)V

    .line 83
    iget-object v1, p0, Lcom/android/settings_ex/eu;->rf:Lcom/android/settings_ex/MiuiFingerprintDetailFragment;

    invoke-static {v1}, Lcom/android/settings_ex/MiuiFingerprintDetailFragment;->a(Lcom/android/settings_ex/MiuiFingerprintDetailFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/eu;->mQ:Lcom/android/settings_ex/de;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/cZ;->a(Ljava/lang/String;Lcom/android/settings_ex/de;)V

    .line 85
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 86
    return-void
.end method
