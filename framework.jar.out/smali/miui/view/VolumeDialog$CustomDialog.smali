.class final Lmiui/view/VolumeDialog$CustomDialog;
.super Landroid/app/Dialog;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method public constructor <init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 859
    iput-object p1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    .line 860
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 861
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 865
    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3300(Lmiui/view/VolumeDialog;)V

    .line 866
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 871
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 873
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 874
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 876
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 878
    const-string v0, "miui.intent.TAKE_SCREENSHOT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$4800(Lmiui/view/VolumeDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lmiui/view/VolumeDialog;->access$4700(Lmiui/view/VolumeDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 880
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 884
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 885
    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$4800(Lmiui/view/VolumeDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lmiui/view/VolumeDialog;->access$4700(Lmiui/view/VolumeDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 886
    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$100(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 887
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 892
    invoke-virtual {p0}, Lmiui/view/VolumeDialog$CustomDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 894
    iget-object v3, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->dismissH()V
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$3100(Lmiui/view/VolumeDialog;)V

    .line 910
    :goto_0
    return v2

    .line 898
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_2

    .line 899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownX:F

    .line 900
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownY:F

    .line 910
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 901
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 902
    iget v3, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 903
    .local v0, "diffx":F
    iget v3, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v1, v3, v4

    .line 904
    .local v1, "diffy":F
    cmpg-float v3, v0, v1

    if-gez v3, :cond_1

    iget-object v3, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$4800(Lmiui/view/VolumeDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 905
    iget-object v3, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->dismissH()V
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$3100(Lmiui/view/VolumeDialog;)V

    goto :goto_0
.end method
