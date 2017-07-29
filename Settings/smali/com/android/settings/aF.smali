.class Lcom/android/settings_ex/aF;
.super Landroid/text/style/ClickableSpan;
.source "ChooseLockPattern.java"


# instance fields
.field final synthetic eu:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/settings_ex/aF;->eu:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/settings_ex/aF;->eu:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings_ex/aF;->eu:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/LockSecureAfterTimeout;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 424
    return-void
.end method
