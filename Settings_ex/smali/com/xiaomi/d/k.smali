.class Lcom/xiaomi/d/k;
.super Ljava/lang/Object;
.source "StatsHelper.java"


# static fields
.field static bkr:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/xiaomi/d/k;->bkr:Ljava/util/Hashtable;

    return-void
.end method
