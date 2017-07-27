.class public final Lcom/android/server/am/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field static final CONTAINER_CALLBACK_TASK_LIST_EMPTY:I = 0x6f

.field static final CONTAINER_CALLBACK_VISIBILITY:I = 0x6c

.field static final HANDLE_DISPLAY_ADDED:I = 0x69

.field static final HANDLE_DISPLAY_CHANGED:I = 0x6a

.field static final HANDLE_DISPLAY_REMOVED:I = 0x6b

.field public static final HOME_STACK_ID:I = 0x0

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field public static final INCALL_UI_NAME:Ljava/lang/String; = "com.android.incallui.InCallActivity"

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0x70

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final LOCK_TASK_END_MSG:I = 0x6e

.field static final LOCK_TASK_START_MSG:I = 0x6d

.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field public static final MAX_SWITCH_INTERVAL:I = 0x3e8

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SHOW_LOCK_TASK_ESCAPE_MESSAGE_MSG:I = 0x71

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_IDLE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_VISIBLE_BEHIND:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field private static final VIRTUAL_DISPLAY_BASE_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"


# instance fields
.field mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

.field mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

.field mFlymeRealPm:Lcom/android/server/pm/PackageManagerService;

.field mIsIntercepted:Z

.field inResumeTopActivity:Z

.field public lBoostCpuParamVal:[I

.field public lBoostPackParamVal:[I

.field public lBoostTimeOut:I

.field public lDisPackTimeOut:I

.field private mActivityContainers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mCurTaskId:I

.field private mCurrentUser:I

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedStack:Lcom/android/server/am/ActivityStack;

.field mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHomeStack:Lcom/android/server/am/ActivityStack;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field public mIsPerfBoostEnabled:Z

.field public mIsperfDisablepackingEnable:Z

.field mLastActivityCallTime:J

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mLastStackId:I

.field mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field private mLeanbackOnlyDevice:Z

.field private mLockTaskModeState:I

.field mLockTaskModeTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

.field final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field public mPerfBoost:Landroid/util/BoostFramework;

.field public mPerfPack:Landroid/util/BoostFramework;

.field public mPerf_iop:Landroid/util/BoostFramework;

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field final mStartingBackgroundUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:Landroid/os/IBinder;

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 191
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    .line 165
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 166
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfPack:Landroid/util/BoostFramework;

    .line 167
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    .line 168
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsperfDisablepackingEnable:Z

    .line 169
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostTimeOut:I

    .line 170
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->lDisPackTimeOut:I

    .line 207
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;

    .line 226
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 230
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    .line 276
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 279
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 301
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 305
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    .line 308
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 4771
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastActivityCallTime:J

    .line 351
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 352
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 353
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 355
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_enableCpuBoostForAppLaunch#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    .line 357
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_disablePacking#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsperfDisablepackingEnable:Z

    .line 360
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@launchboost_timeout_param#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostTimeOut:I

    .line 363
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:array@launchboost_param_value#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostCpuParamVal:[I

    .line 367
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsperfDisablepackingEnable:Z

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@disablepacking_timeout_param#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lDisPackTimeOut:I

    .line 370
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:array@launchboost_packing_param_value#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostPackParamVal:[I

    .line 373
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAdded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/ActivityStackSupervisor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemoved(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/am/LockTaskNotify;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityStackSupervisor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/am/ActivityStackSupervisor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/RecentTasks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    return-object v0
.end method

.method private checkFinishBootingLocked()Z
    .locals 4

    .prologue
    .line 2611
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2612
    .local v0, "booting":Z
    const/4 v1, 0x0

    .line 2613
    .local v1, "enableScreen":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2614
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_0

    .line 2615
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 2616
    const/4 v1, 0x1

    .line 2618
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 2619
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->postFinishBooting(ZZ)V

    .line 2621
    :cond_2
    return v0
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header1"    # Ljava/lang/String;
    .param p11, "header2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3779
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v7, 0x0

    .line 3780
    .local v7, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v6, 0x0

    .line 3781
    .local v6, "innerPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3782
    .local v2, "args":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3783
    .local v8, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_e

    .line 3784
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 3785
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p8, :cond_1

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 3783
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 3788
    :cond_1
    if-nez v6, :cond_2

    .line 3789
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "      "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3790
    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/String;

    .line 3792
    :cond_2
    const/4 v8, 0x1

    .line 3793
    if-nez p6, :cond_9

    if-nez p5, :cond_3

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v11

    if-nez v11, :cond_9

    :cond_3
    const/4 v4, 0x1

    .line 3794
    .local v4, "full":Z
    :goto_2
    if-eqz p9, :cond_4

    .line 3795
    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3796
    const/16 p9, 0x0

    .line 3798
    :cond_4
    if-eqz p10, :cond_5

    .line 3799
    move-object/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3800
    const/16 p10, 0x0

    .line 3802
    :cond_5
    if-eqz p11, :cond_6

    .line 3803
    move-object/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3804
    const/16 p11, 0x0

    .line 3806
    :cond_6
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v7, v11, :cond_7

    .line 3807
    iget-object v7, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3808
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3809
    if-eqz v4, :cond_a

    const-string v11, "* "

    :goto_3
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3810
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3811
    if-eqz v4, :cond_b

    .line 3812
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, p1, v11}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3821
    :cond_7
    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_c

    const-string v11, "  * "

    :goto_5
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3822
    const-string v11, " #"

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3823
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3824
    if-eqz v4, :cond_d

    .line 3825
    invoke-virtual {v9, p1, v6}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3833
    :cond_8
    :goto_6
    if-eqz p7, :cond_0

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_0

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_0

    .line 3836
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 3838
    :try_start_0
    new-instance v10, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v10}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3840
    .local v10, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v11, v12, v13, v6, v2}, Landroid/app/IApplicationThread;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3844
    const-wide/16 v12, 0x7d0

    invoke-virtual {v10, p0, v12, v13}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3846
    :try_start_2
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3853
    .end local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_7
    const/16 p9, 0x1

    goto/16 :goto_1

    .line 3793
    .end local v4    # "full":Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 3809
    .restart local v4    # "full":Z
    :cond_a
    const-string v11, "  "

    goto :goto_3

    .line 3813
    :cond_b
    if-eqz p5, :cond_7

    .line 3815
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_7

    .line 3816
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3817
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3821
    :cond_c
    const-string v11, "    "

    goto :goto_5

    .line 3826
    :cond_d
    if-eqz p5, :cond_8

    .line 3828
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3829
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_8

    .line 3830
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 3846
    .restart local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v11

    :try_start_3
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3848
    .end local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v3

    .line 3849
    .local v3, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Failure while dumping the activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 3850
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 3851
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Got a RemoteException while dumping the activity"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 3856
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "full":Z
    .end local v9    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_e
    return v8
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 1819
    if-nez p1, :cond_1

    .line 1856
    :cond_0
    :goto_0
    return v4

    .line 1823
    :cond_1
    sget-object v5, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1824
    .local v3, "permission":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1830
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x1000

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1837
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1841
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 1843
    const/4 v4, 0x1

    goto :goto_0

    .line 1832
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1833
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1846
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 1847
    .local v1, "opCode":I
    if-eq v1, v7, :cond_0

    .line 1851
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v5, v1, p4, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1853
    const/4 v4, 0x2

    goto :goto_0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .locals 9
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "ignoreTargetSecurity"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1792
    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 1795
    const/4 v0, 0x1

    .line 1814
    :goto_0
    return v0

    .line 1798
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v7

    .line 1799
    goto :goto_0

    .line 1802
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v6

    .line 1803
    .local v6, "opCode":I
    if-ne v6, v8, :cond_2

    move v0, v7

    .line 1804
    goto :goto_0

    .line 1807
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v0, v6, p4, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1809
    if-nez p5, :cond_3

    .line 1810
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    move v0, v7

    .line 1814
    goto :goto_0
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 3

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 404
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 406
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 407
    const-string v0, "ActivityManager"

    const-string v2, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    monitor-exit v1

    return-object v0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .locals 10
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 3953
    new-instance v1, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 3954
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v9, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(ILandroid/graphics/Rect;)V

    .line 3955
    const/4 v7, 0x0

    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 3956
    iget v7, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 3958
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 3959
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3960
    .local v2, "numTasks":I
    new-array v4, v2, [I

    .line 3961
    .local v4, "taskIds":[I
    new-array v5, v2, [Ljava/lang/String;

    .line 3962
    .local v5, "taskNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 3963
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3964
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v7, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    aput v7, v4, v0

    .line 3965
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    aput-object v7, v5, v0

    .line 3962
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3965
    :cond_0
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v7, "unknown"

    goto :goto_1

    .line 3970
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    iput-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 3971
    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 3972
    return-object v1
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 3

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 391
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 393
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 394
    const-string v0, "StatusBarManager"

    const-string v2, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleDisplayAdded(I)V
    .locals 6
    .param p1, "displayId"    # I

    .prologue
    .line 3912
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3913
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 3914
    .local v1, "newDisplay":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 3915
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 3916
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_2

    .line 3917
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gone before initialization complete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    monitor-exit v3

    .line 3926
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_0
    :goto_1
    return-void

    .line 3913
    .end local v1    # "newDisplay":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3920
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "newDisplay":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3922
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3923
    if-eqz v1, :cond_0

    .line 3924
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayAdded(I)V

    goto :goto_1

    .line 3922
    .end local v1    # "newDisplay":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private handleDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 3943
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 3944
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3945
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_0

    .line 3948
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3949
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayChanged(I)V

    .line 3950
    return-void

    .line 3948
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleDisplayRemoved(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    .line 3929
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 3930
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3931
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_1

    .line 3932
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3933
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3934
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachLocked()V

    .line 3933
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3936
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3938
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3939
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    .line 3940
    return-void

    .line 3938
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private isLeanbackOnlyDevice()Z
    .locals 3

    .prologue
    .line 4758
    const/4 v0, 0x0

    .line 4760
    .local v0, "onLeanbackOnly":Z
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback_only"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4766
    :goto_0
    return v0

    .line 4762
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private lockTaskModeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3664
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    packed-switch v0, :pswitch_data_0

    .line 3671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3666
    :pswitch_0
    const-string v0, "LOCKED"

    goto :goto_0

    .line 3668
    :pswitch_1
    const-string v0, "PINNED"

    goto :goto_0

    .line 3670
    :pswitch_2
    const-string v0, "NONE"

    goto :goto_0

    .line 3664
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 3700
    if-eqz p1, :cond_2

    .line 3701
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3702
    :cond_0
    if-eqz p3, :cond_1

    .line 3703
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3705
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3706
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3707
    const/4 v0, 0x1

    .line 3710
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 21
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 3083
    const/16 v18, 0x0

    .line 3085
    .local v18, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLeanbackOnlyDevice:Z

    if-eqz v2, :cond_2

    .line 3087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v18, v0

    .line 3100
    :cond_0
    :goto_0
    if-nez v18, :cond_1

    .line 3104
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    move-result-object v18

    .line 3106
    const/4 v2, 0x1

    const-string v3, "restoreRecentTask"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;)V

    .line 3111
    :cond_1
    if-nez v18, :cond_4

    .line 3115
    const/4 v2, 0x0

    .line 3130
    :goto_1
    return v2

    .line 3090
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v2, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 3091
    .local v16, "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .local v19, "stackNdx":I
    :goto_2
    if-ltz v19, :cond_0

    .line 3092
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ActivityStack;

    .line 3093
    .local v20, "tmpStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-eqz v2, :cond_3

    .line 3094
    move-object/from16 v18, v20

    .line 3095
    goto :goto_0

    .line 3091
    :cond_3
    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    .line 3118
    .end local v16    # "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v19    # "stackNdx":I
    .end local v20    # "tmpStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3121
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3122
    .local v14, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .local v15, "activityNdx":I
    :goto_3
    if-ltz v15, :cond_7

    .line 3123
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityRecord;

    .line 3124
    .local v17, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v17

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_4
    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, v17

    iget-boolean v13, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 3122
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 3124
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    goto :goto_5

    .line 3130
    .end local v17    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method acquireAppLaunchPerfLock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3157
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsperfDisablepackingEnable:Z

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfPack:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 3158
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfPack:Landroid/util/BoostFramework;

    .line 3160
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfPack:Landroid/util/BoostFramework;

    if-eqz v0, :cond_1

    .line 3161
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfPack:Landroid/util/BoostFramework;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->lDisPackTimeOut:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostPackParamVal:[I

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 3164
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_2

    .line 3165
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 3167
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3

    .line 3168
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostTimeOut:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostCpuParamVal:[I

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 3170
    :cond_3
    return-void
.end method

.method acquireLaunchWakelock()V
    .locals 4

    .prologue
    const/16 v1, 0x68

    .line 2599
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2600
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2602
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2604
    :cond_0
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 2629
    const/16 v17, 0x0

    .line 2630
    .local v17, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v13, 0x0

    .line 2631
    .local v13, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v16, 0x0

    .line 2632
    .local v16, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    const/4 v10, 0x0

    .line 2633
    .local v10, "NS":I
    const/4 v2, 0x0

    .line 2634
    .local v2, "NF":I
    const/4 v12, 0x0

    .line 2635
    .local v12, "booting":Z
    const/4 v11, 0x0

    .line 2637
    .local v11, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2638
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_4

    .line 2641
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2642
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 2643
    if-eqz p2, :cond_0

    .line 2644
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 2652
    :cond_0
    if-eqz p3, :cond_1

    .line 2653
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 2658
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 2661
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_3

    .line 2662
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    move-result v12

    .line 2665
    :cond_3
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Lcom/android/server/am/ExtraActivityManagerService;->activityIdle(Landroid/content/pm/ActivityInfo;)V

    .line 2668
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2669
    if-eqz v5, :cond_5

    .line 2670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 2673
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2681
    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2685
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v17

    .line 2686
    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2687
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 2688
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2689
    .restart local v13    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2692
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 2693
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2694
    .restart local v16    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2699
    :cond_9
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v10, :cond_d

    .line 2700
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2701
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2702
    .local v15, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_a

    .line 2703
    iget-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_c

    .line 2704
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v15, v5, v3, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 2699
    :cond_a
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2686
    .end local v14    # "i":I
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_b
    const/4 v10, 0x0

    goto :goto_0

    .line 2706
    .restart local v14    # "i":I
    .restart local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_c
    invoke-virtual {v15, v5}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_2

    .line 2713
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_d
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v2, :cond_f

    .line 2714
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2715
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2716
    .restart local v15    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_e

    .line 2717
    const/4 v3, 0x1

    const-string v4, "finish-idle"

    invoke-virtual {v15, v5, v3, v4}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v3

    or-int/2addr v11, v3

    .line 2713
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 2721
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_f
    if-nez v12, :cond_11

    .line 2723
    if-eqz v16, :cond_10

    .line 2724
    const/4 v14, 0x0

    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_10

    .line 2725
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    .line 2724
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 2729
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 2730
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2731
    .restart local v16    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2732
    const/4 v14, 0x0

    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_11

    .line 2733
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 2732
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 2738
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 2742
    if-eqz v11, :cond_12

    .line 2743
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 2746
    :cond_12
    return-object v5
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3303
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3304
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 3305
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .locals 8

    .prologue
    .line 753
    const/4 v1, 0x1

    .line 754
    .local v1, "pausing":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 755
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 756
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_2

    .line 757
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 758
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 759
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_1

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_1

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_1

    .line 765
    const/4 v1, 0x0

    .line 770
    .end local v1    # "pausing":Z
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    return v1

    .line 756
    .restart local v1    # "pausing":Z
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "stackNdx":I
    .restart local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 754
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method allResumedActivitiesComplete()Z
    .locals 7

    .prologue
    .line 692
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 693
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 694
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 695
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 696
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 697
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 698
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_0

    .line 699
    const/4 v5, 0x0

    .line 709
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return v5

    .line 694
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 692
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 708
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 709
    const/4 v5, 0x1

    goto :goto_2
.end method

.method allResumedActivitiesIdle()Z
    .locals 6

    .prologue
    .line 673
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 674
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 675
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 676
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 677
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v5

    if-nez v5, :cond_1

    .line 675
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 680
    :cond_1
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 681
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v5, :cond_0

    .line 684
    :cond_2
    const/4 v5, 0x0

    .line 688
    .end local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return v5

    .line 673
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 688
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    const/4 v5, 0x1

    goto :goto_2
.end method

.method allResumedActivitiesVisible()Z
    .locals 7

    .prologue
    .line 713
    const/4 v1, 0x0

    .line 714
    .local v1, "foundResumed":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 715
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 716
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_3

    .line 717
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 718
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 719
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    .line 720
    iget-boolean v6, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 721
    :cond_0
    const/4 v6, 0x0

    .line 727
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return v6

    .line 723
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "stackNdx":I
    .restart local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    const/4 v1, 0x1

    .line 716
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 714
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    move v6, v1

    .line 727
    goto :goto_2
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 551
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IZ)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForIdLocked(IZ)Lcom/android/server/am/TaskRecord;
    .locals 8
    .param p1, "id"    # I
    .param p2, "restoreFromRecents"    # Z

    .prologue
    const/4 v7, 0x0

    .line 561
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 562
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 563
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 564
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_2

    .line 565
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 566
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 567
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_1

    .line 591
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_2
    return-object v5

    .line 564
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 562
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6, p1}, Lcom/android/server/am/RecentTasks;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 576
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    if-nez v5, :cond_4

    move-object v5, v7

    .line 578
    goto :goto_2

    .line 581
    :cond_4
    if-eqz p2, :cond_0

    .line 585
    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v5, v7

    .line 588
    goto :goto_2
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 640
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 641
    .local v4, "processName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 642
    .local v0, "didSomething":Z
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 643
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 644
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "stackNdx":I
    :goto_1
    if-ltz v6, :cond_2

    .line 645
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 646
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 644
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 649
    :cond_1
    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 650
    .local v3, "hr":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    .line 651
    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v8, :cond_0

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, v9, :cond_0

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 654
    const/4 v8, 0x1

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p0, v3, p1, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 655
    const/4 v0, 0x1

    goto :goto_2

    .line 657
    :catch_0
    move-exception v2

    .line 658
    .local v2, "e":Landroid/os/RemoteException;
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in new application when starting activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    throw v2

    .line 642
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "hr":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 666
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    if-nez v0, :cond_4

    .line 667
    const/4 v8, 0x0

    invoke-virtual {p0, v10, v8}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 669
    :cond_4
    return v0
.end method

.method checkReadyForSleepLocked()V
    .locals 5

    .prologue
    .line 3308
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3357
    :cond_0
    :goto_0
    return-void

    .line 3313
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    if-nez v4, :cond_6

    .line 3314
    const/4 v1, 0x0

    .line 3315
    .local v1, "dontSleep":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_1
    if-ltz v0, :cond_3

    .line 3316
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3317
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_2
    if-ltz v2, :cond_2

    .line 3318
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v4

    or-int/2addr v1, v4

    .line 3317
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 3315
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3322
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 3326
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 3327
    const/4 v1, 0x1

    .line 3330
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 3334
    const/4 v1, 0x1

    .line 3337
    :cond_5
    if-nez v1, :cond_0

    .line 3342
    .end local v0    # "displayNdx":I
    .end local v1    # "dontSleep":Z
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "displayNdx":I
    :goto_3
    if-ltz v0, :cond_8

    .line 3343
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3344
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "stackNdx":I
    :goto_4
    if-ltz v2, :cond_7

    .line 3345
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 3344
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 3342
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 3349
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3351
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3352
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3354
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_0

    .line 3355
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_0
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 6
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .prologue
    .line 3467
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3468
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3469
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 3470
    .local v4, "topStackNdx":I
    move v2, v4

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 3471
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 3472
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 3470
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3467
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3475
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "topStackNdx":I
    :cond_1
    return-void
.end method

.method closeSystemDialogsLocked()V
    .locals 4

    .prologue
    .line 2761
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2762
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2763
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_0

    .line 2764
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    .line 2763
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2761
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2767
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .locals 5

    .prologue
    .line 3285
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3286
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3287
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3289
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 3290
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3291
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3292
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 3293
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 3294
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3295
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3291
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3289
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3299
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3300
    return-void
.end method

.method computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .prologue
    .line 1860
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1863
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLeanbackOnlyDevice:Z

    if-nez v5, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1868
    :cond_0
    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_2

    .line 1869
    iget-object v2, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1870
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1871
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v5, v2, :cond_1

    .line 1913
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    :goto_0
    return-object v2

    .line 1883
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1884
    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_3

    .line 1886
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1887
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 1890
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eq v5, v6, :cond_5

    if-eqz p2, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v5, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1894
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 1897
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v5, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1898
    .local v1, "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_6

    .line 1899
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1900
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1898
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1908
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1911
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_0

    .line 1913
    .end local v0    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v1    # "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0
.end method

.method createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;
    .locals 3
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 3059
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3060
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v1, :cond_0

    .line 3061
    const/4 v2, 0x0

    .line 3067
    :goto_0
    return-object v2

    .line 3064
    :cond_0
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 3065
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3066
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 3067
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0
.end method

.method createVirtualActivityContainer(Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .locals 3
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "callback"    # Landroid/app/IActivityContainerCallback;

    .prologue
    .line 2959
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)V

    .line 2961
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2964
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2965
    return-object v0
.end method

.method deleteActivityContainer(Landroid/app/IActivityContainer;)V
    .locals 3
    .param p1, "container"    # Landroid/app/IActivityContainer;

    .prologue
    .line 2979
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2980
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    .line 2983
    iget v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    .line 2984
    .local v1, "stackId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2985
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->removeStack(I)V

    .line 2987
    .end local v1    # "stackId":I
    :cond_0
    return-void
.end method

.method final doPendingActivityLaunchesLocked(Z)V
    .locals 12
    .param p1, "doResume"    # Z

    .prologue
    const/4 v11, 0x0

    .line 2570
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2571
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 2574
    .local v10, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :try_start_0
    iget-object v1, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2576
    :catch_0
    move-exception v9

    .line 2577
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during pending activity launch pal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    move v6, v11

    .line 2574
    goto :goto_1

    .line 2580
    .end local v10    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 3676
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFocusedStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3677
    const-string v2, " mLastFocusedStack="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3678
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSleepTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3679
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3680
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUserStackInFront="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3681
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActivityContainers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3682
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLockTaskModeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->lockTaskModeToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3683
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 3684
    .local v1, "packages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3685
    const-string v2, " mLockTaskPackages (userId:packages)="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3687
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3688
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3691
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mLockTaskModeTasks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3692
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 28
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 3715
    const/16 v24, 0x0

    .line 3716
    .local v24, "printed":Z
    const/4 v8, 0x0

    .line 3717
    .local v8, "needSep":Z
    const/16 v22, 0x0

    .local v22, "displayNdx":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_6

    .line 3718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3719
    .local v21, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    const-string v3, "Display #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3720
    const-string v3, " (activities from top to bottom):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3721
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 3722
    .local v27, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v26, v3, -0x1

    .local v26, "stackNdx":I
    :goto_1
    if-ltz v26, :cond_5

    .line 3723
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3724
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v25, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3725
    .local v25, "stackHeader":Ljava/lang/StringBuilder;
    const-string v3, "  Stack #"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3726
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3727
    const-string v3, ":"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3728
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3730
    iget-object v11, v2, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v12, "    "

    const-string v13, "Run"

    const/4 v14, 0x0

    if-nez p3, :cond_4

    const/4 v15, 0x1

    :goto_2
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "    Running activities (most recent first):"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3734
    move/from16 v8, v24

    .line 3735
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mPausingActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v23

    .line 3737
    .local v23, "pr":Z
    if-eqz v23, :cond_0

    .line 3738
    const/16 v24, 0x1

    .line 3739
    const/4 v8, 0x0

    .line 3741
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mResumedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v23

    .line 3743
    if-eqz v23, :cond_1

    .line 3744
    const/16 v24, 0x1

    .line 3745
    const/4 v8, 0x0

    .line 3747
    :cond_1
    if-eqz p3, :cond_3

    .line 3748
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mLastPausedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v23

    .line 3750
    if-eqz v23, :cond_2

    .line 3751
    const/16 v24, 0x1

    .line 3752
    const/4 v8, 0x1

    .line 3754
    :cond_2
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mLastNoHistoryActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3757
    :cond_3
    move/from16 v8, v24

    .line 3722
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_1

    .line 3730
    .end local v23    # "pr":Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 3717
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "stackHeader":Ljava/lang/StringBuilder;
    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 3761
    .end local v21    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v26    # "stackNdx":I
    .end local v27    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Fin"

    const/4 v14, 0x0

    if-nez p3, :cond_7

    const/4 v15, 0x1

    :goto_3
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to finish:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3763
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Stop"

    const/4 v14, 0x0

    if-nez p3, :cond_8

    const/4 v15, 0x1

    :goto_4
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to stop:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3765
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Wait"

    const/4 v14, 0x0

    if-nez p3, :cond_9

    const/4 v15, 0x1

    :goto_5
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting for another to become visible:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3768
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Sleep"

    const/4 v14, 0x0

    if-nez p3, :cond_a

    const/4 v15, 0x1

    :goto_6
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to sleep:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3770
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Sleep"

    const/4 v14, 0x0

    if-nez p3, :cond_b

    const/4 v15, 0x1

    :goto_7
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to sleep:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v24, v24, v3

    .line 3773
    return v24

    .line 3761
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 3763
    :cond_8
    const/4 v15, 0x0

    goto :goto_4

    .line 3765
    :cond_9
    const/4 v15, 0x0

    goto :goto_5

    .line 3768
    :cond_a
    const/4 v15, 0x0

    goto :goto_6

    .line 3770
    :cond_b
    const/4 v15, 0x0

    goto :goto_7
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 6
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 3456
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3457
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3458
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 3459
    .local v4, "topStackNdx":I
    move v2, v4

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 3460
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 3461
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 3459
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3456
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3464
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "topStackNdx":I
    :cond_1
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 3220
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3221
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3222
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 3223
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3224
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 3229
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return-object v0

    .line 3222
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3220
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3229
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v7, -0x1

    .line 3174
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_5

    .line 3175
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3176
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_4

    .line 3177
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3178
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3176
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3182
    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3187
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3188
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 3189
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_3

    .line 3191
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock()V

    .line 3194
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    if-nez v5, :cond_2

    .line 3195
    new-instance v5, Landroid/util/BoostFramework;

    invoke-direct {v5}, Landroid/util/BoostFramework;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    .line 3197
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    if-eqz v5, :cond_3

    .line 3198
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;)I

    .line 3216
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    :goto_2
    return-object v0

    .line 3174
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3206
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock()V

    .line 3208
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    if-nez v5, :cond_6

    .line 3209
    new-instance v5, Landroid/util/BoostFramework;

    invoke-direct {v5}, Landroid/util/BoostFramework;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    .line 3211
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    if-eqz v5, :cond_7

    .line 3212
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;)I

    .line 3216
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 2885
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 2887
    .local v6, "top_activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_0

    .line 2888
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock()V

    .line 2891
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    .line 2892
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2894
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 2897
    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2899
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_3

    .line 2900
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTaskToMoveToFrontLocked: can\'t move task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to front. Stack is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    :goto_0
    return-void

    .line 2904
    :cond_3
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_1
    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_1
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .prologue
    .line 2778
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 2779
    .local v6, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .local v7, "displayNdx":I
    :goto_0
    if-ltz v7, :cond_2

    .line 2780
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2784
    .local v9, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .local v8, "stackNdx":I
    :goto_1
    if-ltz v8, :cond_1

    .line 2785
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2786
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2788
    const/4 v6, 0x1

    .line 2784
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 2779
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 2792
    .end local v8    # "stackNdx":I
    .end local v9    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v6
.end method

.method finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2861
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2862
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2863
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2864
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 2865
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2866
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 2864
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2861
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2869
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 6
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .prologue
    .line 2872
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2873
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2874
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2875
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 2876
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2877
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 2875
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2872
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2880
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method getAllStackInfosLocked()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3984
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3985
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 3986
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3987
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "ndx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 3988
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3987
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3985
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3991
    .end local v2    # "ndx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-object v1
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3695
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .prologue
    .line 2936
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 2940
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 2941
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    .line 2942
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 2943
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2944
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2945
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2946
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 2947
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    if-eq p1, v6, :cond_0

    iget v6, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_1

    .line 2954
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_2
    return-object v2

    .line 2945
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2941
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2954
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method getHomeActivityToken()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2929
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 2930
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2932
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getLockTaskModeState()I
    .locals 1

    .prologue
    .line 4164
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    return v0
.end method

.method getLockedTaskLocked()Lcom/android/server/am/TaskRecord;
    .locals 2

    .prologue
    .line 3995
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 3996
    .local v0, "top":I
    if-ltz v0, :cond_0

    .line 3997
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 3999
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getNextStackId()I
    .locals 1

    .prologue
    .line 3072
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    if-gtz v0, :cond_1

    .line 3073
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 3075
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3079
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    return v0
.end method

.method getNextTaskId()I
    .locals 2

    .prologue
    .line 616
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 617
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    if-gtz v0, :cond_1

    .line 618
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 620
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IZ)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 621
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    return v0
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 2912
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2913
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    .line 2914
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    .line 2916
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getStackInfoLocked(I)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 3976
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3977
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 3978
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 3980
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getStacks()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2921
    .local v0, "allStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2922
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2921
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2924
    :cond_0
    return-object v0
.end method

.method getTasksLocked(ILjava/util/List;IZ)V
    .locals 16
    .param p1, "maxNum"    # I
    .param p3, "callingUid"    # I
    .param p4, "allowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 854
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v9, "runningTaskLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 857
    .local v3, "numDisplays":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 858
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v14, v15, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 859
    .local v14, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v12, v15, -0x1

    .local v12, "stackNdx":I
    :goto_1
    if-ltz v12, :cond_0

    .line 860
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    .line 861
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v13, "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v11, v13, v0, v1}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZ)V

    .line 859
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 857
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 883
    .end local v14    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .local v6, "mostRecentActiveTime":J
    .local v8, "numTaskLists":I
    .local v10, "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    if-eqz v10, :cond_4

    .line 884
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    add-int/lit8 p1, p1, -0x1

    .line 869
    .end local v6    # "mostRecentActiveTime":J
    .end local v8    # "numTaskLists":I
    .end local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v12    # "stackNdx":I
    :cond_2
    if-lez p1, :cond_4

    .line 870
    const-wide/high16 v6, -0x8000000000000000L

    .line 871
    .restart local v6    # "mostRecentActiveTime":J
    const/4 v10, 0x0

    .line 872
    .restart local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 873
    .restart local v8    # "numTaskLists":I
    const/4 v12, 0x0

    .restart local v12    # "stackNdx":I
    :goto_2
    if-ge v12, v8, :cond_1

    .line 874
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 875
    .restart local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_3

    .line 876
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-wide v4, v15, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 877
    .local v4, "lastActiveTime":J
    cmp-long v15, v4, v6

    if-lez v15, :cond_3

    .line 878
    move-wide v6, v4

    .line 879
    move-object v10, v13

    .line 873
    .end local v4    # "lastActiveTime":J
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 890
    .end local v6    # "mostRecentActiveTime":J
    .end local v8    # "numTaskLists":I
    .end local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v12    # "stackNdx":I
    .end local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_4
    return-void
.end method

.method goingToSleepLocked()V
    .locals 2

    .prologue
    .line 3233
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 3234
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3235
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3236
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3240
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3241
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 3244
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 3245
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3376
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3377
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3378
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 3379
    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_0

    .line 3380
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3381
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3376
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3384
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2750
    const/4 v1, 0x0

    .line 2751
    .local v1, "hasVisibleActivities":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2752
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2753
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 2754
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 2753
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2751
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2757
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return v1
.end method

.method handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 3442
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 3443
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3444
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    .line 3445
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v1, v0}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    .line 3446
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    .line 3447
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3448
    return-void
.end method

.method initPowerManagement()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 380
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 381
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 382
    const-string v1, "*launch*"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 383
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 384
    return-void
.end method

.method isCurrentProfileLocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 3591
    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-ne p1, v2, :cond_1

    .line 3595
    :cond_0
    :goto_0
    return v1

    .line 3592
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 3593
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_0

    .line 3592
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3595
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isFrontStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v1, 0x0

    .line 459
    if-nez p1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v1

    .line 463
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 464
    .local v0, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    .line 465
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object p1, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 467
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 595
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 596
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 597
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 598
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 599
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 600
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 605
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return-object v2

    .line 598
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 596
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method isLastLockedTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v0, 0x1

    .line 4007
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 4096
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    return v0
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "isNewClearTask"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4100
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLockedTaskLocked()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v3, p1, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    .line 4116
    :cond_0
    :goto_0
    return v1

    .line 4103
    :cond_1
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 4104
    .local v0, "lockTaskAuth":I
    packed-switch v0, :pswitch_data_0

    .line 4115
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLockTaskModeViolation: invalid lockTaskAuth value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4106
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 4110
    goto :goto_0

    .line 4113
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 4104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method isLockedTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 4003
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method moveHomeStack(ZLjava/lang/String;)V
    .locals 1
    .param p1, "toFront"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;)V

    .line 472
    return-void
.end method

.method moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;)V
    .locals 8
    .param p1, "toFront"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "lastFocusedStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 475
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v3, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 476
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 477
    .local v2, "topNdx":I
    if-gtz v2, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-ne v3, v6, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eq v3, v6, :cond_4

    .line 487
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 488
    if-eqz p1, :cond_8

    move v3, v2

    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 491
    :cond_4
    if-eqz p3, :cond_5

    .line 492
    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 494
    :cond_5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iput-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 496
    const/16 v6, 0x755c

    const/4 v3, 0x5

    new-array v7, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    if-eqz p1, :cond_6

    move v4, v5

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    const/4 v4, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v4, 0x3

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v3, :cond_9

    const/4 v3, -0x1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v3, 0x4

    aput-object p2, v7, v3

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 500
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v3, :cond_0

    .line 501
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 502
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-eqz v3, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    goto :goto_0

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8
    move v3, v4

    .line 488
    goto :goto_1

    .line 496
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v3

    goto :goto_2
.end method

.method moveHomeStackTaskToTop(ILjava/lang/String;)Z
    .locals 3
    .param p1, "homeStackTaskType"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 510
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 511
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 522
    :cond_0
    :goto_0
    return v1

    .line 515
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    .line 517
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 518
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 521
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 522
    const/4 v1, 0x1

    goto :goto_0
.end method

.method moveTaskToStackLocked(IIZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3134
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 3135
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_0

    .line 3136
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToStack: no task for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    :goto_0
    return-void

    .line 3139
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3140
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_1

    .line 3141
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToStack: no stack for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3144
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->moveTaskToStack(IIZ)V

    .line 3145
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_2

    .line 3146
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const-string v3, "moveTaskToStack"

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)V

    .line 3148
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p3, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3151
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 3152
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_0
.end method

.method notifyActivityDrawnForKeyguard()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->notifyActivityDrawnForKeyguard()V

    .line 445
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 3895
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3896
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3908
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 3901
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3902
    return-void
.end method

.method onLockTaskPackagesUpdatedLocked()V
    .locals 14

    .prologue
    .line 4121
    const/4 v0, 0x0

    .line 4122
    .local v0, "didSomething":Z
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    .local v9, "taskNdx":I
    :goto_0
    if-ltz v9, :cond_5

    .line 4123
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 4124
    .local v3, "lockedTask":Lcom/android/server/am/TaskRecord;
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_0

    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    :cond_0
    const/4 v10, 0x1

    .line 4127
    .local v10, "wasWhitelisted":Z
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 4128
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    :cond_1
    const/4 v2, 0x1

    .line 4131
    .local v2, "isWhitelisted":Z
    :goto_2
    if-eqz v10, :cond_2

    if-nez v2, :cond_2

    .line 4135
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 4136
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 4137
    const/4 v0, 0x1

    .line 4122
    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 4124
    .end local v2    # "isWhitelisted":Z
    .end local v10    # "wasWhitelisted":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 4128
    .restart local v10    # "wasWhitelisted":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 4140
    .end local v3    # "lockedTask":Lcom/android/server/am/TaskRecord;
    .end local v10    # "wasWhitelisted":Z
    :cond_5
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .local v1, "displayNdx":I
    :goto_3
    if-ltz v1, :cond_7

    .line 4141
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4142
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .local v6, "stackNdx":I
    :goto_4
    if-ltz v6, :cond_6

    .line 4143
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 4144
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->onLockTaskPackagesUpdatedLocked()V

    .line 4142
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 4140
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 4147
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4148
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_a

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4149
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    :goto_5
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v8, :cond_8

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 4154
    const/4 v11, 0x1

    const-string v12, "package updated"

    const/4 v13, 0x0

    invoke-virtual {p0, v8, v11, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    .line 4156
    const/4 v0, 0x1

    .line 4158
    :cond_8
    if-eqz v0, :cond_9

    .line 4159
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4161
    :cond_9
    return-void

    .line 4148
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_a
    const/4 v8, 0x0

    goto :goto_5
.end method

.method pauseBackStacks(ZZZ)Z
    .locals 6
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Z
    .param p3, "dontWait"    # Z

    .prologue
    .line 736
    const/4 v1, 0x0

    .line 737
    .local v1, "someActivityPaused":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 738
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 739
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 740
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 741
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_0

    .line 744
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5, p2, p3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    move-result v5

    or-int/2addr v1, v5

    .line 739
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 737
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 749
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v1
.end method

.method pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V
    .locals 5
    .param p1, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "userLeaving"    # Z
    .param p3, "uiSleeping"    # Z
    .param p4, "resuming"    # Z
    .param p5, "dontWait"    # Z

    .prologue
    .line 776
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 777
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 778
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 779
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 780
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_0

    .line 782
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 778
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 776
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 786
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return-void
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .locals 8
    .param p1, "remove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3599
    const/4 v3, 0x0

    .line 3601
    .local v3, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    move-result v1

    .line 3602
    .local v1, "nowVisible":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 3603
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3604
    .local v2, "s":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 3607
    .local v4, "waitingVisible":Z
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 3608
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3609
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    .line 3616
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3619
    :cond_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    if-eqz p1, :cond_3

    .line 3621
    if-nez v3, :cond_2

    .line 3622
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3624
    .restart local v3    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3625
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3602
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3629
    .end local v2    # "s":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "waitingVisible":Z
    :cond_4
    return-object v3
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 30
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1245
    if-eqz p3, :cond_0

    .line 1246
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1250
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 1259
    :cond_0
    if-eqz p4, :cond_1

    .line 1260
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_0
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v22

    .line 1263
    .local v22, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 1266
    .end local v22    # "config":Landroid/content/res/Configuration;
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1267
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1268
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 1273
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v24

    .line 1274
    .local v24, "idx":I
    if-gez v24, :cond_2

    .line 1275
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1280
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    .line 1281
    .local v29, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 1283
    :cond_3
    const/4 v4, 0x1

    const-string v5, "mLockTaskAuth==LAUNCHABLE"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    .line 1286
    :cond_4
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v28, v0

    .line 1288
    .local v28, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_0
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_6

    .line 1289
    new-instance v4, Landroid/os/RemoteException;

    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :catch_0
    move-exception v23

    .line 1380
    .local v23, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v4, :cond_14

    .line 1383
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second failure launching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", giving up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1387
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "2nd-crash"

    const/4 v9, 0x0

    move-object/from16 v4, v28

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1389
    const/4 v4, 0x0

    .line 1431
    .end local v23    # "e":Landroid/os/RemoteException;
    :goto_1
    return v4

    .line 1260
    .end local v24    # "idx":I
    .end local v28    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v29    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1291
    .restart local v24    # "idx":I
    .restart local v28    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v29    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    const/16 v17, 0x0

    .line 1292
    .local v17, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/16 v18, 0x0

    .line 1293
    .local v18, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_7

    .line 1294
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 1295
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 1300
    :cond_7
    if-eqz p3, :cond_8

    .line 1301
    const/16 v5, 0x7536

    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_12

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    move-object/from16 v0, v29

    iget v7, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x3

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v6, v4

    const/4 v4, 0x4

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1308
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1310
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 1315
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/ActivityStackSupervisorInjector;->ensurePackageDexOpt(Ljava/lang/String;)Z

    .line 1317
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1318
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 1319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 1321
    const/16 v21, 0x0

    .line 1322
    .local v21, "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_c

    .line 1324
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 1326
    .local v27, "profileFile":Ljava/lang/String;
    if-eqz v27, :cond_c

    .line 1327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v26, v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1328
    .local v26, "profileFd":Landroid/os/ParcelFileDescriptor;
    if-eqz v26, :cond_b

    .line 1330
    :try_start_2
    invoke-virtual/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v26

    .line 1342
    :cond_b
    :goto_3
    :try_start_3
    new-instance v21, Landroid/app/ProfilerInfo;

    .end local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mSamplingInterval:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    .line 1348
    .end local v26    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v27    # "profileFile":Ljava/lang/String;
    .restart local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_c
    if-eqz p3, :cond_d

    .line 1349
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1350
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1352
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1353
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    new-instance v9, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v9, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance v10, Landroid/content/res/Configuration;

    move-object/from16 v0, v28

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v10, v11}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    move-object/from16 v16, v0

    if-nez p3, :cond_13

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v20

    invoke-interface/range {v4 .. v21}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    .line 1359
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_f

    .line 1364
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v4, v0, :cond_e

    .line 1367
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new heavy weight process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when already running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    .line 1374
    .local v25, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1398
    .end local v25    # "msg":Landroid/os/Message;
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1399
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1400
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " being launched, but already in LRU list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_10
    if-eqz p3, :cond_15

    .line 1407
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1423
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 1429
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1431
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1301
    .end local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1331
    .restart local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v26    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v27    # "profileFile":Ljava/lang/String;
    :catch_1
    move-exception v23

    .line 1332
    .local v23, "e":Ljava/io/IOException;
    if-eqz v26, :cond_b

    .line 1334
    :try_start_4
    invoke-virtual/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1337
    :goto_6
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1353
    .end local v23    # "e":Ljava/io/IOException;
    .end local v26    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v27    # "profileFile":Ljava/lang/String;
    :cond_13
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 1394
    .end local v17    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v18    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v23, "e":Landroid/os/RemoteException;
    :cond_14
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1395
    throw v23

    .line 1415
    .end local v23    # "e":Landroid/os/RemoteException;
    .restart local v17    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v18    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_15
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1416
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_5

    .line 1335
    .local v23, "e":Ljava/io/IOException;
    .restart local v26    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v27    # "profileFile":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_6
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3490
    const/4 v1, 0x0

    .line 3492
    .local v1, "firstTask":Lcom/android/server/am/TaskRecord;
    const/4 v8, 0x0

    .line 3494
    .local v8, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 3495
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3499
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_0

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_0

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_1

    .line 3542
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-void

    .line 3505
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v9, :cond_2

    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v9, :cond_2

    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v9, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_3

    .line 3494
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3510
    :cond_3
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_2

    .line 3513
    if-nez v1, :cond_4

    .line 3514
    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto :goto_1

    .line 3515
    :cond_4
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v1, v9, :cond_2

    .line 3516
    if-nez v8, :cond_5

    .line 3517
    new-instance v8, Landroid/util/ArraySet;

    .end local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 3518
    .restart local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3520
    :cond_5
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3524
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-eqz v8, :cond_0

    .line 3530
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3531
    .local v3, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 3532
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3534
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    const/4 v6, 0x0

    .local v6, "stackNdx":I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_7

    .line 3535
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 3537
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5, p1, v8, p2}, Lcom/android/server/am/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_0

    .line 3534
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3531
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2969
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    .line 2970
    .local v0, "childStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "containerNdx":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2971
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2974
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->release()V

    .line 2970
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2976
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_0
    return-void
.end method

.method removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 4011
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4024
    :cond_0
    :goto_0
    return-void

    .line 4015
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4019
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4020
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget v1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4021
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4022
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 2583
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "palNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2584
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 2585
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_0

    .line 2586
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2583
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2589
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method removeSleepTimeouts()V
    .locals 2

    .prologue
    .line 3883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 3884
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 3885
    return-void
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3873
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3874
    return-void
.end method

.method removeUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2771
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .locals 7
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "thisTime"    # J
    .param p5, "totalTime"    # J

    .prologue
    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 815
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    .line 816
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    .line 817
    const/4 v0, 0x1

    .line 818
    iput-boolean p1, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 819
    if-eqz p2, :cond_0

    .line 820
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 822
    :cond_0
    iput-wide p3, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 823
    iput-wide p5, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 814
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 826
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2
    if-eqz v0, :cond_3

    .line 827
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 829
    :cond_3
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 789
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 790
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3361
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/ActivityStackSupervisorInjector;->updateScreenPaperMode(Ljava/lang/String;)V

    .line 3363
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3364
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3365
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3367
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3368
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 3369
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 3372
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3387
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3388
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_0

    move v4, v5

    .line 3437
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v4

    .line 3393
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v0

    .line 3397
    .local v0, "isVisible":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 3398
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1

    if-eq v3, p1, :cond_1

    if-ne p2, v0, :cond_3

    .line 3400
    :cond_1
    if-eqz p2, :cond_2

    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    move v4, v6

    .line 3401
    goto :goto_0

    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object p1, v4

    .line 3400
    goto :goto_1

    .line 3405
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_4

    move v4, v5

    .line 3411
    goto :goto_0

    .line 3412
    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eq v7, p1, :cond_5

    move v4, v5

    .line 3419
    goto :goto_0

    .line 3422
    :cond_5
    if-eqz p2, :cond_6

    move-object v4, p1

    :cond_6
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3423
    if-nez p2, :cond_7

    .line 3425
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3426
    .local v1, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_7

    .line 3427
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->convertFromTranslucent(Landroid/os/IBinder;)Z

    .line 3430
    .end local v1    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_8

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_8

    .line 3433
    :try_start_0
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, p2}, Landroid/app/IApplicationThread;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    move v4, v6

    .line 3437
    goto :goto_0

    .line 3434
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method resizeStackLocked(ILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2990
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2991
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_1

    .line 2992
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resizeStack: stackId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    :cond_0
    :goto_0
    return-void

    .line 2996
    :cond_1
    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2997
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    if-nez v4, :cond_2

    .line 2998
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resizeStack: top task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not resizeable."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3002
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowManagerService;->resizeStack(ILandroid/graphics/Rect;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3003
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStack;->updateOverrideConfiguration(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3004
    if-eqz v1, :cond_0

    .line 3005
    invoke-virtual {v2, v1, v6}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v3

    .line 3008
    .local v3, "updated":Z
    invoke-virtual {p0, v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 3009
    if-nez v3, :cond_0

    .line 3010
    invoke-virtual {p0, v2, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto :goto_0
.end method

.method resizeTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 3020
    iput-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    .line 3021
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3022
    .local v0, "currentStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3056
    :cond_0
    :goto_0
    return-void

    .line 3027
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowManagerService;->getStackIdWithBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 3028
    .local v2, "matchingStackId":I
    if-eq v2, v5, :cond_3

    .line 3030
    if-eqz v0, :cond_2

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v4, v2, :cond_0

    .line 3035
    :cond_2
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v4, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    goto :goto_0

    .line 3039
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->numTasks()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 3041
    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v4, p2}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 3046
    :cond_4
    if-eqz v0, :cond_5

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v4, v5, :cond_5

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 3048
    .local v1, "displayId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v4

    invoke-virtual {p0, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3050
    .local v3, "newStack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_6

    .line 3051
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resizeTaskLocked: Can\'t create stack for task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3046
    .end local v1    # "displayId":I
    .end local v3    # "newStack":Lcom/android/server/am/ActivityStack;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 3054
    .restart local v1    # "displayId":I
    .restart local v3    # "newStack":Lcom/android/server/am/ActivityStack;
    :cond_6
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v5, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    .line 3055
    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v4, p2}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "userId"    # I

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const v4, 0x10400

    invoke-interface {v3, p1, p2, v4, p5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 902
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_3

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v0, :cond_2

    .line 912
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 916
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_0

    .line 917
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 918
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 922
    :cond_0
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_1

    .line 923
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 924
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 928
    :cond_1
    if-eqz p4, :cond_2

    .line 929
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 930
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 934
    :cond_2
    return-object v0

    .line 902
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 903
    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 904
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_0
.end method

.method resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 3
    .param p1, "homeStackTaskType"    # I
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 526
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_0

    .line 547
    :goto_0
    return v1

    .line 531
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 532
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    goto :goto_0

    .line 536
    :cond_1
    if-eqz p2, :cond_2

    .line 537
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 540
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    .line 541
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 543
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_3

    .line 544
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0, p3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_0

    .line 547
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v1, v2, p3}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method resumeTopActivitiesLocked()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2830
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/os/Bundle;

    .prologue
    .line 2835
    if-nez p1, :cond_0

    .line 2836
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2839
    :cond_0
    const/4 v1, 0x0

    .line 2840
    .local v1, "result":Z
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2841
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    .line 2844
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_5

    .line 2845
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2846
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_4

    .line 2847
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2848
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-ne v2, p1, :cond_3

    .line 2846
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2852
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2853
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_2

    .line 2844
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2857
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5
    return v1
.end method

.method resumedAppLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 625
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 626
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 636
    :cond_0
    :goto_0
    return-object v0

    .line 629
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 630
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_0

    .line 631
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 632
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_0

    .line 633
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3478
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3479
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3480
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3481
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 3482
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3483
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3481
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3478
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3486
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .prologue
    .line 3867
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 3868
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3862
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3863
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3864
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 3451
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3452
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .locals 2

    .prologue
    const/16 v1, 0x66

    .line 3877
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3878
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 3880
    :cond_0
    return-void
.end method

.method final scheduleSleepTimeout()V
    .locals 4

    .prologue
    .line 3888
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3889
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3890
    return-void
.end method

.method sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 795
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    .line 796
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    .line 797
    const/4 v0, 0x1

    .line 798
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 799
    if-eqz p1, :cond_0

    .line 800
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 802
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 803
    iget-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 794
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 806
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2
    if-eqz v0, :cond_3

    .line 807
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 809
    :cond_3
    return-void
.end method

.method setFocusedStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1917
    if-nez p1, :cond_0

    .line 1927
    :goto_0
    return v1

    .line 1921
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1922
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_2

    .line 1923
    :cond_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set focus stack for r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1926
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1927
    const/4 v1, 0x1

    goto :goto_0
.end method

.method setLaunchSource(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2593
    return-void
.end method

.method setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "lockTaskModeState"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "andResume"    # Z

    .prologue
    .line 4040
    if-nez p1, :cond_1

    .line 4042
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLockedTaskLocked()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 4043
    .local v1, "lockedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_0

    .line 4044
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 4045
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4049
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 4050
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4093
    .end local v1    # "lockedTask":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_0
    return-void

    .line 4060
    :cond_1
    iget v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eqz v2, :cond_0

    .line 4065
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4066
    const-string v2, "ActivityManager"

    const-string v3, "setLockTaskMode: Attempt to start an unauthorized lock task."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4070
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4072
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4073
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4074
    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 4075
    const/16 v2, 0x6d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 4076
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 4077
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4082
    .end local v0    # "lockTaskMsg":Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4083
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4085
    iget v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 4086
    iget v2, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    iput v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 4089
    :cond_4
    if-eqz p4, :cond_0

    .line 4090
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3, p3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 4091
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_0
.end method

.method setNextTaskId(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 609
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    if-le p1, v0, :cond_0

    .line 610
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 612
    :cond_0
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 7
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 415
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 416
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 418
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "display"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 420
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 422
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .line 423
    .local v3, "displays":[Landroid/view/Display;
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 424
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 425
    .local v1, "displayId":I
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 426
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v4, :cond_0

    .line 427
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "Default Display does not exist"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 439
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    .end local v2    # "displayNdx":I
    .end local v3    # "displays":[Landroid/view/Display;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 429
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "displayId":I
    .restart local v2    # "displayNdx":I
    .restart local v3    # "displays":[Landroid/view/Display;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 423
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 432
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    .line 433
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 435
    const-class v4, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerInternal;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 438
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->isLeanbackOnlyDevice()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLeanbackOnlyDevice:Z

    .line 439
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    return-void
.end method

.method showLockTaskEscapeMessageLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 4033
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4034
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4036
    :cond_0
    return-void
.end method

.method showLockTaskToast()V
    .locals 2

    .prologue
    .line 4027
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    if-eqz v0, :cond_0

    .line 4028
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    .line 4030
    :cond_0
    return-void
.end method

.method shutdownLocked(I)Z
    .locals 14
    .param p1, "timeout"    # I

    .prologue
    .line 3248
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 3250
    const/4 v8, 0x0

    .line 3251
    .local v8, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    int-to-long v12, p1

    add-long v2, v10, v12

    .line 3253
    .local v2, "endTime":J
    :goto_0
    const/4 v0, 0x0

    .line 3254
    .local v0, "cantShutdown":Z
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "displayNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 3255
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3256
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "stackNdx":I
    :goto_2
    if-ltz v4, :cond_0

    .line 3257
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v9

    or-int/2addr v0, v9

    .line 3256
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 3254
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3260
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    if-eqz v0, :cond_3

    .line 3261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v2, v10

    .line 3262
    .local v6, "timeRemaining":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_2

    .line 3264
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3265
    :catch_0
    move-exception v9

    goto :goto_0

    .line 3268
    :cond_2
    const-string v9, "ActivityManager"

    const-string v10, "Activity manager shutdown timed out"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    const/4 v8, 0x1

    .line 3278
    .end local v6    # "timeRemaining":J
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 3279
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 3281
    return v8
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 32
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .prologue
    .line 1165
    if-nez p4, :cond_0

    .line 1166
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "intents is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1168
    :cond_0
    if-nez p5, :cond_1

    .line 1169
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "resolvedTypes is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1171
    :cond_1
    move-object/from16 v0, p4

    array-length v2, v0

    move-object/from16 v0, p5

    array-length v4, v0

    if-eq v2, v4, :cond_2

    .line 1172
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "intents are length different than resolvedTypes"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1177
    :cond_2
    if-ltz p2, :cond_3

    .line 1178
    const/4 v14, -0x1

    .line 1185
    .local v14, "callingPid":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 1187
    .local v28, "origId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1188
    const/4 v2, 0x1

    :try_start_1
    new-array v0, v2, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v23, v0

    .line 1189
    .local v23, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v26

    if-ge v0, v2, :cond_c

    .line 1190
    aget-object v27, p4, v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1191
    .local v27, "intent":Landroid/content/Intent;
    if-nez v27, :cond_5

    move-object/from16 v3, v27

    .line 1189
    .end local v27    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 1179
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v14    # "callingPid":I
    .end local v23    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v26    # "i":I
    .end local v28    # "origId":J
    :cond_3
    if-nez p1, :cond_4

    .line 1180
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 1181
    .restart local v14    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .line 1183
    .end local v14    # "callingPid":I
    :cond_4
    const/16 p2, -0x1

    move/from16 v14, p2

    .restart local v14    # "callingPid":I
    goto :goto_0

    .line 1196
    .restart local v23    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "i":I
    .restart local v27    # "intent":Landroid/content/Intent;
    .restart local v28    # "origId":J
    :cond_5
    if-eqz v27, :cond_6

    :try_start_2
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1197
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1233
    .end local v23    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v26    # "i":I
    .end local v27    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v31
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1235
    :catchall_1
    move-exception v2

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1200
    .restart local v23    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "i":I
    .restart local v27    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_7

    const/16 v22, 0x1

    .line 1203
    .local v22, "componentSpecified":Z
    :goto_3
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1206
    .end local v27    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    aget-object v4, p5, v26

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 1208
    .local v8, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v2, v8, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 1210
    if-eqz v8, :cond_8

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 1213
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1200
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v22    # "componentSpecified":Z
    .restart local v27    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v22, 0x0

    goto :goto_3

    .line 1218
    .end local v27    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v22    # "componentSpecified":Z
    :cond_8
    if-eqz p7, :cond_9

    move-object/from16 v0, p4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_9

    .line 1219
    move-object/from16 v20, p7

    .line 1223
    .local v20, "theseOptions":Landroid/os/Bundle;
    :goto_4
    aget-object v7, p5, v26

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v11, p6

    move/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, v14

    move/from16 v18, p2

    invoke-virtual/range {v4 .. v25}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v30

    .line 1227
    .local v30, "res":I
    if-gez v30, :cond_a

    .line 1228
    monitor-exit v31
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1235
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1238
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "theseOptions":Landroid/os/Bundle;
    .end local v22    # "componentSpecified":Z
    .end local v30    # "res":I
    :goto_5
    return v30

    .line 1221
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v22    # "componentSpecified":Z
    :cond_9
    const/16 v20, 0x0

    .restart local v20    # "theseOptions":Landroid/os/Bundle;
    goto :goto_4

    .line 1231
    .restart local v30    # "res":I
    :cond_a
    const/4 v2, 0x0

    :try_start_5
    aget-object v2, v23, v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    aget-object v2, v23, v2

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0

    :goto_6
    goto/16 :goto_2

    :cond_b
    const/16 p6, 0x0

    goto :goto_6

    .line 1233
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "theseOptions":Landroid/os/Bundle;
    .end local v22    # "componentSpecified":Z
    .end local v30    # "res":I
    :cond_c
    monitor-exit v31
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1235
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1238
    const/16 v30, 0x0

    goto :goto_5
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 41
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUid"    # I
    .param p12, "callingPackage"    # Ljava/lang/String;
    .param p13, "realCallingPid"    # I
    .param p14, "realCallingUid"    # I
    .param p15, "startFlags"    # I
    .param p16, "options"    # Landroid/os/Bundle;
    .param p17, "ignoreTargetSecurity"    # Z
    .param p18, "componentSpecified"    # Z
    .param p19, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p20, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p21, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1478
    const/16 v30, 0x0

    .line 1480
    .local v30, "err":I
    const/16 v27, 0x0

    .line 1481
    .local v27, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    .line 1482
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v27

    .line 1483
    if-eqz v27, :cond_3

    .line 1484
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p10, v0

    .line 1485
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p11, v0

    .line 1494
    :cond_0
    :goto_0
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v39

    .line 1496
    .local v39, "userId":I
    :goto_1
    if-nez v30, :cond_1

    .line 1497
    const-string v8, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START u"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " {"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "} from uid "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " on display "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p20, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v5, :cond_5

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_1
    const/16 v35, 0x0

    .line 1506
    .local v35, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x0

    .line 1507
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p7, :cond_2

    .line 1508
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v35

    .line 1511
    if-eqz v35, :cond_2

    .line 1512
    if-ltz p9, :cond_2

    move-object/from16 v0, v35

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2

    .line 1513
    move-object/from16 v6, v35

    .line 1518
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v31

    .line 1520
    .local v31, "launchFlags":I
    const/high16 v5, 0x2000000

    and-int v5, v5, v31

    if-eqz v5, :cond_b

    if-eqz v35, :cond_b

    .line 1523
    if-ltz p9, :cond_8

    .line 1524
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1525
    const/4 v5, -0x3

    .line 1787
    :goto_3
    return v5

    .line 1487
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v31    # "launchFlags":I
    .end local v35    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "userId":I
    :cond_3
    const-string v5, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find app for caller "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") when starting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    const/16 v30, -0x4

    goto/16 :goto_0

    .line 1494
    :cond_4
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 1497
    .restart local v39    # "userId":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_2

    :cond_6
    move-object/from16 v0, p20

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v5, :cond_7

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p20

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v5, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    goto/16 :goto_2

    .line 1527
    .restart local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v31    # "launchFlags":I
    .restart local v35    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_8
    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1528
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1529
    const/4 v6, 0x0

    .line 1531
    :cond_9
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p8, v0

    .line 1532
    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p9, v0

    .line 1533
    const/4 v5, 0x0

    move-object/from16 v0, v35

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1534
    if-eqz v6, :cond_a

    .line 1535
    move-object/from16 v0, v35

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1537
    :cond_a
    move-object/from16 v0, v35

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p11

    if-ne v5, v0, :cond_b

    .line 1548
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 p12, v0

    .line 1552
    :cond_b
    if-nez v30, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_c

    .line 1555
    const/16 v30, -0x1

    .line 1558
    :cond_c
    if-nez v30, :cond_d

    if-nez p4, :cond_d

    .line 1561
    const/16 v30, -0x2

    .line 1564
    :cond_d
    if-nez v30, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v5

    if-nez v5, :cond_e

    move-object/from16 v0, p4

    iget v5, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_e

    .line 1568
    const/16 v30, -0x8

    .line 1571
    :cond_e
    if-nez v30, :cond_f

    if-eqz v35, :cond_f

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v5, :cond_f

    .line 1577
    const/high16 v5, 0x10000000

    and-int v5, v5, v31

    if-nez v5, :cond_f

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v8, :cond_f

    .line 1580
    :try_start_0
    const-string v5, "android.intent.category.VOICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1581
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v5, v8, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1583
    const-string v5, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    const/16 v30, -0x7

    .line 1595
    :cond_f
    :goto_4
    if-nez v30, :cond_10

    if-eqz p5, :cond_10

    .line 1599
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v5, v8, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1601
    const-string v5, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity being started in new voice task does not support: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1604
    const/16 v30, -0x7

    .line 1612
    :cond_10
    :goto_5
    if-nez v6, :cond_12

    const/4 v4, 0x0

    .line 1614
    .local v4, "resultStack":Lcom/android/server/am/ActivityStack;
    :goto_6
    if-eqz v30, :cond_13

    .line 1615
    if-eqz v6, :cond_11

    .line 1616
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1620
    :cond_11
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    move/from16 v5, v30

    .line 1621
    goto/16 :goto_3

    .line 1588
    .end local v4    # "resultStack":Lcom/android/server/am/ActivityStack;
    :catch_0
    move-exception v29

    .line 1589
    .local v29, "e":Landroid/os/RemoteException;
    const-string v5, "ActivityManager"

    const-string v8, "Failure checking voice capabilities"

    move-object/from16 v0, v29

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1590
    const/16 v30, -0x7

    goto :goto_4

    .line 1606
    .end local v29    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v29

    .line 1607
    .restart local v29    # "e":Landroid/os/RemoteException;
    const-string v5, "ActivityManager"

    const-string v8, "Failure checking voice capabilities"

    move-object/from16 v0, v29

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1608
    const/16 v30, -0x7

    goto :goto_5

    .line 1612
    .end local v29    # "e":Landroid/os/RemoteException;
    :cond_12
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    goto :goto_6

    .line 1624
    .restart local v4    # "resultStack":Lcom/android/server/am/ActivityStack;
    :cond_13
    const/16 v24, 0x0

    .line 1626
    .local v24, "abort":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v38

    .line 1629
    .local v38, "startAnyPerm":I
    if-eqz v38, :cond_19

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p12

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p17

    .line 1630
    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v28

    .line 1632
    .local v28, "componentRestriction":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v25

    .line 1635
    .local v25, "actionRestriction":I
    const/4 v5, 0x1

    move/from16 v0, v28

    if-eq v0, v5, :cond_14

    const/4 v5, 0x1

    move/from16 v0, v25

    if-ne v0, v5, :cond_18

    .line 1637
    :cond_14
    if-eqz v6, :cond_15

    .line 1638
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1643
    :cond_15
    const/4 v5, 0x1

    move/from16 v0, v25

    if-ne v0, v5, :cond_16

    .line 1644
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: starting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (pid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " with revoked permission "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v5, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1659
    .local v33, "msg":Ljava/lang/String;
    :goto_7
    const-string v5, "ActivityManager"

    move-object/from16 v0, v33

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    new-instance v5, Ljava/lang/SecurityException;

    move-object/from16 v0, v33

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1648
    .end local v33    # "msg":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p4

    iget-boolean v5, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v5, :cond_17

    .line 1649
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: starting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (pid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " not exported from uid "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "msg":Ljava/lang/String;
    goto :goto_7

    .line 1654
    .end local v33    # "msg":Ljava/lang/String;
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: starting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (pid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " requires "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "msg":Ljava/lang/String;
    goto/16 :goto_7

    .line 1663
    .end local v33    # "msg":Ljava/lang/String;
    :cond_18
    const/4 v5, 0x2

    move/from16 v0, v25

    if-ne v0, v5, :cond_1d

    .line 1664
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Appop Denial: starting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (pid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " requires "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v5, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1669
    .local v32, "message":Ljava/lang/String;
    const-string v5, "ActivityManager"

    move-object/from16 v0, v32

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    const/16 v24, 0x1

    .line 1681
    .end local v25    # "actionRestriction":I
    .end local v28    # "componentRestriction":I
    .end local v32    # "message":Ljava/lang/String;
    :cond_19
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, p2

    move/from16 v9, p11

    move/from16 v10, p10

    move-object/from16 v11, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_1e

    const/4 v5, 0x1

    :goto_9
    or-int v24, v24, v5

    .line 1685
    if-nez v24, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p12

    move/from16 v3, p11

    invoke-static {v5, v0, v1, v2, v3}, Lcom/android/server/am/ExtraActivityManagerService;->isAllowedStartActivity(Lcom/android/server/AppOpsService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1687
    const/16 v24, 0x1

    .line 1690
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v5, :cond_1b

    .line 1694
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v40

    .line 1695
    .local v40, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-interface {v5, v0, v8}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    if-nez v5, :cond_1f

    const/4 v5, 0x1

    :goto_a
    or-int v24, v24, v5

    .line 1702
    .end local v40    # "watchIntent":Landroid/content/Intent;
    :cond_1b
    :goto_b
    if-eqz v24, :cond_20

    .line 1703
    if-eqz v6, :cond_1c

    .line 1704
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1709
    :cond_1c
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1710
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1671
    .restart local v25    # "actionRestriction":I
    .restart local v28    # "componentRestriction":I
    :cond_1d
    const/4 v5, 0x2

    move/from16 v0, v28

    if-ne v0, v5, :cond_19

    .line 1672
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Appop Denial: starting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (pid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " requires appop "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v8}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1676
    .restart local v32    # "message":Ljava/lang/String;
    const-string v5, "ActivityManager"

    move-object/from16 v0, v32

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    const/16 v24, 0x1

    goto/16 :goto_8

    .line 1681
    .end local v25    # "actionRestriction":I
    .end local v28    # "componentRestriction":I
    .end local v32    # "message":Ljava/lang/String;
    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1695
    .restart local v40    # "watchIntent":Landroid/content/Intent;
    :cond_1f
    const/4 v5, 0x0

    goto :goto_a

    .line 1697
    .end local v40    # "watchIntent":Landroid/content/Intent;
    :catch_2
    move-exception v29

    .line 1698
    .restart local v29    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto/16 :goto_b

    .end local v29    # "e":Landroid/os/RemoteException;
    :cond_20
    new-instance v7, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p5, :cond_25

    const/16 v20, 0x1

    :goto_c
    move-object/from16 v9, v27

    move/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, v6

    move-object/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p18

    move-object/from16 v21, p0

    move-object/from16 v22, p20

    move-object/from16 v23, p16

    invoke-direct/range {v7 .. v23}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;)V

    .line 1716
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p19, :cond_21

    .line 1717
    const/4 v5, 0x0

    aput-object v7, p19, v5

    .line 1720
    :cond_21
    iget-object v5, v7, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v5, :cond_22

    if-eqz v35, :cond_22

    .line 1723
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v5, v7, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1726
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v36, v0

    .line 1731
    .local v36, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    const/4 v8, -0x1

    move/from16 v0, v39

    invoke-virtual {v5, v0, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v26

    .line 1733
    .local v26, "activityProfileGroup":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    move-object/from16 v0, v36

    iget v8, v0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v37

    .line 1735
    .local v37, "stackProfileGroup":I
    move-object/from16 v0, v36

    iget v5, v0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    move/from16 v0, v39

    if-eq v0, v5, :cond_23

    const/4 v5, -0x1

    move/from16 v0, v39

    if-eq v0, v5, :cond_23

    .line 1739
    const/4 v5, -0x1

    move/from16 v0, v37

    if-eq v0, v5, :cond_26

    move/from16 v0, v26

    move/from16 v1, v37

    if-ne v0, v1, :cond_26

    .line 1741
    const-string v5, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allowing start activity in profile group "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from another user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in activity stack for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v36

    iget v9, v0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_23
    if-nez p5, :cond_27

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_24

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p11

    if-eq v5, v0, :cond_27

    .line 1754
    :cond_24
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v13, "Activity start"

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p13

    move/from16 v12, p14

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 1756
    new-instance v34, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, p15

    move-object/from16 v3, v36

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1758
    .local v34, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1760
    const/4 v5, 0x4

    goto/16 :goto_3

    .line 1713
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "activityProfileGroup":I
    .end local v34    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v37    # "stackProfileGroup":I
    :cond_25
    const/16 v20, 0x0

    goto/16 :goto_c

    .line 1746
    .restart local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "activityProfileGroup":I
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v37    # "stackProfileGroup":I
    :cond_26
    const-string v5, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not starting activity from another user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in activity stack for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v36

    iget v9, v0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    const/4 v5, -0x6

    goto/16 :goto_3

    .line 1764
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v5, :cond_29

    .line 1770
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    iput-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 1775
    :goto_d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    .line 1777
    const/4 v14, 0x1

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v10, v35

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p15

    move-object/from16 v15, p16

    move-object/from16 v16, p21

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I

    move-result v30

    .line 1780
    if-gez v30, :cond_28

    .line 1785
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    :cond_28
    move/from16 v5, v30

    .line 1787
    goto/16 :goto_3

    .line 1772
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_d
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 46
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Landroid/os/Bundle;
    .param p16, "ignoreTargetSecurity"    # Z
    .param p17, "userId"    # I
    .param p18, "iContainer"    # Landroid/app/IActivityContainer;
    .param p19, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 962
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 963
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "File descriptors passed in Intent"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 965
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    const/16 v30, 0x1

    .line 968
    .local v30, "componentSpecified":Z
    :goto_0
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p4    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v4, p0

    move-object/from16 v6, p5

    move/from16 v7, p11

    move-object/from16 v8, p12

    move/from16 v9, p17

    .line 971
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 975
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisorInjector;->isXSpaceActive()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 976
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    if-eqz p8, :cond_2

    const/4 v9, 0x1

    :goto_1
    move-object v8, v5

    move/from16 v10, p10

    move/from16 v11, p17

    move-object/from16 v12, p3

    invoke-static/range {v6 .. v12}, Lcom/android/server/am/ActivityStackSupervisorInjector;->checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    .end local v5    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    move-object/from16 v8, p4

    move-object/from16 v9, p0

    move-object/from16 v10, p12

    move-object/from16 v11, p5

    move/from16 v12, p11

    move/from16 v13, p17

    move-object/from16 v14, p3

    invoke-static/range {v7 .. v14}, Lcom/android/server/am/ActivityStackSupervisorInjector;->resolveXSpaceIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;Ljava/lang/String;IILjava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v14, v4, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    move-object/from16 v10, p1

    move-object v11, v7

    move-object/from16 v12, p4

    move/from16 v13, p17

    invoke-static/range {v8 .. v14}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IZ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 981
    const/16 v42, 0x5

    .line 1158
    :goto_3
    return v42

    .line 965
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v30    # "componentSpecified":Z
    :cond_1
    const/16 v30, 0x0

    goto :goto_0

    .line 976
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v30    # "componentSpecified":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 984
    .end local v5    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p8, :cond_4

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v10, p1

    move-object v11, v7

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v15, p10

    move/from16 v16, p16

    move/from16 v17, p17

    invoke-static/range {v8 .. v17}, Lcom/android/server/am/ActivityStackSupervisorInjector;->checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZIZI)Landroid/content/Intent;

    move-result-object p4

    .line 986
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-object/from16 v2, p12

    move/from16 v3, p17

    invoke-static {v7, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisorInjector;->resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 988
    move-object/from16 v0, p4

    invoke-static {v0, v7}, Lcom/android/server/am/ExtraActivityManagerService;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object p4

    .line 989
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-object/from16 v2, p12

    move/from16 v3, p17

    invoke-static {v7, v0, v1, v2, v3}, Lcom/android/server/am/ExtraActivityManagerService;->resolveSplashIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    move-object/from16 v32, p18

    .line 992
    check-cast v32, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 993
    .local v32, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 994
    if-eqz v32, :cond_5

    :try_start_0
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_5

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v8, :cond_5

    .line 997
    const/16 v42, -0x6

    monitor-exit v6

    goto :goto_3

    .line 1159
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 984
    .end local v32    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    .line 999
    .restart local v32    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_5
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v25

    .line 1000
    .local v25, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v26

    .line 1002
    .local v26, "realCallingUid":I
    if-ltz p2, :cond_c

    .line 1003
    const/16 v22, -0x1

    .line 1012
    .local v22, "callingPid":I
    :goto_5
    if-eqz v32, :cond_6

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1013
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v43, v0

    .line 1017
    .local v43, "stack":Lcom/android/server/am/ActivityStack;
    :goto_6
    if-eqz p14, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p14

    invoke-virtual {v4, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, v43

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1021
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v38

    .line 1023
    .local v38, "origId":J
    if-eqz v7, :cond_b

    iget-object v4, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_b

    .line 1028
    iget-object v4, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v8, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1032
    :cond_7
    move/from16 v11, p2

    .line 1033
    .local v11, "appCallingUid":I
    if-eqz p1, :cond_8

    .line 1034
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v34

    .line 1035
    .local v34, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v34, :cond_10

    .line 1036
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1046
    .end local v34    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x2

    const-string v10, "android"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x1

    new-array v0, v4, [Landroid/content/Intent;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    aput-object p4, v16, v4

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    aput-object p5, v17, v4

    const/high16 v18, 0x50000000

    const/16 v19, 0x0

    move/from16 v12, p17

    invoke-virtual/range {v8 .. v19}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v44

    .line 1052
    .local v44, "target":Landroid/content/IIntentSender;
    new-instance v37, Landroid/content/Intent;

    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    .line 1053
    .local v37, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_9

    .line 1055
    const-string v4, "has_result"

    const/4 v8, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1057
    :cond_9
    const-string v4, "intent"

    new-instance v8, Landroid/content/IntentSender;

    move-object/from16 v0, v44

    invoke-direct {v8, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 1060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/ActivityRecord;

    .line 1061
    .local v36, "hist":Lcom/android/server/am/ActivityRecord;
    const-string v4, "cur_app"

    move-object/from16 v0, v36

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    const-string v4, "cur_task"

    move-object/from16 v0, v36

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    .end local v36    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_a
    const-string v4, "new_app"

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1069
    const-string v4, "android"

    const-class v8, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    move-object/from16 p4, v37

    .line 1072
    const/16 p5, 0x0

    .line 1073
    const/16 p1, 0x0

    .line 1074
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 1075
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v22

    .line 1076
    const/16 v30, 0x1

    .line 1078
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v8, 0x0

    const v9, 0x10400

    move-object/from16 v0, p4

    move/from16 v1, p17

    invoke-interface {v4, v0, v8, v9, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v41

    .line 1083
    .local v41, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v41, :cond_11

    move-object/from16 v0, v41

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1084
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p17

    invoke-virtual {v4, v7, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 1093
    .end local v11    # "appCallingUid":I
    .end local v37    # "newIntent":Landroid/content/Intent;
    .end local v41    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v44    # "target":Landroid/content/IIntentSender;
    :cond_b
    :goto_9
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v45

    .line 1094
    .local v45, "topr":Lcom/android/server/am/ActivityRecord;
    if-eqz v45, :cond_12

    const-string v4, "com.android.incallui.InCallActivity"

    move-object/from16 v0, v45

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "com.android.incallui.InCallActivity"

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLastActivityCallTime:J

    const-wide/16 v12, 0x3e8

    add-long/2addr v8, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v4, v8, v12

    if-lez v4, :cond_12

    .line 1097
    const-string v4, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app switch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " stopped for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "com.android.incallui.InCallActivity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms.Try later."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-static/range {p15 .. p15}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1099
    const/16 v42, 0x4

    monitor-exit v6

    goto/16 :goto_3

    .line 1004
    .end local v22    # "callingPid":I
    .end local v38    # "origId":J
    .end local v43    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v45    # "topr":Lcom/android/server/am/ActivityRecord;
    :cond_c
    if-nez p1, :cond_d

    .line 1005
    move/from16 v22, v25

    .line 1006
    .restart local v22    # "callingPid":I
    move/from16 p2, v26

    goto/16 :goto_5

    .line 1008
    .end local v22    # "callingPid":I
    :cond_d
    const/16 p2, -0x1

    move/from16 v22, p2

    .restart local v22    # "callingPid":I
    goto/16 :goto_5

    .line 1015
    :cond_e
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v43, v0

    .restart local v43    # "stack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_6

    .line 1017
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1038
    .restart local v11    # "appCallingUid":I
    .restart local v34    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "origId":J
    :cond_10
    const-string v4, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find app for caller "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") when starting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-static/range {p15 .. p15}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1042
    const/16 v42, -0x4

    monitor-exit v6

    goto/16 :goto_3

    .line 1083
    .end local v34    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v37    # "newIntent":Landroid/content/Intent;
    .restart local v41    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v44    # "target":Landroid/content/IIntentSender;
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 1085
    .end local v41    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v35

    .line 1086
    .local v35, "e":Landroid/os/RemoteException;
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 1101
    .end local v11    # "appCallingUid":I
    .end local v35    # "e":Landroid/os/RemoteException;
    .end local v37    # "newIntent":Landroid/content/Intent;
    .end local v44    # "target":Landroid/content/IIntentSender;
    .restart local v45    # "topr":Lcom/android/server/am/ActivityRecord;
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLastActivityCallTime:J

    move-object/from16 v12, v43

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, v7

    move-object/from16 v18, p8

    move/from16 v19, p10

    move/from16 v20, p17

    .line 1102
    invoke-static/range {v12 .. v20}, Lcom/android/server/am/ActivityStackSupervisorInjector;->updateInfoBeforeRealStartActivity(Lcom/android/server/am/ActivityStack;Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;II)V

    .line 1107
    const/16 v31, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, v7

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    move/from16 v21, p10

    move/from16 v23, p2

    move-object/from16 v24, p3

    move/from16 v27, p11

    move-object/from16 v28, p15

    move/from16 v29, p16

    move-object/from16 v33, p19

    invoke-virtual/range {v12 .. v33}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v42

    .line 1113
    .local v42, "res":I
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1115
    move-object/from16 v0, v43

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v4, :cond_13

    .line 1120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "android.permission.CHANGE_CONFIGURATION"

    const-string v9, "updateConfiguration()"

    invoke-virtual {v4, v8, v9}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const/4 v4, 0x0

    move-object/from16 v0, v43

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p14

    invoke-virtual {v4, v0, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 1128
    :cond_13
    if-eqz p13, :cond_15

    .line 1129
    move/from16 v0, v42

    move-object/from16 v1, p13

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 1130
    if-nez v42, :cond_16

    .line 1131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1134
    :cond_14
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1137
    :goto_a
    :try_start_5
    move-object/from16 v0, p13

    iget-boolean v4, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v4, :cond_15

    move-object/from16 v0, p13

    iget-object v4, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v4, :cond_14

    .line 1158
    :cond_15
    :goto_b
    monitor-exit v6

    goto/16 :goto_3

    .line 1138
    :cond_16
    const/4 v4, 0x2

    move/from16 v0, v42

    if-ne v0, v4, :cond_15

    .line 1139
    const/4 v4, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v40

    .line 1140
    .local v40, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v40

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_17

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v8, :cond_17

    .line 1141
    const/4 v4, 0x0

    move-object/from16 v0, p13

    iput-boolean v4, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 1142
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p13

    iput-object v4, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 1143
    const-wide/16 v8, 0x0

    move-object/from16 v0, p13

    iput-wide v8, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 1144
    const-wide/16 v8, 0x0

    move-object/from16 v0, p13

    iput-wide v8, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto :goto_b

    .line 1146
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p13

    iput-wide v8, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1150
    :cond_18
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1153
    :goto_c
    :try_start_7
    move-object/from16 v0, p13

    iget-boolean v4, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v4, :cond_15

    move-object/from16 v0, p13

    iget-object v4, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_18

    goto :goto_b

    .line 1151
    :catch_1
    move-exception v4

    goto :goto_c

    .line 1135
    .end local v40    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_2
    move-exception v4

    goto :goto_a

    .end local v22    # "callingPid":I
    .end local v25    # "realCallingPid":I
    .end local v26    # "realCallingUid":I
    .end local v32    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v38    # "origId":J
    .end local v42    # "res":I
    .end local v43    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v45    # "topr":Lcom/android/server/am/ActivityRecord;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_19
    move-object/from16 p4, v5

    .end local v5    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_2
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I
    .locals 43
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1933
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    .line 1934
    .local v20, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 1940
    .local v15, "callingUid":I
    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    iget-boolean v6, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v6, :cond_0

    .line 1941
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting activity in task not in recents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    const/16 p8, 0x0

    .line 1945
    :cond_0
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    const/16 v26, 0x1

    .line 1946
    .local v26, "launchSingleTop":Z
    :goto_0
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    const/16 v24, 0x1

    .line 1947
    .local v24, "launchSingleInstance":Z
    :goto_1
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    const/16 v25, 0x1

    .line 1949
    .local v25, "launchSingleTask":Z
    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getFlags()I

    move-result v23

    .line 1950
    .local v23, "launchFlags":I
    const/high16 v6, 0x80000

    and-int v6, v6, v23

    if-eqz v6, :cond_c

    if-nez v24, :cond_1

    if-eqz v25, :cond_c

    .line 1953
    :cond_1
    const-string v6, "ActivityManager"

    const-string v7, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    const v6, -0x8080001

    and-int v23, v23, v6

    .line 1973
    :goto_3
    :pswitch_0
    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v6, :cond_d

    if-nez v25, :cond_d

    if-nez v24, :cond_d

    const/high16 v6, 0x80000

    and-int v6, v6, v23

    if-eqz v6, :cond_d

    const/16 v27, 0x1

    .line 1977
    .local v27, "launchTaskBehind":Z
    :goto_4
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_2

    const/high16 v6, 0x10000000

    and-int v6, v6, v23

    if-eqz v6, :cond_2

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_2

    .line 1984
    const-string v6, "ActivityManager"

    const-string v7, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1988
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1991
    :cond_2
    const/high16 v6, 0x80000

    and-int v6, v6, v23

    if-eqz v6, :cond_3

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_3

    .line 1992
    const/high16 v6, 0x10000000

    or-int v23, v23, v6

    .line 1997
    :cond_3
    const/high16 v6, 0x10000000

    and-int v6, v6, v23

    if-eqz v6, :cond_5

    .line 1998
    if-nez v27, :cond_4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 2000
    :cond_4
    const/high16 v6, 0x8000000

    or-int v23, v23, v6

    .line 2006
    :cond_5
    const/high16 v6, 0x40000

    and-int v6, v6, v23

    if-nez v6, :cond_e

    const/4 v6, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2013
    if-nez p6, :cond_6

    .line 2014
    const/4 v6, 0x1

    move-object/from16 v0, p1

    iput-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2017
    :cond_6
    const/high16 v6, 0x1000000

    and-int v6, v6, v23

    if-eqz v6, :cond_f

    move-object/from16 v33, p1

    .line 2024
    .local v33, "notTop":Lcom/android/server/am/ActivityRecord;
    :goto_6
    and-int/lit8 v6, p5, 0x1

    if-eqz v6, :cond_8

    .line 2025
    move-object/from16 v16, p2

    .line 2026
    .local v16, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v16, :cond_7

    .line 2027
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 2029
    :cond_7
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 2031
    and-int/lit8 p5, p5, -0x2

    .line 2035
    .end local v16    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/4 v13, 0x0

    .line 2036
    .local v13, "addingToTask":Z
    const/16 v35, 0x0

    .line 2041
    .local v35, "reuseTask":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_1a

    if-eqz p8, :cond_1a

    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_1a

    .line 2042
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v14

    .line 2043
    .local v14, "baseIntent":Landroid/content/Intent;
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v36

    .line 2044
    .local v36, "root":Lcom/android/server/am/ActivityRecord;
    if-nez v14, :cond_10

    .line 2045
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2046
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launching into task without base intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1945
    .end local v13    # "addingToTask":Z
    .end local v14    # "baseIntent":Landroid/content/Intent;
    .end local v23    # "launchFlags":I
    .end local v24    # "launchSingleInstance":Z
    .end local v25    # "launchSingleTask":Z
    .end local v26    # "launchSingleTop":Z
    .end local v27    # "launchTaskBehind":Z
    .end local v33    # "notTop":Lcom/android/server/am/ActivityRecord;
    .end local v35    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .end local v36    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1946
    .restart local v26    # "launchSingleTop":Z
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1947
    .restart local v24    # "launchSingleInstance":Z
    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 1958
    .restart local v23    # "launchFlags":I
    .restart local v25    # "launchSingleTask":Z
    :cond_c
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    .line 1962
    :pswitch_1
    const/high16 v6, 0x80000

    or-int v23, v23, v6

    .line 1963
    goto/16 :goto_3

    .line 1965
    :pswitch_2
    const/high16 v6, 0x80000

    or-int v23, v23, v6

    .line 1966
    goto/16 :goto_3

    .line 1968
    :pswitch_3
    const v6, -0x8000001

    and-int v23, v23, v6

    goto/16 :goto_3

    .line 1973
    :cond_d
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 2006
    .restart local v27    # "launchTaskBehind":Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 2017
    :cond_f
    const/16 v33, 0x0

    goto/16 :goto_6

    .line 2052
    .restart local v13    # "addingToTask":Z
    .restart local v14    # "baseIntent":Landroid/content/Intent;
    .restart local v33    # "notTop":Lcom/android/server/am/ActivityRecord;
    .restart local v35    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .restart local v36    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_10
    if-nez v24, :cond_11

    if-eqz v25, :cond_13

    .line 2053
    :cond_11
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 2054
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2055
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to launch singleInstance/Task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " into different task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2058
    :cond_12
    if-eqz v36, :cond_13

    .line 2059
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2060
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller with inTask "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has root "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but target is singleInstance/Task"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2067
    :cond_13
    if-nez v36, :cond_18

    .line 2068
    const v18, 0x18082000

    .line 2071
    .local v18, "flagsOfInterest":I
    const v6, -0x18082001

    and-int v6, v6, v23

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const v8, 0x18082000

    and-int/2addr v7, v8

    or-int v23, v6, v7

    .line 2073
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2074
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2075
    const/4 v13, 0x1

    .line 2087
    .end local v18    # "flagsOfInterest":I
    :goto_7
    move-object/from16 v35, p8

    .line 2092
    .end local v14    # "baseIntent":Landroid/content/Intent;
    .end local v36    # "root":Lcom/android/server/am/ActivityRecord;
    :goto_8
    if-nez p8, :cond_14

    .line 2093
    if-nez p2, :cond_1b

    .line 2096
    const/high16 v6, 0x10000000

    and-int v6, v6, v23

    if-nez v6, :cond_14

    if-nez p8, :cond_14

    .line 2097
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const/high16 v6, 0x10000000

    or-int v23, v23, v6

    .line 2113
    :cond_14
    :goto_9
    const/16 v31, 0x0

    .line 2114
    .local v31, "newTaskInfo":Landroid/content/pm/ActivityInfo;
    const/16 v32, 0x0

    .line 2116
    .local v32, "newTaskIntent":Landroid/content/Intent;
    if-eqz p2, :cond_1f

    .line 2117
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1e

    .line 2123
    const/high16 v6, 0x10000000

    and-int v6, v6, v23

    if-nez v6, :cond_15

    .line 2124
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startActivity called from finishing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; forcing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    const/high16 v6, 0x10000000

    or-int v23, v23, v6

    .line 2127
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    .line 2128
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v32, v0

    .line 2130
    :cond_15
    const/16 p2, 0x0

    .line 2131
    const/16 v37, 0x0

    .line 2139
    .local v37, "sourceStack":Lcom/android/server/am/ActivityStack;
    :goto_a
    const/16 v28, 0x0

    .line 2142
    .local v28, "movedHome":Z
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2143
    const/high16 v6, 0x10000

    and-int v6, v6, v23

    if-eqz v6, :cond_20

    const/4 v5, 0x1

    .line 2150
    .local v5, "noAnimation":Z
    :goto_b
    const/high16 v6, 0x10000000

    and-int v6, v6, v23

    if-eqz v6, :cond_16

    const/high16 v6, 0x8000000

    and-int v6, v6, v23

    if-eqz v6, :cond_17

    :cond_16
    if-nez v24, :cond_17

    if-eqz v25, :cond_3f

    .line 2157
    :cond_17
    if-nez p8, :cond_3f

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_3f

    .line 2162
    if-nez v24, :cond_21

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 2164
    .local v21, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_c
    if-eqz v21, :cond_3f

    .line 2168
    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const v6, 0x10008000

    and-int v6, v6, v23

    const v8, 0x10008000

    if-ne v6, v8, :cond_22

    const/4 v6, 0x1

    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 2171
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 2172
    const-string v6, "ActivityManager"

    const-string v7, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    const/4 v6, 0x5

    .line 2566
    .end local v21    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_e
    return v6

    .line 2080
    .end local v5    # "noAnimation":Z
    .end local v28    # "movedHome":Z
    .end local v31    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .end local v32    # "newTaskIntent":Landroid/content/Intent;
    .end local v37    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "baseIntent":Landroid/content/Intent;
    .restart local v36    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_18
    const/high16 v6, 0x10000000

    and-int v6, v6, v23

    if-eqz v6, :cond_19

    .line 2081
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 2084
    :cond_19
    const/4 v13, 0x1

    goto/16 :goto_7

    .line 2089
    .end local v14    # "baseIntent":Landroid/content/Intent;
    .end local v36    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    const/16 p8, 0x0

    goto/16 :goto_8

    .line 2101
    :cond_1b
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1c

    .line 2105
    const/high16 v6, 0x10000000

    or-int v23, v23, v6

    goto/16 :goto_9

    .line 2106
    :cond_1c
    if-nez v24, :cond_1d

    if-eqz v25, :cond_14

    .line 2109
    :cond_1d
    const/high16 v6, 0x10000000

    or-int v23, v23, v6

    goto/16 :goto_9

    .line 2133
    .restart local v31    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v32    # "newTaskIntent":Landroid/content/Intent;
    :cond_1e
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v37, v0

    .restart local v37    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_a

    .line 2136
    .end local v37    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_1f
    const/16 v37, 0x0

    .restart local v37    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_a

    .line 2143
    .restart local v28    # "movedHome":Z
    :cond_20
    const/4 v5, 0x0

    goto :goto_b

    .line 2162
    .restart local v5    # "noAnimation":Z
    :cond_21
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    goto :goto_c

    .line 2168
    .restart local v21    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_22
    const/4 v6, 0x0

    goto :goto_d

    .line 2175
    :cond_23
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v6, :cond_24

    .line 2176
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2178
    :cond_24
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v6, :cond_25

    .line 2183
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2185
    :cond_25
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2186
    .local v3, "targetStack":Lcom/android/server/am/ActivityStack;
    const/4 v6, 0x0

    iput-object v6, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2193
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v19

    .line 2194
    .local v19, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v19, :cond_2e

    const/16 v17, 0x0

    .line 2196
    .local v17, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_f
    const/16 v29, 0x0

    .line 2197
    .local v29, "movedToFront":Z
    if-eqz v17, :cond_2a

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v6, v7, :cond_26

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-eq v6, v7, :cond_2a

    .line 2199
    :cond_26
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v7, 0x400000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2200
    if-eqz p2, :cond_27

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_2a

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v6, v7, :cond_2a

    .line 2203
    :cond_27
    if-eqz v27, :cond_28

    if-eqz p2, :cond_28

    .line 2204
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 2206
    :cond_28
    const/16 v28, 0x1

    .line 2207
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v8, "bringingFoundTaskToFront"

    move-object/from16 v6, p7

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2209
    const/16 v29, 0x1

    .line 2210
    const v6, 0x10004000

    and-int v6, v6, v23

    const v7, 0x10004000

    if-ne v6, v7, :cond_29

    .line 2214
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2216
    :cond_29
    const/16 p7, 0x0

    .line 2219
    :cond_2a
    if-nez v29, :cond_2b

    .line 2222
    const-string v6, "intentActivityFound"

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2227
    :cond_2b
    const/high16 v6, 0x200000

    and-int v6, v6, v23

    if-eqz v6, :cond_2c

    .line 2228
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 2230
    :cond_2c
    and-int/lit8 v6, p5, 0x1

    if-eqz v6, :cond_30

    .line 2235
    if-eqz p6, :cond_2f

    .line 2236
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v3, v6, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 2240
    if-nez v29, :cond_2d

    .line 2241
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 2246
    :cond_2d
    :goto_10
    const/4 v6, 0x1

    goto/16 :goto_e

    .line 2194
    .end local v17    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v29    # "movedToFront":Z
    :cond_2e
    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    goto/16 :goto_f

    .line 2244
    .restart local v17    # "curTop":Lcom/android/server/am/ActivityRecord;
    .restart local v29    # "movedToFront":Z
    :cond_2f
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_10

    .line 2248
    :cond_30
    const v6, 0x10008000

    and-int v6, v6, v23

    const v7, 0x10008000

    if-ne v6, v7, :cond_33

    .line 2253
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v35, v0

    .line 2254
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 2255
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2334
    :cond_31
    :goto_11
    if-nez v13, :cond_3f

    if-nez v35, :cond_3f

    .line 2338
    if-eqz p6, :cond_3e

    .line 2339
    const/4 v6, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v3, v6, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 2340
    if-nez v29, :cond_32

    .line 2343
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 2348
    :cond_32
    :goto_12
    const/4 v6, 0x2

    goto/16 :goto_e

    .line 2256
    :cond_33
    const/high16 v6, 0x4000000

    and-int v6, v6, v23

    if-nez v6, :cond_34

    if-nez v24, :cond_34

    if-eqz v25, :cond_38

    .line 2262
    :cond_34
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v40

    .line 2264
    .local v40, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v40, :cond_36

    .line 2265
    move-object/from16 v0, v40

    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v6, :cond_35

    .line 2270
    move-object/from16 v0, v40

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2272
    :cond_35
    const/16 v6, 0x7533

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v6, v0, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2274
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v15, v6, v7}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_11

    .line 2279
    :cond_36
    const/4 v13, 0x1

    .line 2282
    move-object/from16 p2, v21

    .line 2283
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    .line 2284
    .local v38, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v38, :cond_31

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v6, :cond_31

    .line 2287
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2288
    if-nez v27, :cond_37

    const/4 v6, 0x1

    :goto_13
    const/4 v7, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v3, v0, v6, v7}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    goto :goto_11

    :cond_37
    const/4 v6, 0x0

    goto :goto_13

    .line 2293
    .end local v38    # "task":Lcom/android/server/am/TaskRecord;
    .end local v40    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_38
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 2300
    const/high16 v6, 0x20000000

    and-int v6, v6, v23

    if-nez v6, :cond_39

    if-eqz v26, :cond_3b

    :cond_39
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 2302
    const/16 v6, 0x7533

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v6, v0, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2304
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v6, :cond_3a

    .line 2305
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2307
    :cond_3a
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v15, v6, v7}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 2309
    :cond_3b
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 2313
    const/4 v13, 0x1

    .line 2314
    move-object/from16 p2, v21

    goto/16 :goto_11

    .line 2316
    :cond_3c
    const/high16 v6, 0x200000

    and-int v6, v6, v23

    if-nez v6, :cond_3d

    .line 2322
    const/4 v13, 0x1

    .line 2323
    move-object/from16 p2, v21

    goto/16 :goto_11

    .line 2324
    :cond_3d
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, v6, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v6, :cond_31

    .line 2332
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_11

    .line 2346
    :cond_3e
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_12

    .line 2360
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v17    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "focusStack":Lcom/android/server/am/ActivityStack;
    .end local v21    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v29    # "movedToFront":Z
    :cond_3f
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_43

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v41, v0

    .line 2365
    .local v41, "topStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v40

    .line 2366
    .restart local v40    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v40, :cond_45

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_45

    .line 2367
    move-object/from16 v0, v40

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    move-object/from16 v0, v40

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, v7, :cond_45

    .line 2368
    move-object/from16 v0, v40

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_45

    move-object/from16 v0, v40

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_45

    .line 2369
    const/high16 v6, 0x20000000

    and-int v6, v6, v23

    if-nez v6, :cond_40

    if-nez v26, :cond_40

    if-eqz v25, :cond_45

    .line 2371
    :cond_40
    const/16 v6, 0x7533

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v40

    invoke-static {v6, v0, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2375
    const/4 v6, 0x0

    move-object/from16 v0, v41

    iput-object v6, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2376
    if-eqz p6, :cond_41

    .line 2377
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 2379
    :cond_41
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2380
    and-int/lit8 v6, p5, 0x1

    if-eqz v6, :cond_42

    .line 2384
    const/4 v6, 0x1

    goto/16 :goto_e

    .line 2386
    :cond_42
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v15, v6, v7}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2387
    const/4 v6, 0x3

    goto/16 :goto_e

    .line 2394
    .end local v40    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v41    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_43
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_44

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_44

    .line 2395
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v7, -0x1

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2398
    :cond_44
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2399
    const/4 v6, -0x2

    goto/16 :goto_e

    .line 2402
    .restart local v40    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v41    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_45
    const/16 v30, 0x0

    .line 2403
    .local v30, "newTask":Z
    const/16 v22, 0x0

    .line 2405
    .local v22, "keepCurTransition":Z
    if-eqz v27, :cond_46

    if-eqz p2, :cond_46

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v39, v0

    .line 2409
    .local v39, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :goto_14
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_50

    if-nez p8, :cond_50

    if-nez v13, :cond_50

    const/high16 v6, 0x10000000

    and-int v6, v6, v23

    if-eqz v6, :cond_50

    .line 2411
    const/16 v30, 0x1

    .line 2412
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2413
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    const-string v6, "startingNewTask"

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2415
    if-nez v35, :cond_4a

    .line 2416
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v7

    if-eqz v31, :cond_47

    move-object/from16 v8, v31

    :goto_15
    if-eqz v32, :cond_48

    move-object/from16 v9, v32

    :goto_16
    if-nez v27, :cond_49

    const/4 v12, 0x1

    :goto_17
    move-object v6, v3

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v6, v1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2426
    :goto_18
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 2427
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted Lock Task Mode violation r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    const/4 v6, 0x5

    goto/16 :goto_e

    .line 2405
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v39    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :cond_46
    const/16 v39, 0x0

    goto :goto_14

    .line 2416
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v39    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :cond_47
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_15

    :cond_48
    move-object/from16 v9, v20

    goto :goto_16

    :cond_49
    const/4 v12, 0x0

    goto :goto_17

    .line 2424
    :cond_4a
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto :goto_18

    .line 2430
    :cond_4b
    if-nez v28, :cond_4c

    .line 2431
    const v6, 0x10004000

    and-int v6, v6, v23

    const v7, 0x10004000

    if-ne v6, v7, :cond_4c

    .line 2436
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2550
    :cond_4c
    :goto_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move v7, v15

    move-object/from16 v9, v20

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 2553
    if-eqz p2, :cond_4d

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 2554
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2556
    :cond_4d
    if-eqz v30, :cond_4e

    .line 2557
    const/16 v6, 0x7534

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2559
    :cond_4e
    const/16 v6, 0x7535

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v6, v0, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2560
    const/4 v6, 0x0

    iput-object v6, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v6, v3

    move-object/from16 v7, p1

    move/from16 v8, v30

    move/from16 v9, p6

    move/from16 v10, v22

    move-object/from16 v11, p7

    .line 2561
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 2562
    if-nez v27, :cond_4f

    .line 2564
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "startedActivity"

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 2566
    :cond_4f
    const/4 v6, 0x0

    goto/16 :goto_e

    .line 2439
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_50
    if-eqz p2, :cond_57

    .line 2440
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2441
    .local v4, "sourceTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 2442
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted Lock Task Mode violation r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    const/4 v6, 0x5

    goto/16 :goto_e

    .line 2445
    :cond_51
    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2446
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    const-string v6, "sourceStackToFront"

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2447
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v42

    .line 2448
    .local v42, "topTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v42

    if-eq v0, v4, :cond_52

    .line 2449
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v8, "sourceTaskToFront"

    move-object/from16 v6, p7

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2452
    :cond_52
    if-nez v13, :cond_54

    const/high16 v6, 0x4000000

    and-int v6, v6, v23

    if-eqz v6, :cond_54

    .line 2456
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v40

    .line 2457
    const/16 v22, 0x1

    .line 2458
    if-eqz v40, :cond_56

    .line 2459
    const/16 v6, 0x7533

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v6, v0, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2460
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v15, v6, v7}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2463
    const/4 v6, 0x0

    iput-object v6, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2464
    if-eqz p6, :cond_53

    .line 2465
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2467
    :cond_53
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2468
    const/4 v6, 0x3

    goto/16 :goto_e

    .line 2470
    :cond_54
    if-nez v13, :cond_56

    const/high16 v6, 0x20000

    and-int v6, v6, v23

    if-eqz v6, :cond_56

    .line 2475
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v40

    .line 2476
    if-eqz v40, :cond_56

    .line 2477
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v0

    .line 2478
    .restart local v38    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2479
    const/16 v6, 0x7533

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v6, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2480
    move-object/from16 v0, v40

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 2481
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v15, v6, v7}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2482
    const/4 v6, 0x0

    iput-object v6, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2483
    if-eqz p6, :cond_55

    .line 2484
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2486
    :cond_55
    const/4 v6, 0x3

    goto/16 :goto_e

    .line 2492
    .end local v38    # "task":Lcom/android/server/am/TaskRecord;
    :cond_56
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_19

    .line 2496
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "sourceTask":Lcom/android/server/am/TaskRecord;
    .end local v42    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_57
    if-eqz p8, :cond_5d

    .line 2499
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 2500
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted Lock Task Mode violation r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    const/4 v6, 0x5

    goto/16 :goto_e

    .line 2503
    :cond_58
    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2504
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v11, "inTaskToFront"

    move-object v6, v3

    move-object/from16 v7, p8

    move v8, v5

    move-object/from16 v9, p7

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2509
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v40

    .line 2510
    if-eqz v40, :cond_5b

    move-object/from16 v0, v40

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    move-object/from16 v0, v40

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, v7, :cond_5b

    .line 2511
    const/high16 v6, 0x20000000

    and-int v6, v6, v23

    if-nez v6, :cond_59

    if-nez v26, :cond_59

    if-eqz v25, :cond_5b

    .line 2513
    :cond_59
    const/16 v6, 0x7533

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v40

    invoke-static {v6, v0, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2514
    and-int/lit8 v6, p5, 0x1

    if-eqz v6, :cond_5a

    .line 2518
    const/4 v6, 0x1

    goto/16 :goto_e

    .line 2520
    :cond_5a
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v15, v6, v7}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2521
    const/4 v6, 0x3

    goto/16 :goto_e

    .line 2525
    :cond_5b
    if-nez v13, :cond_5c

    .line 2528
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2529
    const/4 v6, 0x2

    goto/16 :goto_e

    .line 2532
    :cond_5c
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_19

    .line 2540
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_5d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2541
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    const-string v6, "addingToTopTask"

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2542
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v34

    .line 2543
    .local v34, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v34, :cond_5e

    move-object/from16 v0, v34

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_1a
    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2545
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    goto/16 :goto_19

    .line 2543
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v6, v3

    move-object/from16 v9, v20

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v6

    goto :goto_1a

    .line 1958
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startBackgroundUserLocked(ILcom/android/server/am/UserState;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 3586
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3587
    return-void
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 938
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    .line 939
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    .line 946
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v2, :cond_0

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 952
    :cond_0
    return-void
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1437
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    .line 1440
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1442
    if-eqz v10, :cond_2

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 1444
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "android"

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1450
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 1453
    :cond_1
    invoke-virtual {p0, p1, v10, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    :goto_0
    return-void

    .line 1455
    :catch_0
    move-exception v11

    .line 1456
    .local v11, "e":Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when starting activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1465
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->theme:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->nextActivityTheme:I

    .line 1466
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v5, "activity"

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move v7, v4

    move v8, v4

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    goto :goto_0
.end method

.method switchUserLocked(ILcom/android/server/am/UserState;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 3545
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 3546
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 3547
    .local v2, "restoreStackId":I
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 3549
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3550
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3551
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3552
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_1

    .line 3553
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 3554
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    .line 3555
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 3556
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_0

    .line 3557
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 3552
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3550
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3562
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3563
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_3

    .line 3564
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 3566
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    .line 3567
    .local v1, "homeInFront":Z
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3568
    const-string v7, "switchUserOnHomeDisplay"

    invoke-virtual {p0, v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;)V

    .line 3569
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 3570
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_4

    .line 3571
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 3577
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    :goto_2
    return v1

    .line 3575
    :cond_5
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "switchUserOnOtherDisplay"

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 832
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 833
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 834
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    move-object v5, v1

    .line 849
    :cond_0
    :goto_0
    return-object v5

    .line 839
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v6, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 840
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 841
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 842
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 843
    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 844
    if-eqz v1, :cond_2

    move-object v5, v1

    .line 845
    goto :goto_0

    .line 840
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2803
    const/4 v1, 0x0

    .line 2804
    .local v1, "fgApp":Lcom/android/server/am/ProcessRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 2805
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 2806
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 2807
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2808
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2809
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1

    .line 2810
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2804
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2811
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_0

    .line 2812
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2

    .line 2806
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2821
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v1, :cond_4

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v6, :cond_4

    .line 2824
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 2825
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 2827
    :cond_4
    return-void
.end method

.method validateTopActivitiesLocked()V
    .locals 11

    .prologue
    .line 3633
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_8

    .line 3634
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3635
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "stackNdx":I
    :goto_1
    if-ltz v5, :cond_7

    .line 3636
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 3637
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3638
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_1

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3639
    .local v7, "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3640
    if-nez v2, :cond_2

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "validateTop...: null top activity, stack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3635
    :cond_0
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 3638
    .end local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_1
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    .line 3643
    .restart local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_2
    iget-object v1, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 3644
    .local v1, "pausing":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_3

    if-ne v1, v2, :cond_3

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "validateTop...: top stack has pausing activity r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    :cond_3
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_0

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_0

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "validateTop...: activity in front not resumed r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3652
    .end local v1    # "pausing":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v3, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3653
    .local v3, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_5

    if-ne v3, v2, :cond_5

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "validateTop...: back stack has resumed activity r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    :cond_5
    if-eqz v2, :cond_0

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_6

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_0

    :cond_6
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "validateTop...: activity in back resumed r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3633
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "resumed":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 3661
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_8
    return-void
.end method

.method setPackageManager(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFlymeRealPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method
