.class Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl$6;
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
    .line 291
    iput-object p1, p0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl$6;->aok:Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl$6;->aok:Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;->a(Lcom/android/settings_ex/privacypassword/PrivacyPasswordConfirmAccessControl;Z)Z

    .line 296
    return-void
.end method