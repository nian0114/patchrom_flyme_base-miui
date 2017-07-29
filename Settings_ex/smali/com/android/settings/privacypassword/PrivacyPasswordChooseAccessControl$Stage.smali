.class public final enum Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;
.super Ljava/lang/Enum;
.source "PrivacyPasswordChooseAccessControl.java"


# static fields
.field public static final enum anL:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

.field public static final enum anM:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

.field public static final enum anN:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

.field public static final enum anO:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

.field public static final enum anP:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

.field public static final enum anQ:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

.field public static final enum anR:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

.field private static final synthetic anS:[Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;


# instance fields
.field final footerMessage:I

.field headerMessage:I

.field final leftMode:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 94
    new-instance v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f0c0556

    sget-object v4, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->anC:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->anJ:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anL:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    .line 96
    new-instance v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f0c056a

    sget-object v4, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->anC:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->anI:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anM:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    .line 98
    new-instance v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    const v3, 0x7f0c0559

    sget-object v4, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->anC:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->anJ:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anN:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    .line 100
    new-instance v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x3

    const v3, 0x7f0c055a

    sget-object v4, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->anC:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->anJ:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anO:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    .line 102
    new-instance v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x4

    const v3, 0x7f0c055b

    sget-object v4, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->anA:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->anH:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anP:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    .line 104
    new-instance v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x5

    const v3, 0x7f0c0552

    sget-object v4, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->anA:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->anH:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anQ:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    .line 106
    new-instance v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x6

    const v3, 0x7f0c055c

    sget-object v4, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->anA:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->anG:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anR:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    .line 93
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anL:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anM:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anN:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anO:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anP:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anQ:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anR:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anS:[Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;IZ)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->headerMessage:I

    .line 111
    iput-object p4, p0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->leftMode:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    .line 112
    iput-object p5, p0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->rightMode:Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    .line 113
    iput p6, p0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->footerMessage:I

    .line 114
    iput-boolean p7, p0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->patternEnabled:Z

    .line 115
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anS:[Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v0}, [Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    return-object v0
.end method
