.class public Lcom/android/settings/bootloader/d;
.super Ljava/lang/Object;
.source "Utils.java"


# instance fields
.field public SC:I

.field public SD:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/bootloader/d;->SC:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bootloader/d;->SD:Ljava/lang/String;

    .line 71
    return-void
.end method