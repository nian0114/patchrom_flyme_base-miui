.class public final enum Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;
.super Ljava/lang/Enum;
.source "PrivacyPasswordConfirmAccessControl.java"


# static fields
.field public static final enum aoo:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

.field public static final enum aop:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

.field public static final enum aoq:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

.field private static final synthetic aor:[Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    const-string v1, "NeedToUnlock"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aoo:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    const-string v1, "NeedToUnlockWrong"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aop:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    const-string v1, "LockedOut"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aoq:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aoo:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aop:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aoq:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aor:[Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->aor:[Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    return-object v0
.end method
