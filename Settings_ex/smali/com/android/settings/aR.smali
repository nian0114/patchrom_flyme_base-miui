.class Lcom/android/settings_ex/aR;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fO:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings_ex/aR;->fO:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/aR;->fO:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/aR;->fO:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->aI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/aR;->fO:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->aH()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/aR;->fO:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v3, v3, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/fA;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/security/MiuiLockPatternUtils;)V

    .line 190
    return-void
.end method
