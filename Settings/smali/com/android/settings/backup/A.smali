.class public Lcom/android/settings_ex/backup/A;
.super Ljava/lang/Object;
.source "SystemData.java"


# instance fields
.field public Qi:Ljava/lang/String;

.field public Qj:Ljava/lang/String;

.field public Qk:I

.field public mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/backup/A;->mPackageName:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/backup/A;->Qi:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/backup/A;->Qj:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/android/settings_ex/backup/A;->mPackageName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/android/settings_ex/backup/A;->Qi:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/android/settings_ex/backup/A;->Qj:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/android/settings_ex/backup/A;->Qk:I

    .line 19
    return-void
.end method
