.class Landroid/app/ActivityManagerProxy;
.super Ljava/lang/Object;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 2642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2643
    iput-object p1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    .line 2644
    return-void
.end method


# virtual methods
.method public activityDestroyed(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3196
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3197
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3198
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3199
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3200
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3203
    return-void
.end method

.method public activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "stopProfiling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3130
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3131
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3133
    if-eqz p2, :cond_1

    .line 3134
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3135
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3139
    :goto_0
    if-eqz p3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3140
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3141
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3144
    return-void

    .line 3137
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public activityPaused(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3159
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3160
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3162
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3163
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3166
    return-void
.end method

.method public activityResumed(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3148
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3149
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3151
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3152
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3155
    return-void
.end method

.method public activitySlept(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3185
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3186
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3188
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3192
    return-void
.end method

.method public activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3171
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3172
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3173
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3174
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3175
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 3176
    const/4 v2, 0x0

    invoke-static {p4, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3177
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3178
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3181
    return-void
.end method

.method public addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Landroid/app/ActivityManager$TaskDescription;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3254
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3255
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3256
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3257
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3258
    invoke-virtual {p3, v0, v5}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3259
    invoke-virtual {p4, v0, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3260
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xea

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3261
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3262
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3263
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3265
    return v2
.end method

.method public addPackageDependency(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4619
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4620
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4621
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4622
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4623
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4626
    return-void
.end method

.method public appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3644
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3645
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3647
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3648
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3651
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2648
    iget-object v0, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public attachApplication(Landroid/app/IApplicationThread;)V
    .locals 5
    .param p1, "app"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3118
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3119
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3120
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3121
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3122
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3125
    return-void
.end method

.method public backgroundResourcesReleased(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5842
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5843
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5844
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5845
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5846
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5849
    return-void
.end method

.method public backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3883
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3884
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3885
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3886
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3887
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3888
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3890
    return-void
.end method

.method public bindBackupAgent(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "backupRestoreMode"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3859
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3860
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3861
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3862
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3863
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3864
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3865
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3866
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3867
    .local v2, "success":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3869
    return v2
.end method

.method public bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3766
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3767
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3768
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3769
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3770
    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3771
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3772
    invoke-interface {p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3773
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3774
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3775
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3776
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3777
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3778
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3779
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3781
    return v2

    .line 3768
    .end local v2    # "res":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bootAnimationComplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5878
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5879
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5880
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xee

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5881
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5884
    return-void
.end method

.method public broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p5, "resultCode"    # I
    .param p6, "resultData"    # Ljava/lang/String;
    .param p7, "map"    # Landroid/os/Bundle;
    .param p8, "requiredPermissions"    # [Ljava/lang/String;
    .param p9, "appOp"    # I
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "serialized"    # Z
    .param p12, "sticky"    # Z
    .param p13, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3062
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3063
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3064
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3065
    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3066
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3067
    if-eqz p4, :cond_1

    invoke-interface {p4}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3068
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3069
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3070
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3071
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3072
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3073
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3074
    if-eqz p11, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3075
    if-eqz p12, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3076
    move/from16 v0, p13

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3077
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3078
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3079
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3080
    .local v3, "res":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3082
    return v3

    .line 3064
    .end local v3    # "res":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 3067
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 3074
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 3075
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public cancelIntentSender(Landroid/content/IIntentSender;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4049
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4050
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4051
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4052
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4053
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4056
    return-void
.end method

.method public checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4912
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4913
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4914
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4915
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4916
    invoke-virtual {p3, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4917
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4918
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4919
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4920
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4921
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4922
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4924
    return v2
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4139
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4140
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4141
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4142
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4143
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4144
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4145
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4146
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4147
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4149
    return v2
.end method

.method public checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4154
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4155
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4156
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4157
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4158
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4159
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4160
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4162
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4163
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4165
    return v2
.end method

.method public checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "userId"    # I
    .param p6, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4185
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4186
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4187
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4188
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4189
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4190
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4191
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4192
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4193
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4194
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4195
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4196
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4198
    return v2
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4170
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4171
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4173
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/content/pm/IPackageDataObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4174
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4175
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4176
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4177
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4178
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4180
    return v2

    .line 4173
    .end local v2    # "res":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clearPendingBackup()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3874
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3875
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3876
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3879
    return-void
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4644
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4645
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4647
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4648
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4651
    return-void
.end method

.method public convertFromTranslucent(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4730
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4731
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4733
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xae

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4734
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4735
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4736
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4738
    return v2
.end method

.method public convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4744
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4745
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4746
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4747
    if-nez p2, :cond_0

    .line 4748
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4753
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xaf

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4755
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 4756
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4758
    return v2

    .line 4750
    .end local v2    # "res":Z
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4751
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 4755
    goto :goto_1
.end method

.method public crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4831
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4832
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4834
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4835
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4836
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4837
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4838
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4841
    return-void
.end method

.method public createStackOnDisplay(I)Landroid/app/IActivityContainer;
    .locals 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5609
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5610
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5611
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5612
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x11a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5613
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5614
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5616
    .local v3, "result":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5617
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v2

    .line 5621
    .local v2, "res":Landroid/app/IActivityContainer;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5623
    return-object v2

    .line 5619
    .end local v2    # "res":Landroid/app/IActivityContainer;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "res":Landroid/app/IActivityContainer;
    goto :goto_0
.end method

.method public createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;
    .locals 7
    .param p1, "parentActivityToken"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/app/IActivityContainerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5576
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5577
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5578
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5579
    if-nez p2, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5580
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5581
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5582
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5584
    .local v3, "result":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 5585
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v2

    .line 5589
    .local v2, "res":Landroid/app/IActivityContainer;
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5591
    return-object v2

    .line 5579
    .end local v2    # "res":Landroid/app/IActivityContainer;
    .end local v3    # "result":I
    :cond_0
    invoke-interface {p2}, Landroid/app/IActivityContainerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_0

    .line 5587
    .restart local v3    # "result":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "res":Landroid/app/IActivityContainer;
    goto :goto_1
.end method

.method public deleteActivityContainer(Landroid/app/IActivityContainer;)V
    .locals 5
    .param p1, "activityContainer"    # Landroid/app/IActivityContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5597
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5598
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5599
    invoke-interface {p1}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5600
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xba

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5604
    return-void
.end method

.method public dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 7
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "managed"    # Z
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4930
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4931
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4932
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4933
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4934
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4935
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4936
    if-eqz p5, :cond_1

    .line 4937
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4938
    invoke-virtual {p5, v0, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4942
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x78

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4943
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4944
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 4945
    .local v2, "res":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4947
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v3, v5

    .line 4934
    goto :goto_0

    .line 4940
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v2, v5

    .line 4944
    goto :goto_2
.end method

.method public dumpHeapFinished(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5918
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5919
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5920
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5921
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x121

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5922
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5925
    return-void
.end method

.method public enterSafeMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4374
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4375
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4377
    return-void
.end method

.method public finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "finishTask"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2933
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2934
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2935
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2936
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2937
    if-eqz p3, :cond_0

    .line 2938
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2939
    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2943
    :goto_0
    if-eqz p4, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2944
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0xb

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2945
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2946
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 2947
    .local v2, "res":Z
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2949
    return v2

    .line 2941
    .end local v2    # "res":Z
    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v3, v5

    .line 2943
    goto :goto_1

    :cond_2
    move v2, v5

    .line 2946
    goto :goto_2
.end method

.method public finishActivityAffinity(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2966
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2967
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2969
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x95

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2970
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2971
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2972
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2973
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2974
    return v2
.end method

.method public finishHeavyWeightApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4719
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4720
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4721
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4722
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4725
    return-void
.end method

.method public finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "target"    # Landroid/app/IApplicationThread;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3929
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3930
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3931
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3932
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3933
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3934
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3935
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3938
    return-void

    .line 3931
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "map"    # Landroid/os/Bundle;
    .param p5, "abortBroadcast"    # Z
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 3101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3102
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3103
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3105
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3106
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3107
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3108
    if-eqz p5, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3109
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3110
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3111
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3114
    return-void

    .line 3108
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2954
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2955
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2956
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2957
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2958
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2959
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2960
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2963
    return-void
.end method

.method public finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 5
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2978
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2979
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2980
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2981
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2982
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2984
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2985
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4523
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4524
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4526
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4527
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4531
    return-void
.end method

.method public getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3989
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3990
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3991
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3992
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3993
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3994
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 3995
    .local v2, "res":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3997
    return-object v2
.end method

.method public getActivityDisplayId(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5630
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5631
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5632
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5633
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5634
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5635
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5636
    .local v1, "displayId":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5637
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5638
    return v1
.end method

.method public getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4763
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 4764
    .local v3, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4765
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4766
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xdc

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4767
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 4768
    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 4769
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 4770
    .local v2, "options":Landroid/app/ActivityOptions;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4771
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4772
    return-object v2

    .line 4769
    .end local v2    # "options":Landroid/app/ActivityOptions;
    :cond_0
    new-instance v2, Landroid/app/ActivityOptions;

    invoke-direct {v2, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public getAllStackInfos()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3472
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3473
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3474
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xab

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3475
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3476
    sget-object v3, Landroid/app/ActivityManager$StackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3477
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3478
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3479
    return-object v1
.end method

.method public getAppTaskThumbnailSize()Landroid/graphics/Point;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3269
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3270
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3271
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xeb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3272
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3273
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 3274
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3276
    return-object v2
.end method

.method public getAppTasks(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/IAppTask;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3232
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 3233
    .local v3, "reply":Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3234
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3235
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0xdd

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3236
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 3237
    const/4 v2, 0x0

    .line 3238
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IAppTask;>;"
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3239
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 3240
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IAppTask;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3241
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IAppTask;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 3242
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAppTask$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppTask;

    move-result-object v4

    .line 3243
    .local v4, "task":Landroid/app/IAppTask;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3244
    add-int/lit8 v0, v0, -0x1

    .line 3245
    goto :goto_0

    .line 3247
    .end local v4    # "task":Landroid/app/IAppTask;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3248
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 3249
    return-object v2
.end method

.method public getAssistContextExtras(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "requestType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5414
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5415
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5416
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5417
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5418
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5419
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 5420
    .local v2, "res":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5422
    return-object v2
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3220
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3221
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3223
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3225
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 3226
    .local v2, "res":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3228
    return-object v2
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3207
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3208
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3210
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3212
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3213
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3215
    return-object v2
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3942
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3943
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3944
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3945
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3946
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 3947
    .local v2, "res":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3949
    return-object v2
.end method

.method public getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3565
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3566
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3567
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3568
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3569
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3570
    if-eqz p4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3571
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x1d

    invoke-interface {v4, v6, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3572
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3573
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3574
    .local v3, "res":I
    const/4 v0, 0x0

    .line 3575
    .local v0, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v3, :cond_0

    .line 3576
    sget-object v4, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    check-cast v0, Landroid/app/IActivityManager$ContentProviderHolder;

    .line 3578
    .restart local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3579
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3580
    return-object v0

    .line 3567
    .end local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v3    # "res":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move v4, v5

    .line 3570
    goto :goto_1
.end method

.method public getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3585
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3586
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3587
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3588
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3589
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3590
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3591
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3592
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3593
    .local v3, "res":I
    const/4 v0, 0x0

    .line 3594
    .local v0, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v3, :cond_0

    .line 3595
    sget-object v4, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    check-cast v0, Landroid/app/IActivityManager$ContentProviderHolder;

    .line 3597
    .restart local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3598
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3599
    return-object v0
.end method

.method public getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5092
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5093
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5094
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5095
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x91

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5096
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5097
    sget-object v3, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 5098
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5100
    return-object v2
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4549
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4550
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4551
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x54

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4552
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4553
    sget-object v3, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ConfigurationInfo;

    .line 4554
    .local v2, "res":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4556
    return-object v2
.end method

.method public getFocusedStackId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3527
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3528
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3529
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3530
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3531
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3532
    .local v1, "focusedStackId":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3533
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3534
    return v1
.end method

.method public getFrontActivityScreenCompatMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4978
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4979
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4980
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4981
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4982
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4983
    .local v1, "mode":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4985
    return v1
.end method

.method public getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5214
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5215
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5216
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5217
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5218
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5219
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    move-object v2, v3

    .line 5221
    .local v2, "res":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5223
    return-object v2

    .line 5219
    .end local v2    # "res":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;
    .locals 7
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "resultWho"    # Ljava/lang/String;
    .param p5, "requestCode"    # I
    .param p6, "intents"    # [Landroid/content/Intent;
    .param p7, "resolvedTypes"    # [Ljava/lang/String;
    .param p8, "flags"    # I
    .param p9, "options"    # Landroid/os/Bundle;
    .param p10, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4017
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4018
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4019
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4020
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4021
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4022
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4023
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4024
    if-eqz p6, :cond_0

    .line 4025
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4026
    const/4 v4, 0x0

    invoke-virtual {v1, p6, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4027
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4031
    :goto_0
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 4032
    if-eqz p9, :cond_1

    .line 4033
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4034
    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4038
    :goto_1
    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4039
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4040
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4041
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v3

    .line 4043
    .local v3, "res":Landroid/content/IIntentSender;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4044
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4045
    return-object v3

    .line 4029
    .end local v3    # "res":Landroid/content/IIntentSender;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 4036
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5353
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5354
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5356
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5357
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5358
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5359
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5361
    return-object v2
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5340
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5341
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5343
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x96

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5344
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5345
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5346
    .local v2, "result":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5348
    return v2
.end method

.method public getLockTaskModeState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5714
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5715
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5716
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5717
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5718
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5719
    .local v1, "lockTaskModeState":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5720
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5721
    return v1
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 5
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4291
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4292
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4293
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4295
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 4296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4298
    return-void
.end method

.method public getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 5
    .param p1, "outInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4537
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4538
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4539
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4540
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4541
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 4542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4544
    return-void
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 5026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5027
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5028
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5029
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5030
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    invoke-interface {v3, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5031
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5032
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 5033
    .local v0, "ask":Z
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5035
    return v0
.end method

.method public getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4058
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4059
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4060
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4061
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4062
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4063
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4064
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4065
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4067
    return-object v2
.end method

.method public getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4002
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4003
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4004
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4005
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4006
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4007
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4008
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4010
    return-object v2
.end method

.method public getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5970
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5971
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5972
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5973
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5974
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x126

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5975
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5976
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5977
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5979
    return v2
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5001
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5002
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5003
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5004
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5005
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5006
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5007
    .local v1, "mode":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5009
    return v1
.end method

.method public getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "incoming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4264
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4265
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4266
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4267
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4268
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb6

    invoke-interface {v3, v5, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4269
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4270
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 4272
    .local v1, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4273
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4274
    return-object v1

    .end local v1    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_0
    move v3, v4

    .line 4267
    goto :goto_0
.end method

.method public getProcessLimit()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4114
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4115
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4116
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4117
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4118
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4119
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4121
    return v2
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 6
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4656
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4657
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4658
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4659
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4661
    sget-object v3, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Debug$MemoryInfo;

    .line 4662
    .local v2, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4664
    return-object v2
.end method

.method public getProcessPss([I)[J
    .locals 6
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5255
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5256
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5258
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x89

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5259
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5260
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 5261
    .local v2, "res":[J
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5263
    return-object v2
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3362
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3363
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3364
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3365
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3366
    sget-object v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3368
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3369
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3370
    return-object v1
.end method

.method public getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4845
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4846
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4847
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4848
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4849
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4850
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4851
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4852
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4854
    return-object v2
.end method

.method public getRecentTasks(III)Ljava/util/List;
    .locals 6
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3306
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3307
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3309
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3310
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3311
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3312
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3313
    sget-object v3, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3315
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3316
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3317
    return-object v1
.end method

.method public getRequestedOrientation(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3976
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3977
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3978
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3979
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3980
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3981
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3982
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3984
    return v2
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3375
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3376
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3377
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3378
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3379
    sget-object v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3381
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3382
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3383
    return-object v1
.end method

.method public getRunningExternalApplications()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3388
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3389
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3390
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3391
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3392
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3394
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3395
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3396
    return-object v1
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3681
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3682
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3683
    invoke-virtual {p1, v0, v5}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3684
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3685
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3686
    invoke-static {v1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3687
    .local v2, "res":Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3689
    return-object v2
.end method

.method public getRunningUserIds()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5119
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5120
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5121
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5122
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5123
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 5124
    .local v2, "result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5126
    return-object v2
.end method

.method public getServices(II)Ljava/util/List;
    .locals 8
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3337
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 3338
    .local v4, "reply":Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3339
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3340
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3341
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x51

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3342
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 3343
    const/4 v3, 0x0

    .line 3344
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3345
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 3346
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3347
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 3348
    sget-object v5, Landroid/app/ActivityManager$RunningServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 3351
    .local v2, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3352
    add-int/lit8 v0, v0, -0x1

    .line 3353
    goto :goto_0

    .line 3355
    .end local v2    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3356
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 3357
    return-object v3
.end method

.method public getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .locals 7
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3485
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3486
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3488
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xad

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3489
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3490
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3491
    .local v3, "res":I
    const/4 v1, 0x0

    .line 3492
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    if-eqz v3, :cond_0

    .line 3493
    sget-object v4, Landroid/app/ActivityManager$StackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Landroid/app/ActivityManager$StackInfo;
    check-cast v1, Landroid/app/ActivityManager$StackInfo;

    .line 3495
    .restart local v1    # "info":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3496
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3497
    return-object v1
.end method

.method public getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5229
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5230
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5231
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5232
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5233
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5234
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5235
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5236
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5238
    return-object v2
.end method

.method public getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5781
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5782
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5783
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5784
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xef

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5785
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5786
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 5787
    .local v1, "icon":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5788
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5789
    return-object v1

    .line 5786
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v1, v3

    goto :goto_0
.end method

.method public getTaskForActivity(Landroid/os/IBinder;Z)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyRoot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3551
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3552
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3553
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3554
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3555
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1b

    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3556
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3557
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3558
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3560
    return v2

    .end local v2    # "res":I
    :cond_0
    move v3, v4

    .line 3554
    goto :goto_0
.end method

.method public getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3321
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3322
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3324
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3325
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3326
    const/4 v2, 0x0

    .line 3327
    .local v2, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3328
    sget-object v3, Landroid/app/ActivityManager$TaskThumbnail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    check-cast v2, Landroid/app/ActivityManager$TaskThumbnail;

    .line 3330
    .restart local v2    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3332
    return-object v2
.end method

.method public getTasks(II)Ljava/util/List;
    .locals 8
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3281
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 3282
    .local v4, "reply":Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3283
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3284
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3285
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3286
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 3287
    const/4 v3, 0x0

    .line 3288
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3289
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 3290
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3291
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 3292
    sget-object v5, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3295
    .local v2, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3296
    add-int/lit8 v0, v0, -0x1

    .line 3297
    goto :goto_0

    .line 3299
    .end local v2    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3300
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 3301
    return-object v3
.end method

.method public getUidForIntentSender(Landroid/content/IIntentSender;)I
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4071
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4072
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4073
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4074
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4075
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4076
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4077
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4079
    return v2
.end method

.method public grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "mode"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4203
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4204
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4205
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4206
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4207
    invoke-virtual {p3, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4208
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4209
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4210
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4214
    return-void
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 5
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "mode"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4874
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4875
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4876
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4877
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4878
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4879
    invoke-virtual {p4, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4880
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4881
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4882
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4883
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4884
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4887
    return-void
.end method

.method public handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4444
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4445
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4447
    invoke-virtual {p2, v0, v4}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4448
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4449
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4452
    return-void
.end method

.method public handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "violationMask"    # I
    .param p3, "info"    # Landroid/os/StrictMode$ViolationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4477
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4478
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4480
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4481
    invoke-virtual {p3, v0, v4}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4482
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4483
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4486
    return-void
.end method

.method public handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z
    .locals 7
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "system"    # Z
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4458
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4459
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4461
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4462
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4463
    invoke-virtual {p4, v0, v5}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4464
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x66

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4465
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4466
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 4467
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4469
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v3, v5

    .line 4462
    goto :goto_0

    :cond_1
    move v2, v5

    .line 4466
    goto :goto_1
.end method

.method public handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "requireFull"    # Z
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4084
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4085
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4086
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4087
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4088
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4089
    if-eqz p4, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4090
    if-eqz p5, :cond_1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4091
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4092
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4093
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5e

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4094
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4095
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4096
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4098
    return v2

    .end local v2    # "res":I
    :cond_0
    move v3, v5

    .line 4089
    goto :goto_0

    :cond_1
    move v4, v5

    .line 4090
    goto :goto_1
.end method

.method public hang(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "allowRestart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5521
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5522
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5524
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5525
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa7

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5529
    return-void

    :cond_0
    move v2, v3

    .line 5524
    goto :goto_0
.end method

.method public inputDispatchingTimedOut(IZLjava/lang/String;)J
    .locals 7
    .param p1, "pid"    # I
    .param p2, "aboveSystem"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 5398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5399
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5400
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5402
    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5403
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5404
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x9f

    invoke-interface {v4, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5406
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-long v2, v4

    .line 5407
    .local v2, "res":J
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5409
    return-wide v2

    .end local v2    # "res":J
    :cond_0
    move v4, v5

    .line 5402
    goto :goto_0
.end method

.method public isAssistDataAllowedOnCurrentActivity()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5482
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5483
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5484
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5485
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5486
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5487
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5489
    return v2
.end method

.method public isBackgroundVisibleBehind(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5828
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5829
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5830
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5831
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5832
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5833
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 5834
    .local v2, "visible":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5836
    return v2
.end method

.method public isImmersive(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4791
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4792
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4793
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4794
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x6f

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4795
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4796
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 4797
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4799
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v2, v3

    .line 4796
    goto :goto_0
.end method

.method public isInHomeStack(I)Z
    .locals 5
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3502
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3503
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3504
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3505
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd5

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3506
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3507
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 3508
    .local v1, "isInHomeStack":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3509
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3510
    return v1
.end method

.method public isInLockTaskMode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 5700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5701
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5702
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5703
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xd9

    invoke-interface {v4, v5, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5704
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5705
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 5706
    .local v1, "isInLockTaskMode":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5707
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5708
    return v1

    .end local v1    # "isInLockTaskMode":Z
    :cond_0
    move v1, v3

    .line 5705
    goto :goto_0
.end method

.method public isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5201
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5202
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5203
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5204
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x98

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5206
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5207
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5209
    return v2
.end method

.method public isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5188
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5189
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5190
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5191
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x87

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5192
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5193
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5194
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5195
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5196
    return v2
.end method

.method public isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 6001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6002
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6003
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6004
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6005
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x12e

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6006
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6007
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6008
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6010
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public isTopActivityImmersive()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4818
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4819
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4820
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x71

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4821
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4822
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 4823
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4825
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v2, v3

    .line 4822
    goto :goto_0
.end method

.method public isTopOfTask(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4804
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4805
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4806
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4807
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe1

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4808
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4809
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 4810
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4812
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v2, v3

    .line 4809
    goto :goto_0
.end method

.method public isUserAMonkey()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4696
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4697
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4698
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4700
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4701
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4703
    return v2
.end method

.method public isUserRunning(IZ)Z
    .locals 7
    .param p1, "userid"    # I
    .param p2, "orStopping"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5105
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5106
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5108
    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5109
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x7a

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5111
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 5112
    .local v2, "result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5114
    return v2

    .end local v2    # "result":Z
    :cond_0
    move v3, v5

    .line 5108
    goto :goto_0

    :cond_1
    move v2, v5

    .line 5111
    goto :goto_1
.end method

.method public keyguardGoingAway(ZZ)V
    .locals 5
    .param p1, "disableWindowAnimations"    # Z
    .param p2, "keyguardGoingToNotificationShade"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5291
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5292
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5293
    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5294
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5295
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x129

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5299
    return-void

    :cond_0
    move v2, v4

    .line 5293
    goto :goto_0

    :cond_1
    move v3, v4

    .line 5294
    goto :goto_1
.end method

.method public keyguardWaitingForActivityDrawn()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5280
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5281
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5282
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5283
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5286
    return-void
.end method

.method public killAllBackgroundProcesses()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4513
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4514
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4515
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4516
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4519
    return-void
.end method

.method public killApplicationProcess(Ljava/lang/String;I)V
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4669
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4670
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4671
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4672
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4673
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4674
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4677
    return-void
.end method

.method public killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appid"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4631
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4632
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4633
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4634
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4635
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4636
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4637
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4640
    return-void
.end method

.method public killBackgroundProcesses(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4501
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4502
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4504
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4505
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4506
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4509
    return-void
.end method

.method public killPids([ILjava/lang/String;Z)Z
    .locals 7
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "secure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4411
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4412
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4414
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4415
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4416
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x50

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4418
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 4419
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4421
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v3, v5

    .line 4415
    goto :goto_0

    :cond_1
    move v2, v5

    .line 4418
    goto :goto_1
.end method

.method public killProcessesBelowForeground(Ljava/lang/String;)Z
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4426
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4427
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4428
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4429
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x90

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4430
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4431
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4433
    return v2
.end method

.method public killUid(IILjava/lang/String;)V
    .locals 5
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5508
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5509
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5510
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5511
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5512
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5513
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5517
    return-void
.end method

.method public launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestType"    # I
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "userHandle"    # I
    .param p5, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5465
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5466
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5467
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5468
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5469
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5470
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5471
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 5472
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5473
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5474
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5475
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5477
    return v2
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3419
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3420
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3422
    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3423
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x4b

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3425
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 3426
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3428
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v3, v5

    .line 3422
    goto :goto_0

    :cond_1
    move v2, v5

    .line 3425
    goto :goto_1
.end method

.method public moveTaskBackwards(I)V
    .locals 5
    .param p1, "task"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3433
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3434
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3435
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3436
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3437
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3440
    return-void
.end method

.method public moveTaskToFront(IILandroid/os/Bundle;)V
    .locals 5
    .param p1, "task"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3401
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3402
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3404
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3405
    if-eqz p3, :cond_0

    .line 3406
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3407
    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3411
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3412
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3415
    return-void

    .line 3409
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public moveTaskToStack(IIZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3445
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3446
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3448
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3449
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3450
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa9

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3451
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3454
    return-void

    :cond_0
    move v2, v3

    .line 3449
    goto :goto_0
.end method

.method public navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "target"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5319
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5320
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5322
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5323
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5324
    if-eqz p4, :cond_0

    .line 5325
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5326
    invoke-virtual {p4, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5330
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x93

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5331
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5332
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 5333
    .local v2, "result":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5335
    return v2

    .line 5328
    .end local v2    # "result":Z
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 5332
    goto :goto_1
.end method

.method public newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4860
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4861
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4862
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4863
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4864
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4865
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4866
    .local v2, "res":Landroid/os/IBinder;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4868
    return-object v2
.end method

.method public noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "sourceUid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4402
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4403
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4404
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4405
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4406
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x125

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4408
    return-void
.end method

.method public noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "sourceUid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4392
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4393
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4394
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4395
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4396
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x124

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4398
    return-void
.end method

.method public noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "sourceUid"    # I
    .param p3, "sourcePkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4381
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4382
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4383
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4384
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4385
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4386
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x44

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4388
    return-void
.end method

.method public notifyActivityDrawn(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5544
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5545
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5546
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5547
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5548
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5551
    return-void
.end method

.method public notifyCleartextNetwork(I[B)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "firstPacket"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5889
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5890
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5891
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5892
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5893
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x119

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5894
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5896
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5897
    return-void
.end method

.method public notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5866
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5867
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5868
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5869
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5870
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5873
    return-void
.end method

.method public notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5854
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5855
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5856
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5857
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5858
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5861
    return-void
.end method

.method public openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4312
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4313
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4314
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4315
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4316
    const/4 v1, 0x0

    .line 4317
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4318
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 4320
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4321
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4322
    return-object v1
.end method

.method public overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enterAnim"    # I
    .param p4, "exitAnim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4682
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4683
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4684
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4685
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4686
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4687
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4688
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4689
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4692
    return-void
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3843
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3844
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3845
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3846
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3847
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3848
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3849
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3850
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3851
    .local v0, "binder":Landroid/os/IBinder;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3852
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3853
    return-object v0
.end method

.method public performIdleMaintenance()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5565
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5566
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5567
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5568
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5571
    return-void
.end method

.method public profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z
    .locals 7
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "start"    # Z
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "profileType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4563
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4564
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4565
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4566
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4567
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4568
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4569
    if-eqz p4, :cond_1

    .line 4570
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4571
    invoke-virtual {p4, v0, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4575
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x56

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4576
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4577
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 4578
    .local v2, "res":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4580
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v3, v5

    .line 4567
    goto :goto_0

    .line 4573
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v2, v5

    .line 4577
    goto :goto_2
.end method

.method public publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List",
            "<",
            "Landroid/app/IActivityManager$ContentProviderHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3604
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3605
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3606
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3607
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3608
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3609
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3610
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3613
    return-void

    .line 3607
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3800
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3801
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3802
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3803
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3804
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3805
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3806
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3809
    return-void
.end method

.method public refContentProvider(Landroid/os/IBinder;II)Z
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stable"    # I
    .param p3, "unstable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3617
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3618
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3620
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3621
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3622
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3623
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3624
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3625
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3627
    return v2
.end method

.method public registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IMiuiActivityObserver;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6017
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6018
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6019
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IMiuiActivityObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6020
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6021
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e9

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6022
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6024
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6025
    return-void

    .line 6019
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5144
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5145
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5146
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IProcessObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5147
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5148
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5151
    return-void

    .line 5146
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/content/IIntentReceiver;
    .param p4, "filter"    # Landroid/content/IntentFilter;
    .param p5, "perm"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3025
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 3026
    .local v3, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3027
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3028
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3029
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3030
    invoke-virtual {p4, v0, v6}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3031
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3032
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3033
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3034
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 3035
    const/4 v2, 0x0

    .line 3036
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3037
    .local v1, "haveIntent":I
    if-eqz v1, :cond_1

    .line 3038
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "intent":Landroid/content/Intent;
    check-cast v2, Landroid/content/Intent;

    .line 3040
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 3041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3042
    return-object v2

    .end local v1    # "haveIntent":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    move-object v4, v5

    .line 3027
    goto :goto_0
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/app/ITaskStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3540
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3541
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3542
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3543
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3544
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3547
    return-void
.end method

.method public registerUidObserver(Landroid/app/IUidObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5166
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5167
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5168
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IUidObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5169
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5173
    return-void

    .line 5168
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5366
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5367
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5368
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IUserSwitchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5369
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5370
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5373
    return-void

    .line 5368
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public releaseActivityInstance(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2988
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2989
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2990
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2991
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xec

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2993
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2994
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2996
    return v2
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;II)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4249
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4250
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4251
    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4252
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4253
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4254
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb5

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4255
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4258
    return-void
.end method

.method public releaseSomeActivities(Landroid/app/IApplicationThread;)V
    .locals 5
    .param p1, "app"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3000
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3001
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3002
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3003
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xed

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3004
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3007
    return-void
.end method

.method public removeContentProvider(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3655
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3656
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3657
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3658
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3659
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3663
    return-void

    :cond_0
    move v2, v3

    .line 3658
    goto :goto_0
.end method

.method public removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3667
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3668
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3670
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3671
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3672
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3675
    return-void
.end method

.method public removeTask(I)Z
    .locals 5
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5131
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5132
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5134
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5135
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5136
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5137
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5139
    return v2
.end method

.method public reportActivityFullyDrawn(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5533
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5534
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5536
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5537
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5540
    return-void
.end method

.method public reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "structure"    # Landroid/app/assist/AssistStructure;
    .param p4, "content"    # Landroid/app/assist/AssistContent;
    .param p5, "referrer"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5444
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5445
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5447
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 5448
    invoke-virtual {p3, v0, v4}, Landroid/app/assist/AssistStructure;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5449
    invoke-virtual {p4, v0, v4}, Landroid/app/assist/AssistContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5450
    if-eqz p5, :cond_0

    .line 5451
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5452
    invoke-virtual {p5, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5456
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5457
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5460
    return-void

    .line 5454
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "requestType"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5428
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5429
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5430
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5431
    invoke-interface {p2}, Lcom/android/internal/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5432
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5433
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5434
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5435
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5436
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5438
    return v2
.end method

.method public requestBugReport()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5388
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5389
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5390
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5391
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5394
    return-void
.end method

.method public requestVisibleBehind(Landroid/os/IBinder;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5813
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5814
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5815
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5816
    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5817
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0xe2

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5818
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5819
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_1

    move v2, v4

    .line 5820
    .local v2, "success":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5822
    return v2

    .end local v2    # "success":Z
    :cond_0
    move v3, v5

    .line 5816
    goto :goto_0

    :cond_1
    move v2, v5

    .line 5819
    goto :goto_1
.end method

.method public resizeStack(ILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "stackBoxId"    # I
    .param p2, "r"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3459
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3460
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3461
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3462
    invoke-virtual {p2, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3463
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3464
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3467
    return-void
.end method

.method public resizeTask(ILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "r"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5768
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5769
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5770
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5771
    invoke-virtual {p2, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5772
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11e

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5773
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5776
    return-void
.end method

.method public restart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5555
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5556
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5557
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5558
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5561
    return-void
.end method

.method public resumeAppSwitches()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4609
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4610
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4611
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4612
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4615
    return-void
.end method

.method public revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4218
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4219
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4220
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4221
    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4222
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4223
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4224
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4228
    return-void
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    .locals 5
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4892
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4893
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4895
    if-eqz p2, :cond_0

    .line 4896
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4897
    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4901
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4902
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4903
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4904
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4907
    return-void

    .line 4899
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public serviceDoneExecuting(Landroid/os/IBinder;III)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "startId"    # I
    .param p4, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3828
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3829
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3830
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3831
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3832
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3833
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3834
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3835
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3838
    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 5
    .param p1, "watcher"    # Landroid/app/IActivityController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4364
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4365
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4366
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IActivityController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4367
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4371
    return-void

    .line 4366
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAlwaysFinish(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4353
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4354
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4355
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4356
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4357
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4360
    return-void

    :cond_0
    move v2, v3

    .line 4355
    goto :goto_0
.end method

.method public setDebugApp(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "waitForDebugger"    # Z
    .param p3, "persistent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4340
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4341
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4343
    if-eqz p2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4344
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4345
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4346
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4349
    return-void

    :cond_0
    move v2, v4

    .line 4343
    goto :goto_0

    :cond_1
    move v3, v4

    .line 4344
    goto :goto_1
.end method

.method public setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "maxMemSize"    # J
    .param p5, "reportPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5903
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5904
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5906
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5907
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5908
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5909
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x120

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5910
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5913
    return-void
.end method

.method public setFocusedStack(I)V
    .locals 5
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3516
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3517
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3518
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3519
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3520
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3523
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4990
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4991
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4992
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4993
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4994
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4997
    return-void
.end method

.method public setImmersive(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immersive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4778
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4779
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4780
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4781
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4782
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4783
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4786
    return-void

    :cond_0
    move v2, v3

    .line 4781
    goto :goto_0
.end method

.method public setLockScreenShown(Z)V
    .locals 5
    .param p1, "shown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4327
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4328
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4329
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4330
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x94

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4331
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4334
    return-void

    :cond_0
    move v2, v3

    .line 4329
    goto :goto_0
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5041
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5042
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5043
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5044
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5045
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x81

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5046
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5049
    return-void

    :cond_0
    move v2, v3

    .line 5044
    goto :goto_0
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5014
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5015
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5016
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5017
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5018
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5019
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5020
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5021
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5023
    return-void
.end method

.method public setProcessForeground(Landroid/os/IBinder;IZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "isForeground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4126
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4127
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4129
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4130
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4131
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4132
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4135
    return-void

    :cond_0
    move v2, v3

    .line 4130
    goto :goto_0
.end method

.method public setProcessLimit(I)V
    .locals 5
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4103
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4104
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4106
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4107
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4110
    return-void
.end method

.method public setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5986
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5987
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5988
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5989
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5990
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5991
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xbb

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5993
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5994
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5996
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public setRequestedOrientation(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestedOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3964
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3965
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3966
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3968
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3969
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3970
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3973
    return-void
.end method

.method public setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "removeNotification"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3745
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3746
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3747
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3748
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3749
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3750
    if-eqz p4, :cond_0

    .line 3751
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3752
    invoke-virtual {p4, v0, v3}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3756
    :goto_0
    if-eqz p5, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3757
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3758
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3760
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3761
    return-void

    .line 3754
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3756
    goto :goto_1
.end method

.method public setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "values"    # Landroid/app/ActivityManager$TaskDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5741
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5742
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5743
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5744
    invoke-virtual {p2, v0, v4}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5745
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xda

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5746
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5749
    return-void
.end method

.method public setTaskResizeable(IZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "resizeable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5754
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5755
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5756
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5757
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5758
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11c

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5759
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5762
    return-void

    :cond_0
    move v2, v3

    .line 5757
    goto :goto_0
.end method

.method public setUserIsMonkey(Z)V
    .locals 5
    .param p1, "monkey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4708
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4709
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4710
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4711
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa6

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4712
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4715
    return-void

    :cond_0
    move v2, v3

    .line 4710
    goto :goto_0
.end method

.method public setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    .locals 5
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "keepAwake"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5931
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5932
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5933
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5934
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5935
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x122

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5936
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5939
    return-void

    :cond_0
    move v2, v3

    .line 5934
    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destAffinity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5304
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5305
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5307
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5308
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x92

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5310
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5311
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5313
    return v2
.end method

.method public showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5494
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5495
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5496
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5497
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 5498
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5499
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5500
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5501
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5503
    return v2
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5268
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5269
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5270
    invoke-static {p1, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 5271
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5272
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8a

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5276
    return-void

    :cond_0
    move v2, v3

    .line 5271
    goto :goto_0
.end method

.method public showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5727
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5728
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5729
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5730
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x127

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5732
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5735
    return-void
.end method

.method public showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    .locals 5
    .param p1, "who"    # Landroid/app/IApplicationThread;
    .param p2, "waiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4280
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4281
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4282
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4283
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4284
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4285
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4288
    return-void

    :cond_0
    move v2, v3

    .line 4283
    goto :goto_0
.end method

.method public shutdown(I)Z
    .locals 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4586
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4587
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4589
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4590
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4591
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4592
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4594
    return v2
.end method

.method public signalPersistentProcesses(I)V
    .locals 5
    .param p1, "sig"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4490
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4491
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4492
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4493
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4494
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4497
    return-void
.end method

.method public startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intents"    # [Landroid/content/Intent;
    .param p4, "resolvedTypes"    # [Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "options"    # Landroid/os/Bundle;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4954
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4955
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4956
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4957
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4958
    invoke-virtual {v0, p3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4959
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4960
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4961
    if-eqz p6, :cond_1

    .line 4962
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4963
    invoke-virtual {p6, v0, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4967
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4968
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4969
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4970
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4971
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4973
    return v2

    .line 4956
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 4965
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .locals 10
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2655
    const-string v5, "Timeline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeline: Activity_launch_request time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2657
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2658
    .local v3, "reply":Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2659
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_0
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2660
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2661
    const/4 v5, 0x0

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2662
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2663
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2664
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2665
    move/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2666
    move/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2667
    if-eqz p9, :cond_1

    .line 2668
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2669
    const/4 v5, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v5}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2673
    :goto_1
    if-eqz p10, :cond_2

    .line 2674
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2675
    const/4 v5, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2679
    :goto_2
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-interface {v5, v6, v2, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2680
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 2681
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2682
    .local v4, "result":I
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 2683
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2684
    return v4

    .line 2659
    .end local v4    # "result":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2671
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2677
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2763
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2764
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2765
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2766
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2767
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2768
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2769
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2770
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2771
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2772
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2773
    if-eqz p9, :cond_1

    .line 2774
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2775
    const/4 v4, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2779
    :goto_1
    if-eqz p10, :cond_2

    .line 2780
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2781
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2785
    :goto_2
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2786
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x69

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2787
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2788
    sget-object v4, Landroid/app/IActivityManager$WaitResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IActivityManager$WaitResult;

    .line 2789
    .local v3, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2791
    return-object v3

    .line 2765
    .end local v3    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2777
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2783
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "ignoreTargetSecurity"    # Z
    .param p12, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2727
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2728
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2729
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2730
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2731
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2732
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2733
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2734
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2735
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2736
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2737
    if-eqz p9, :cond_1

    .line 2738
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2739
    const/4 v4, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2743
    :goto_1
    if-eqz p10, :cond_2

    .line 2744
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2745
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2749
    :goto_2
    if-eqz p11, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2750
    move/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2751
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe9

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2752
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2753
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2754
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2756
    return v3

    .line 2729
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2741
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2747
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 2749
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2692
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2693
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2694
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2695
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2696
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2697
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2698
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2699
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2700
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2701
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2702
    if-eqz p9, :cond_1

    .line 2703
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2704
    const/4 v4, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2708
    :goto_1
    if-eqz p10, :cond_2

    .line 2709
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2710
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2714
    :goto_2
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2715
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x99

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2716
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2717
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2718
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2720
    return v3

    .line 2694
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2706
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2712
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public startActivityFromRecents(ILandroid/os/Bundle;)I
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2914
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2915
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2916
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2917
    if-nez p2, :cond_0

    .line 2918
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2923
    :goto_0
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe6

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2924
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2925
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2926
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2928
    return v2

    .line 2920
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2921
    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "flagsMask"    # I
    .param p9, "flagsValues"    # I
    .param p10, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2828
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2829
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2830
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2831
    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2832
    if-eqz p3, :cond_1

    .line 2833
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2834
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2838
    :goto_1
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2840
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2841
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2842
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2843
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2844
    if-eqz p10, :cond_2

    .line 2845
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2846
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2850
    :goto_2
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x64

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2851
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2852
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2853
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2855
    return v3

    .line 2830
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2836
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2848
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "config"    # Landroid/content/res/Configuration;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2798
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2799
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2800
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2801
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2802
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2803
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2804
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2805
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2806
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2807
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2808
    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2809
    if-eqz p10, :cond_1

    .line 2810
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2811
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2815
    :goto_1
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2816
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2817
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2818
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2819
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2821
    return v3

    .line 2800
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2813
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    .locals 5
    .param p1, "options"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5796
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5797
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5798
    if-nez p1, :cond_0

    .line 5799
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5804
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5805
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5808
    return-void

    .line 5801
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5802
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p6, "connection"    # Landroid/app/IUiAutomationConnection;
    .param p7, "userId"    # I
    .param p8, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 3907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3908
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3909
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3910
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3911
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3912
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3913
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3914
    if-eqz p5, :cond_2

    invoke-interface {p5}, Landroid/app/IInstrumentationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3915
    if-eqz p6, :cond_0

    invoke-interface {p6}, Landroid/app/IUiAutomationConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3916
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3917
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3918
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3919
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3920
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3921
    .local v2, "res":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3923
    return v2

    .end local v2    # "res":Z
    :cond_2
    move-object v3, v4

    .line 3914
    goto :goto_0
.end method

.method public startLockTaskMode(I)V
    .locals 5
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5644
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5645
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5647
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5648
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5651
    return-void
.end method

.method public startLockTaskMode(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5656
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5657
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5658
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5659
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5663
    return-void
.end method

.method public startLockTaskModeOnCurrent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5668
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5669
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5670
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xde

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5671
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5674
    return-void
.end method

.method public startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "callingActivity"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2895
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2896
    .local v1, "reply":Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2897
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2898
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2899
    if-eqz p3, :cond_0

    .line 2900
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2901
    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2905
    :goto_0
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x43

    invoke-interface {v5, v6, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2906
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2907
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2908
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2910
    if-eqz v2, :cond_1

    :goto_1
    return v3

    .line 2903
    .end local v2    # "result":I
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .restart local v2    # "result":I
    :cond_1
    move v3, v4

    .line 2910
    goto :goto_1
.end method

.method public startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3696
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3697
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3698
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3699
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3700
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3701
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3702
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3703
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3704
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3705
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 3706
    .local v2, "res":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3708
    return-object v2

    .line 3698
    .end local v2    # "res":Landroid/content/ComponentName;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public startUserInBackground(I)Z
    .locals 5
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5066
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5067
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5068
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5069
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5070
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5071
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5072
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5074
    return v2
.end method

.method public startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2862
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2863
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2864
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2865
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2866
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2867
    const/4 v4, 0x0

    invoke-virtual {p4, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2868
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2869
    invoke-interface {p6}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2870
    invoke-interface {p7}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2871
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2872
    if-eqz p9, :cond_0

    .line 2873
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2874
    const/4 v4, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2878
    :goto_0
    if-eqz p10, :cond_1

    .line 2879
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2880
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2884
    :goto_1
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2885
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xdb

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2886
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2887
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2888
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2890
    return v3

    .line 2876
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 2882
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public stopAppSwitches()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4599
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4600
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4601
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4602
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4605
    return-void
.end method

.method public stopLockTaskMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5679
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5680
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5681
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5682
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5685
    return-void
.end method

.method public stopLockTaskModeOnCurrent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5690
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5691
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5692
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5693
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5696
    return-void
.end method

.method public stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3714
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3715
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3716
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3717
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3718
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3719
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3720
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3721
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3722
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3723
    .local v2, "res":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3725
    return v2

    .line 3716
    .end local v2    # "res":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "startId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3730
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3731
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3732
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3733
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3734
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3735
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3736
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3737
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3738
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3740
    return v2
.end method

.method public stopUser(ILandroid/app/IStopUserCallback;)I
    .locals 6
    .param p1, "userid"    # I
    .param p2, "callback"    # Landroid/app/IStopUserCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5079
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5080
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5081
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5082
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5083
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5084
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5085
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5086
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5087
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5088
    return v2
.end method

.method public switchUser(I)Z
    .locals 5
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5053
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5054
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5055
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5056
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x82

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5057
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5058
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5059
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5061
    return v2
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;II)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4234
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4235
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4236
    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4238
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4239
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4243
    return-void
.end method

.method public testIsSystemReady()Z
    .locals 1

    .prologue
    .line 4438
    const/4 v0, 0x1

    return v0
.end method

.method public unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3894
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3895
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3896
    invoke-virtual {p1, v0, v4}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3897
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3898
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3901
    return-void
.end method

.method public unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "doRebind"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3814
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3815
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3817
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3818
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3819
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3820
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3823
    return-void

    :cond_0
    move v2, v3

    .line 3818
    goto :goto_0
.end method

.method public unbindService(Landroid/app/IServiceConnection;)Z
    .locals 5
    .param p1, "connection"    # Landroid/app/IServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3786
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3787
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3788
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3789
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3790
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3791
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3792
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3794
    return v2
.end method

.method public unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3088
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3089
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3090
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3091
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3092
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3093
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3094
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3097
    return-void

    .line 3090
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unhandledBack()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4302
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4303
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4304
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4308
    return-void
.end method

.method public unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IMiuiActivityObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6030
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6031
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6032
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IMiuiActivityObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6033
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3ea

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6034
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6037
    return-void

    .line 6032
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5155
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5156
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5157
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IProcessObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5158
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5159
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5162
    return-void

    .line 5157
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/IIntentReceiver;)V
    .locals 5
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3047
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3048
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3049
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3050
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3051
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3054
    return-void
.end method

.method public unregisterUidObserver(Landroid/app/IUidObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5177
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5178
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5179
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IUidObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5180
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5184
    return-void

    .line 5179
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5377
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5378
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5379
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IUserSwitchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5380
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5381
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5384
    return-void

    .line 5379
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3632
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3633
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3634
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3635
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3636
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3639
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "values"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3954
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3955
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3956
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3957
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3958
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3961
    return-void
.end method

.method public updateDeviceOwner(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5957
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5958
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5959
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5960
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x128

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5961
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5964
    return-void
.end method

.method public updateLockTaskPackages(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5944
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5945
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5946
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5947
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5948
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x123

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5949
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5952
    return-void
.end method

.method public updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "values"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5244
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5245
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5246
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5247
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5248
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5251
    return-void
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3010
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3011
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3012
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3013
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3014
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3015
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3016
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3018
    return v2
.end method
