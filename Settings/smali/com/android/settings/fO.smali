.class Lcom/android/settings/fO;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic vf:Lcom/android/settings/fN;


# direct methods
.method constructor <init>(Lcom/android/settings/fN;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings/fO;->vf:Lcom/android/settings/fN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/settings/fO;->vf:Lcom/android/settings/fN;

    iget-object v0, v0, Lcom/android/settings/fN;->vd:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->g(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c1116

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/fO;->vf:Lcom/android/settings/fN;

    iget-object v0, v0, Lcom/android/settings/fN;->vd:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->h(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c1117

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/fO;->vf:Lcom/android/settings/fN;

    iget-object v0, v0, Lcom/android/settings/fN;->vd:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->i(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/fO;->vf:Lcom/android/settings/fN;

    iget-object v0, v0, Lcom/android/settings/fN;->vd:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->j(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/fO;->vf:Lcom/android/settings/fN;

    iget-object v0, v0, Lcom/android/settings/fN;->vd:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 315
    return-void
.end method
