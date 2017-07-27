.class final Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
.super Landroid/hardware/fingerprint/IFingerprintService$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FingerprintServiceWrapper"
.end annotation


# static fields
.field private static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    .prologue
    .line 930
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "x1"    # Lcom/android/server/fingerprint/FingerprintService$1;

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method

.method private isRestricted()Z
    .locals 3

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v2, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 976
    .local v0, "restricted":Z
    :goto_0
    return v0

    .line 975
    .end local v0    # "restricted":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1160
    return-void
.end method

.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .locals 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 994
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v3, 0x1

    move-object/from16 v0, p7

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;Z)Z
    invoke-static {v2, v0, v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1500(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 995
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticate(): reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :goto_0
    return-void

    .line 1001
    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v7

    .line 1003
    .local v7, "effectiveGroupId":I
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v10

    .line 1004
    .local v10, "restricted":Z
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v12, v2, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;

    move-object v3, p0

    move-wide/from16 v4, p2

    move-object v6, p1

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    invoke-direct/range {v2 .. v11}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;JLandroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    invoke-virtual {v12, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;Z)Z
    invoke-static {v0, p2, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1500(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1025
    :goto_0
    return-void

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 988
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1128
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump Fingerprint from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1142
    :goto_0
    return-void

    .line 1136
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1138
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/android/server/fingerprint/FingerprintService;->access$1700(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V
    .locals 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I

    .prologue
    .line 948
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v2, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 949
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 951
    .local v11, "limit":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 952
    .local v9, "callingUid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 953
    .local v12, "userId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, v12}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    .line 954
    .local v10, "enrolled":I
    if-lt v10, v11, :cond_0

    .line 955
    const-string v1, "FingerprintService"

    const-string v2, "Too many fingerprints registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :goto_0
    return-void

    .line 958
    :cond_0
    move-object/from16 v0, p2

    array-length v1, v0

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 962
    .local v4, "cryptoClone":[B
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v5

    .line 964
    .local v5, "effectiveGroupId":I
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v8

    .line 965
    .local v8, "restricted":Z
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v13, v1, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    invoke-virtual {v13, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public extCmd(Landroid/os/IBinder;IIILjava/lang/String;)I
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "groupId"    # I
    .param p3, "cmd"    # I
    .param p4, "param1"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 1166
    const-string v0, "FingerprintService"

    const-string v1, "extCmd()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v3

    .line 1172
    .local v3, "effectiveGroupId":I
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;III)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1178
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .locals 2
    .param p1, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getAuthenticatorId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;Z)Z
    invoke-static {v1, p2, v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1500(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1079
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1087
    :goto_0
    return-object v1

    .line 1081
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v0

    .line 1083
    .local v0, "effectiveUserId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mConfigNeedFake:Z
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1000(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mRootUserId:I
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mRootUserId:I
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v0

    .line 1087
    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public hasEnrolledFingerprints(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1092
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;Z)Z
    invoke-static {v2, p2, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1500(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1102
    :goto_0
    return v1

    .line 1096
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v0

    .line 1098
    .local v0, "effectiveUserId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mConfigNeedFake:Z
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1000(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mRootUserId:I
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1099
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mRootUserId:I
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v0

    .line 1102
    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isHardwareDetected(JLjava/lang/String;)Z
    .locals 6
    .param p1, "deviceId"    # J
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1047
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;Z)Z
    invoke-static {v1, p3, v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1500(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public postEnroll(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public preEnroll(Landroid/os/IBinder;)J
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->startPreEnroll(Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1031
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v6

    .line 1035
    .local v6, "restricted":Z
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p3}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v4

    .line 1036
    .local v4, "effectiveGroupId":I
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1043
    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .locals 4
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 1055
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1061
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v2, p2}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v1

    .line 1062
    .local v1, "tempId":I
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mConfigNeedFake:Z
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1000(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mRootUserId:I
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1063
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mRootUserId:I
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v1

    .line 1065
    :cond_0
    move v0, v1

    .line 1067
    .local v0, "effectiveGroupId":I
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v2, v2, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;

    invoke-direct {v3, p0, p1, v0, p3}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1074
    return-void
.end method

.method public resetTimeout([B)V
    .locals 2
    .param p1, "token"    # [B

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1148
    return-void
.end method
