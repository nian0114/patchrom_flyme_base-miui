.class Lcom/android/settings_ex/aM;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fw:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings_ex/aM;->fw:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/aM;->fw:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/aM;->fw:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    invoke-static {v0, v2, v2, v1}, Lcom/android/settings_ex/fA;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/security/MiuiLockPatternUtils;)V

    .line 203
    return-void
.end method