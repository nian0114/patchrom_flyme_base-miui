.class Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$4;
.super Ljava/lang/Object;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$4;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$4;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->e(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$4;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->f(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$4;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0, v2}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;Z)Z

    .line 344
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$4;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0, v2}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;I)I

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$4;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/settings_ex/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordManager;->ba(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$4;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->c(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$4;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->d(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/settings_ex/cZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/cZ;->dX()V

    .line 349
    return-void
.end method
