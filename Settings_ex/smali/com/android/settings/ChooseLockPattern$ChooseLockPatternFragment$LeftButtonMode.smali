.class final enum Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# static fields
.field private static final synthetic eA:[Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum ev:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum ew:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum ex:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum ey:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum ez:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Cancel"

    const v2, 0x7f0c01a7

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ev:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 256
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "CancelDisabled"

    const v2, 0x7f0c01a7

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ew:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 257
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Retry"

    const v2, 0x7f0c055f

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ex:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 258
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "RetryDisabled"

    const v2, 0x7f0c055f

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ey:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 259
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Gone"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ez:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 254
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ev:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ew:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ex:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ey:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->ez:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->eA:[Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 267
    iput p3, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    .line 268
    iput-boolean p4, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    .line 269
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1

    .prologue
    .line 254
    const-class v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->eA:[Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-virtual {v0}, [Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method