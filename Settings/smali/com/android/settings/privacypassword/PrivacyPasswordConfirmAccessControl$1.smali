.class Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl$1;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aok:Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl$1;->aok:Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl$1;->aok:Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings_ex/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/LockPatternView;->clearPattern()V

    .line 125
    return-void
.end method
