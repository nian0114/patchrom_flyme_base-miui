.class public Lcom/bumptech/glide/b/d;
.super Ljava/lang/Object;
.source "GifHeader.java"


# instance fields
.field aOY:[I

.field aOZ:I

.field aPa:Lcom/bumptech/glide/b/c;

.field aPb:Ljava/util/List;

.field aPc:Z

.field aPd:I

.field aPe:I

.field aPf:I

.field aPg:I

.field bgColor:I

.field height:I

.field status:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/b/d;->aOY:[I

    .line 14
    iput v1, p0, Lcom/bumptech/glide/b/d;->status:I

    .line 15
    iput v1, p0, Lcom/bumptech/glide/b/d;->aOZ:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b/d;->aPb:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Cf()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/bumptech/glide/b/d;->aOZ:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/bumptech/glide/b/d;->status:I

    return v0
.end method
