.class final Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;
.super Landroid/os/Handler;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field static final ACTIVITY_DESTROYED:I = 0x5

.field static final ACTIVITY_IDLE:I = 0x1

.field static final ACTIVITY_PAUSED:I = 0x3

.field static final ACTIVITY_RESUMED:I = 0x2

.field static final ACTIVITY_STOPPED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    .line 516
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 517
    return-void
.end method

.method private canDispatchNow(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .locals 12
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 581
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 582
    const-string v9, "packages"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 583
    .local v5, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "activities"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 584
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    move v4, v7

    .line 585
    .local v4, "needFilterPackage":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    move v3, v7

    .line 586
    .local v3, "needFilterActivity":Z
    :goto_1
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    .line 619
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v3    # "needFilterActivity":Z
    .end local v4    # "needFilterPackage":Z
    .end local v5    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_2
    return v7

    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v5    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    move v4, v8

    .line 584
    goto :goto_0

    .restart local v4    # "needFilterPackage":Z
    :cond_2
    move v3, v8

    .line 585
    goto :goto_1

    .line 589
    .restart local v3    # "needFilterActivity":Z
    :cond_3
    if-eqz v4, :cond_5

    .line 590
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 593
    const-string v9, "MiuiLog-ActivityObserver:"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not matched"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :goto_3
    if-eqz v3, :cond_8

    .line 599
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 600
    .local v6, "realActivity":Landroid/content/ComponentName;
    if-eqz v6, :cond_7

    .line 601
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 602
    .local v1, "activity":Landroid/content/ComponentName;
    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 596
    .end local v1    # "activity":Landroid/content/ComponentName;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "realActivity":Landroid/content/ComponentName;
    :cond_5
    const-string v9, "MiuiLog-ActivityObserver:"

    const-string v10, "Don\'t need to check package"

    invoke-static {v9, v10}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 606
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "realActivity":Landroid/content/ComponentName;
    :cond_6
    const-string v7, "MiuiLog-ActivityObserver:"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not matched"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "realActivity":Landroid/content/ComponentName;
    :goto_4
    move v7, v8

    .line 614
    goto :goto_2

    .line 609
    .restart local v6    # "realActivity":Landroid/content/ComponentName;
    :cond_7
    const-string v7, "MiuiLog-ActivityObserver:"

    const-string v9, "The realActivity is null"

    invoke-static {v7, v9}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 612
    .end local v6    # "realActivity":Landroid/content/ComponentName;
    :cond_8
    const-string v7, "MiuiLog-ActivityObserver:"

    const-string v9, "Don\'t need to check activity"

    invoke-static {v7, v9}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 618
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v3    # "needFilterActivity":Z
    .end local v4    # "needFilterPackage":Z
    .end local v5    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    const-string v7, "MiuiLog-ActivityObserver:"

    const-string v9, "Record or intent is null"

    invoke-static {v7, v9}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 619
    goto/16 :goto_2
.end method

.method private dispatchEvent(ILandroid/app/IMiuiActivityObserver;Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "observer"    # Landroid/app/IMiuiActivityObserver;
    .param p3, "record"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mSendIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->access$200(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/content/Intent;

    move-result-object v0

    .line 625
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 626
    packed-switch p1, :pswitch_data_0

    .line 646
    :goto_0
    return-void

    .line 628
    :pswitch_0
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityIdle(Landroid/content/Intent;)V

    goto :goto_0

    .line 631
    :pswitch_1
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityResumed(Landroid/content/Intent;)V

    goto :goto_0

    .line 634
    :pswitch_2
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityPaused(Landroid/content/Intent;)V

    goto :goto_0

    .line 637
    :pswitch_3
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityStopped(Landroid/content/Intent;)V

    goto :goto_0

    .line 640
    :pswitch_4
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityDestroyed(Landroid/content/Intent;)V

    goto :goto_0

    .line 626
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 520
    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->DEBUG_MESSAGES:Z
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    packed-switch p1, :pswitch_data_0

    .line 529
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 522
    :pswitch_0
    const-string v0, "ACTIVITY_IDLE"

    goto :goto_0

    .line 523
    :pswitch_1
    const-string v0, "ACTIVITY_RESUMED"

    goto :goto_0

    .line 524
    :pswitch_2
    const-string v0, "ACTIVITY_PAUSED"

    goto :goto_0

    .line 525
    :pswitch_3
    const-string v0, "ACTIVITY_STOPPED"

    goto :goto_0

    .line 526
    :pswitch_4
    const-string v0, "ACTIVITY_DESTROYED"

    goto :goto_0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 534
    iget v5, p1, Landroid/os/Message;->what:I

    .line 535
    .local v5, "what":I
    packed-switch v5, :pswitch_data_0

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 541
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_0

    .line 542
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    monitor-enter v7

    .line 543
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->access$100(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 544
    .local v2, "i":I
    :cond_1
    :goto_1
    if-lez v2, :cond_4

    .line 545
    add-int/lit8 v2, v2, -0x1

    .line 546
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->access$100(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IMiuiActivityObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    .local v3, "observer":Landroid/app/IMiuiActivityObserver;
    if-eqz v3, :cond_1

    .line 549
    :try_start_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 550
    .local v4, "record":Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->access$100(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    .line 551
    .local v0, "cookie":Ljava/lang/Object;
    if-eqz v0, :cond_3

    instance-of v6, v0, Landroid/content/Intent;

    if-eqz v6, :cond_3

    .line 552
    check-cast v0, Landroid/content/Intent;

    .end local v0    # "cookie":Ljava/lang/Object;
    invoke-direct {p0, v4, v0}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->canDispatchNow(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 553
    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->dispatchEvent(ILandroid/app/IMiuiActivityObserver;Lcom/android/server/am/ActivityRecord;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 561
    .end local v4    # "record":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v1

    .line 562
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MiuiActivityController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MiuiLog-ActivityObserver: There was something wrong : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 569
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "observer":Landroid/app/IMiuiActivityObserver;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 555
    .restart local v2    # "i":I
    .restart local v3    # "observer":Landroid/app/IMiuiActivityObserver;
    .restart local v4    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :try_start_3
    const-string v6, "MiuiLog-ActivityObserver:"

    const-string v8, " No need to dispatch the event, ignore it!"

    invoke-static {v6, v8}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 563
    .end local v4    # "record":Lcom/android/server/am/ActivityRecord;
    :catch_1
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v6, "MiuiActivityController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MiuiLog-ActivityObserver: There was something wrong : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 559
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cookie":Ljava/lang/Object;
    .restart local v4    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :try_start_5
    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->dispatchEvent(ILandroid/app/IMiuiActivityObserver;Lcom/android/server/am/ActivityRecord;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 568
    .end local v0    # "cookie":Ljava/lang/Object;
    .end local v3    # "observer":Landroid/app/IMiuiActivityObserver;
    .end local v4    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :try_start_6
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->access$100(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 569
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
