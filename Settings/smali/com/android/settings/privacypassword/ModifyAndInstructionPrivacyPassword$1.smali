.class Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$1;
.super Ljava/lang/Object;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ann:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$1;->ann:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 274
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$1;->ann:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$1;->ann:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v1}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->cc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bk(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$1;->ann:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$1;->ann:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c11eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 276
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$1;->ann:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;->b(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 277
    return-void
.end method
