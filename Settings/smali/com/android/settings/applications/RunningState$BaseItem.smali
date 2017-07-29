.class Lcom/android/settings_ex/applications/RunningState$BaseItem;
.super Ljava/lang/Object;
.source "RunningState.java"


# instance fields
.field final ON:Z

.field OO:Landroid/content/pm/PackageItemInfo;

.field OP:Ljava/lang/CharSequence;

.field OQ:I

.field OR:J

.field OS:Ljava/lang/String;

.field OT:Ljava/lang/String;

.field OU:Z

.field OV:Z

.field mDescription:Ljava/lang/String;

.field mLabel:Ljava/lang/String;

.field mSize:J

.field final mUserId:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-boolean p1, p0, Lcom/android/settings_ex/applications/RunningState$BaseItem;->ON:Z

    .line 364
    iput p2, p0, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    .line 365
    return-void
.end method
