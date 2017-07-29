.class Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;
.super Ljava/lang/Object;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Lcom/android/settings_ex/dd;


# instance fields
.field final synthetic ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public G(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/settings_ex/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordManager;->ba(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    iget-object v1, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-virtual {v1}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c11f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->i(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 384
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->i(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0, v3}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;Z)Z

    .line 386
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;I)I

    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->k(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    .line 388
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->d(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/settings_ex/cZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/cZ;->dX()V

    .line 389
    return-void
.end method

.method public onFailed()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordUtils;->bZ(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 363
    iget-object v1, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v1, v0}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordUtils;->s(Landroid/content/Context;I)V

    .line 364
    iget-object v1, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v1}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->g(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)I

    move-result v1

    if-ge v1, v4, :cond_0

    if-ge v0, v4, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0, v3}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;Z)Z

    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->h(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-virtual {v1}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c11ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->i(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->j(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    .line 377
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0, v2}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;Z)Z

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->i(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 373
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0, v2}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;I)I

    .line 374
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    iget-object v1, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-virtual {v1}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c11f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$5;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->k(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)V

    goto :goto_0
.end method
