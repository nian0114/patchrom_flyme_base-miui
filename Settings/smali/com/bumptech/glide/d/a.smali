.class Lcom/bumptech/glide/d/a;
.super Ljava/lang/Object;
.source "ActivityFragmentLifecycle.java"

# interfaces
.implements Lcom/bumptech/glide/d/i;


# instance fields
.field private aTU:Z

.field private final aUP:Ljava/util/Set;

.field private aUQ:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/a;->aUP:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/d/j;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/d/a;->aUP:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    iget-boolean v0, p0, Lcom/bumptech/glide/d/a;->aUQ:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p1}, Lcom/bumptech/glide/d/j;->onDestroy()V

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/d/a;->aTU:Z

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {p1}, Lcom/bumptech/glide/d/j;->onStart()V

    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/d/j;->onStop()V

    goto :goto_0
.end method

.method onDestroy()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/d/a;->aUQ:Z

    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/d/a;->aUP:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/h;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d/j;

    .line 64
    invoke-interface {v0}, Lcom/bumptech/glide/d/j;->onDestroy()V

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method onStart()V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/d/a;->aTU:Z

    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/d/a;->aUP:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/h;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d/j;

    .line 50
    invoke-interface {v0}, Lcom/bumptech/glide/d/j;->onStart()V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method onStop()V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/d/a;->aTU:Z

    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/d/a;->aUP:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/h/h;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d/j;

    .line 57
    invoke-interface {v0}, Lcom/bumptech/glide/d/j;->onStop()V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method
