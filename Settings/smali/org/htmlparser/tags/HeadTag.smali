.class public Lorg/htmlparser/tags/HeadTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "HeadTag.java"


# static fields
.field private static final btH:[Ljava/lang/String;

.field private static final btI:[Ljava/lang/String;

.field private static final btL:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "HEAD"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/HeadTag;->btH:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HEAD"

    aput-object v1, v0, v2

    const-string v1, "BODY"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/HeadTag;->btL:[Ljava/lang/String;

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "HTML"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/HeadTag;->btI:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public Nu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/htmlparser/tags/HeadTag;->btH:[Ljava/lang/String;

    return-object v0
.end method

.method public Nv()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/htmlparser/tags/HeadTag;->btL:[Ljava/lang/String;

    return-object v0
.end method

.method public Nw()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/htmlparser/tags/HeadTag;->btI:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HEAD: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/htmlparser/tags/CompositeTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
