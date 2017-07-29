.class Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl$4;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aok:Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl$4;->aok:Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl$4;->aok:Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v0}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;->finish()V

    .line 185
    return-void
.end method
