.class public Lcom/bumptech/glide/f/a;
.super Ljava/lang/Object;
.source "ChildLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/f/f;
.implements Ljava/lang/Cloneable;


# instance fields
.field private aQu:Lcom/bumptech/glide/load/resource/e/c;

.field private aRd:Lcom/bumptech/glide/load/d;

.field private aRf:Lcom/bumptech/glide/load/e;

.field private aRg:Lcom/bumptech/glide/load/a;

.field private aUK:Lcom/bumptech/glide/load/d;

.field private final aVk:Lcom/bumptech/glide/f/f;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/f/f;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/f/a;->aVk:Lcom/bumptech/glide/f/f;

    .line 31
    return-void
.end method


# virtual methods
.method public DA()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aUK:Lcom/bumptech/glide/load/d;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aUK:Lcom/bumptech/glide/load/d;

    .line 105
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aVk:Lcom/bumptech/glide/f/f;

    invoke-interface {v0}, Lcom/bumptech/glide/f/f;->DA()Lcom/bumptech/glide/load/d;

    move-result-object v0

    goto :goto_0
.end method

.method public DB()Lcom/bumptech/glide/load/a;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aRg:Lcom/bumptech/glide/load/a;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aRg:Lcom/bumptech/glide/load/a;

    .line 117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aVk:Lcom/bumptech/glide/f/f;

    invoke-interface {v0}, Lcom/bumptech/glide/f/f;->DB()Lcom/bumptech/glide/load/a;

    move-result-object v0

    goto :goto_0
.end method

.method public DC()Lcom/bumptech/glide/load/e;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aRf:Lcom/bumptech/glide/load/e;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aRf:Lcom/bumptech/glide/load/e;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aVk:Lcom/bumptech/glide/f/f;

    invoke-interface {v0}, Lcom/bumptech/glide/f/f;->DC()Lcom/bumptech/glide/load/e;

    move-result-object v0

    goto :goto_0
.end method

.method public Dz()Lcom/bumptech/glide/load/d;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aRd:Lcom/bumptech/glide/load/d;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aRd:Lcom/bumptech/glide/load/d;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aVk:Lcom/bumptech/glide/f/f;

    invoke-interface {v0}, Lcom/bumptech/glide/f/f;->Dz()Lcom/bumptech/glide/load/d;

    move-result-object v0

    goto :goto_0
.end method

.method public Eg()Lcom/bumptech/glide/load/b/s;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aVk:Lcom/bumptech/glide/f/f;

    invoke-interface {v0}, Lcom/bumptech/glide/f/f;->Eg()Lcom/bumptech/glide/load/b/s;

    move-result-object v0

    return-object v0
.end method

.method public Eh()Lcom/bumptech/glide/load/resource/e/c;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aQu:Lcom/bumptech/glide/load/resource/e/c;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aQu:Lcom/bumptech/glide/load/resource/e/c;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->aVk:Lcom/bumptech/glide/f/f;

    invoke-interface {v0}, Lcom/bumptech/glide/f/f;->Eh()Lcom/bumptech/glide/load/resource/e/c;

    move-result-object v0

    goto :goto_0
.end method

.method public Ei()Lcom/bumptech/glide/f/a;
    .locals 2

    .prologue
    .line 149
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/bumptech/glide/f/a;->Ei()Lcom/bumptech/glide/f/a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/bumptech/glide/load/a;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bumptech/glide/f/a;->aRg:Lcom/bumptech/glide/load/a;

    .line 83
    return-void
.end method

.method public d(Lcom/bumptech/glide/load/d;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bumptech/glide/f/a;->aUK:Lcom/bumptech/glide/load/d;

    .line 54
    return-void
.end method
