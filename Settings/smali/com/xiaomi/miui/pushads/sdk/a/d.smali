.class public Lcom/xiaomi/miui/pushads/sdk/a/d;
.super Ljava/lang/Object;
.source "MiuiAdsTraceCell.java"


# instance fields
.field public aZA:I

.field public aZI:J

.field public content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/miui/pushads/sdk/a/b;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-wide v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    iput-wide v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/d;->aZI:J

    .line 23
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZA:I

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/a/d;->aZA:I

    .line 24
    return-void
.end method
