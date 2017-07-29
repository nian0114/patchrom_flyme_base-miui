.class Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$3;
.super Ljava/lang/Object;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$3;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$3;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/settings_ex/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordManager;->ba(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$3;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->c(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword$3;->ann:Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;->d(Lcom/android/settings_ex/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/settings_ex/cZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/cZ;->dX()V

    .line 336
    return-void
.end method
