.class Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParoleCheck"
.end annotation


# static fields
.field private static final MSG_PAROLE_CHECK_RUNNING:I = 0x3ea

.field private static final MSG_START_PAROLE_CHECK:I = 0x3e9

.field private static final STATE_RUNNING:I = 0x4

.field private static final STATE_STARTED:I = 0x3

.field private static final STATE_STARTING:I = 0x1

.field private static final STATE_STOPPED:I = 0x0

.field private static final STATE_STOPPING:I = 0x2


# instance fields
.field private mInParole:Z

.field private mMsgWhat:I

.field private mNotifyHandler:Landroid/os/Handler;

.field private mParoleArray:[J

.field private mParoleCheckHandler:Landroid/os/Handler;

.field private mParoleIndex:I

.field private mParoleLock:Ljava/lang/Object;

.field private state:I

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Handler;I)V
    .locals 3
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "msgWhat"    # I

    .prologue
    const/4 v2, 0x0

    .line 1605
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1595
    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    .line 1597
    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1599
    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1600
    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1601
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    .line 1606
    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    .line 1607
    iput p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    .line 1608
    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 1616
    .local v0, "paroleCheckCallback":Landroid/os/Handler$Callback;
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    .line 1617
    return-void

    .line 1595
    :array_0
    .array-data 8
        0x6ddd000
        0x7530
    .end array-data
.end method

.method static synthetic access$1800(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 1586
    invoke-direct {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->onParoleMessageHandlerLocked(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private enterParoleAndNotifyLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1684
    iput-boolean v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1685
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1686
    return-void
.end method

.method private enterParoleLocked()V
    .locals 1

    .prologue
    .line 1676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1677
    return-void
.end method

.method private exitParoleAndNotifyLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1689
    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1690
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1691
    return-void
.end method

.method private exitParoleLocked()V
    .locals 1

    .prologue
    .line 1680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1681
    return-void
.end method

.method private onParoleMessageHandlerLocked(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x3ea

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 1694
    const/4 v3, 0x1

    .line 1695
    .local v3, "ret":Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1733
    const/4 v3, 0x0

    .line 1737
    :cond_0
    :goto_0
    return v3

    .line 1697
    :pswitch_0
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1700
    iput v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1701
    iput v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1702
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    if-eqz v4, :cond_0

    .line 1703
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    aget-wide v0, v4, v6

    .line 1704
    .local v0, "delayMillis":J
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1709
    .end local v0    # "delayMillis":J
    :pswitch_1
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-ne v4, v7, :cond_0

    .line 1712
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    if-nez v4, :cond_1

    .line 1713
    const-string v4, "PowerKeeperPolicy"

    const-string v5, "Parole check array is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1717
    :cond_1
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 1718
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->enterParoleAndNotifyLocked()V

    .line 1722
    :goto_1
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    array-length v2, v4

    .line 1723
    .local v2, "length":I
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_3

    .line 1724
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1728
    :goto_2
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    iget v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    aget-wide v0, v4, v5

    .line 1729
    .restart local v0    # "delayMillis":J
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1720
    .end local v0    # "delayMillis":J
    .end local v2    # "length":I
    :cond_2
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleAndNotifyLocked()V

    goto :goto_1

    .line 1726
    .restart local v2    # "length":I
    :cond_3
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    goto :goto_2

    .line 1695
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isInParoleState()Z
    .locals 2

    .prologue
    .line 1670
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1671
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    monitor-exit v1

    return v0

    .line 1672
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isWorking()Z
    .locals 2

    .prologue
    .line 1661
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1662
    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-nez v0, :cond_0

    .line 1663
    const/4 v0, 0x0

    monitor-exit v1

    .line 1665
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 1666
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setParoleCheckParam([J)V
    .locals 4
    .param p1, "array"    # [J

    .prologue
    const/4 v3, 0x4

    .line 1640
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1641
    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1642
    .local v0, "initState":I
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-ne v1, v3, :cond_1

    .line 1643
    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1644
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleAndNotifyLocked()V

    .line 1646
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    # invokes: Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanAllLocked()V
    invoke-static {v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$1700(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 1648
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1649
    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_5

    .line 1650
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    .line 1654
    :cond_3
    :goto_0
    if-ne v0, v3, :cond_4

    .line 1655
    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V

    .line 1657
    :cond_4
    monitor-exit v2

    .line 1658
    return-void

    .line 1651
    :cond_5
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 1652
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    goto :goto_0

    .line 1657
    .end local v0    # "initState":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startParoleCheck()V
    .locals 3

    .prologue
    .line 1620
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1621
    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-nez v0, :cond_0

    .line 1622
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1623
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleLocked()V

    .line 1624
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1626
    :cond_0
    monitor-exit v1

    .line 1627
    return-void

    .line 1626
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopParoleCheck()V
    .locals 3

    .prologue
    .line 1630
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1631
    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-eqz v0, :cond_0

    .line 1632
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1633
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleLocked()V

    .line 1634
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1636
    :cond_0
    monitor-exit v1

    .line 1637
    return-void

    .line 1636
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
