.class public final enum Lcom/android/settings_ex/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# static fields
.field public static final enum pA:Lcom/android/settings_ex/LockPatternView$DisplayMode;

.field public static final enum pB:Lcom/android/settings_ex/LockPatternView$DisplayMode;

.field private static final synthetic pC:[Lcom/android/settings_ex/LockPatternView$DisplayMode;

.field public static final enum pz:Lcom/android/settings_ex/LockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    new-instance v0, Lcom/android/settings_ex/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/LockPatternView$DisplayMode;->pz:Lcom/android/settings_ex/LockPatternView$DisplayMode;

    .line 126
    new-instance v0, Lcom/android/settings_ex/LockPatternView$DisplayMode;

    const-string v1, "Animate"

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/LockPatternView$DisplayMode;->pA:Lcom/android/settings_ex/LockPatternView$DisplayMode;

    .line 131
    new-instance v0, Lcom/android/settings_ex/LockPatternView$DisplayMode;

    const-string v1, "Wrong"

    invoke-direct {v0, v1, v4}, Lcom/android/settings_ex/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/LockPatternView$DisplayMode;->pB:Lcom/android/settings_ex/LockPatternView$DisplayMode;

    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings_ex/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/settings_ex/LockPatternView$DisplayMode;->pz:Lcom/android/settings_ex/LockPatternView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/LockPatternView$DisplayMode;->pA:Lcom/android/settings_ex/LockPatternView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ex/LockPatternView$DisplayMode;->pB:Lcom/android/settings_ex/LockPatternView$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings_ex/LockPatternView$DisplayMode;->pC:[Lcom/android/settings_ex/LockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/LockPatternView$DisplayMode;
    .locals 1

    .prologue
    .line 116
    const-class v0, Lcom/android/settings_ex/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/LockPatternView$DisplayMode;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/settings_ex/LockPatternView$DisplayMode;->pC:[Lcom/android/settings_ex/LockPatternView$DisplayMode;

    invoke-virtual {v0}, [Lcom/android/settings_ex/LockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/LockPatternView$DisplayMode;

    return-object v0
.end method
