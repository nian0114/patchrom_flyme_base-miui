.class Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$4;
.super Ljava/lang/Object;
.source "PrivacyPasswordChooseAccessControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic anw:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$4;->anw:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$4;->anw:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl;

    sget-object v1, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anP:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl;->a(Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    .line 310
    return-void
.end method