.class Lcom/android/settings_ex/eI;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"


# instance fields
.field final synthetic rB:Lcom/android/settings_ex/eG;

.field private rC:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/eG;I)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/settings_ex/eI;->rB:Lcom/android/settings_ex/eG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput p2, p0, Lcom/android/settings_ex/eI;->rC:I

    .line 653
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 663
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    monitor-exit p0

    return-void

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fq()V
    .locals 2

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings_ex/eI;->rC:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :goto_0
    monitor-exit p0

    return-void

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 658
    :catch_0
    move-exception v0

    goto :goto_0
.end method
