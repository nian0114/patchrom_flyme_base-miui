.class public Lcom/android/server/policy/MiuiPhoneWindowManager;
.super Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.source "MiuiPhoneWindowManager.java"


# static fields
.field private static final ACTION_NOT_PASS_TO_USER:I = 0x0

.field private static final ACTION_PASS_TO_USER:I = 0x1

.field private static final FINGERPRINT_NAV_ACTION_DEFAULT:I = -0x1

.field private static final FINGERPRINT_NAV_ACTION_HOME:I = 0x1

.field private static final FINGERPRINT_NAV_ACTION_NONE:I


# instance fields
.field private mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

.field private mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field private mKeyguardAdded:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    .line 318
    iput-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/MiuiPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->bringUpActionChooseDlg()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/MiuiPhoneWindowManager;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/MiuiPhoneWindowManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private bringUpActionChooseDlg()V
    .locals 4

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 346
    :goto_0
    return-void

    .line 324
    :cond_0
    new-instance v0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$2;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    .line 336
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x110700bd

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x110700be

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x110700bf

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x110700c0

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    .line 342
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 343
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 344
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 345
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private injectBackEvent()V
    .locals 13

    .prologue
    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 366
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 367
    .local v1, "homeDown":Landroid/view/KeyEvent;
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 368
    .local v5, "homeUp":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 369
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 370
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v4, v6}, Lcom/android/server/policy/MiuiPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 371
    return-void
.end method

.method private injectCameraEvent(Landroid/view/KeyEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 357
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 358
    .local v4, "now":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x1b

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    const/4 v13, 0x0

    move-wide v6, v4

    invoke-direct/range {v3 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 359
    .local v3, "CameraDown":Landroid/view/KeyEvent;
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v12, 0x1

    const/16 v13, 0x1b

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v16

    const/16 v17, 0x0

    move-wide v8, v4

    move-wide v10, v4

    invoke-direct/range {v7 .. v17}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 360
    .local v7, "CameraUp":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 361
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v7, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 362
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v8}, Lcom/android/server/policy/MiuiPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 363
    return-void
.end method

.method private injectHomeEvent()V
    .locals 13

    .prologue
    .line 349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 350
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 351
    .local v1, "homeDown":Landroid/view/KeyEvent;
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v5 .. v12}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 352
    .local v5, "homeUp":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 353
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 354
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v4, v6}, Lcom/android/server/policy/MiuiPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 355
    return-void
.end method

.method private processBackFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isScreenOnInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    const-string v0, "com.android.camera"

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectCameraEvent(Landroid/view/KeyEvent;)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0
.end method

.method private processFrontFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 257
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 258
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    if-eqz v1, :cond_1

    .line 259
    iput-boolean v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    .line 260
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    if-eqz v1, :cond_1

    .line 261
    iput-boolean v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    .line 262
    const-string v1, "BaseMiuiPhoneWindowManager"

    const-string v2, "After dpcenter & home down, ignore tap fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 267
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v1, :cond_2

    .line 268
    invoke-direct {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectBackEvent()V

    goto :goto_0

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_nav_center_action"

    const/4 v3, -0x2

    invoke-static {v1, v2, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 272
    .local v0, "action":I
    if-ne v7, v0, :cond_3

    .line 273
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/MiuiPhoneWindowManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 279
    :cond_3
    if-ne v6, v0, :cond_4

    .line 280
    invoke-direct {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectHomeEvent()V

    goto :goto_0

    .line 281
    :cond_4
    if-nez v0, :cond_0

    goto :goto_0

    .line 286
    .end local v0    # "action":I
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iput-boolean v6, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    goto :goto_0
.end method


# virtual methods
.method protected callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 204
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    .line 73
    return-void
.end method

.method public finishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->screenTurnedOffInternal(I)V

    .line 62
    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->finishedGoingToSleep(I)V

    .line 63
    return-void
.end method

.method protected forceStopPackage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "OwningUserId"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 79
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method protected getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method protected getWakePolicyFlag()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/MiuiPhoneWindowManager;->initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 50
    return-void
.end method

.method protected intercept(Landroid/view/KeyEvent;IZI)I
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "expectedResult"    # I

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    .line 142
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 143
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, -0x1

    if-ne p4, v1, :cond_1

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 148
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 145
    :cond_1
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 84
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFingerPrintKey(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 247
    .local v0, "keyCode":I
    packed-switch v0, :pswitch_data_0

    .line 254
    .end local v0    # "keyCode":I
    :cond_0
    :goto_0
    return v1

    .line 249
    .restart local v0    # "keyCode":I
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 90
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method protected isInLockTaskMode()Z
    .locals 3

    .prologue
    .line 232
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 233
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 240
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :goto_0
    return v2

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 168
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isScreenOnInternal()Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method protected isStatusBarKeyguard()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 3
    .param p1, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    .prologue
    .line 210
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 107
    const/16 v1, 0x7d4

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v2, :cond_2

    .line 108
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    .line 109
    const/4 v0, -0x7

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    .line 113
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hideScrim()V

    .line 116
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 117
    .local v0, "ret":I
    const/16 v1, 0x7d0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    goto :goto_0
.end method

.method protected processFingerprintNavigationEvent(Landroid/view/KeyEvent;)I
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 303
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 304
    .local v0, "keyCode":I
    packed-switch v0, :pswitch_data_0

    .line 314
    :goto_0
    return v2

    .line 306
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    if-eqz v1, :cond_0

    .line 307
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->processFrontFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->processBackFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v1, p1, :cond_1

    .line 127
    const-string v1, "WindowManager"

    const-string v2, "Removing keyguard window (Did it crash?)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 129
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v1, p1, :cond_3

    const/4 v0, 0x1

    .line 132
    .local v0, "isStatusBarWindowRemoving":Z
    :goto_1
    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 133
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    if-nez v1, :cond_0

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hideScrim()V

    goto :goto_0

    .line 131
    .end local v0    # "isStatusBarWindowRemoving":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected screenOffBecauseOfProxSensor()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method protected setKeyguardVisibilityState(Z)Z
    .locals 5
    .param p1, "hide"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 172
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardOccluded:Z

    .line 173
    .local v1, "wasOccluded":Z
    iget-object v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v4, v4, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .line 174
    .local v0, "showing":Z
    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 175
    iput-boolean v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardOccluded:Z

    .line 176
    iget-object v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v4, v4, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 177
    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 189
    :cond_0
    :goto_0
    return v2

    .line 181
    :cond_1
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 182
    iput-boolean v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardOccluded:Z

    .line 183
    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v3, v3, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 184
    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_0

    :cond_2
    move v2, v3

    .line 189
    goto :goto_0
.end method

.method protected stopLockTaskMode()Z
    .locals 3

    .prologue
    .line 218
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 219
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    const/4 v2, 0x1

    .line 227
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :goto_0
    return v2

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->systemReady()V

    .line 55
    new-instance v0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    .line 56
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->systemReadyInternal()V

    .line 57
    return-void
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 195
    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_0

    .line 196
    const/16 v0, 0xd

    .line 198
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    goto :goto_0
.end method
