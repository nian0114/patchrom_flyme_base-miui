.class public Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
.super Lcom/android/internal/util/AsyncChannel;
.source "DcSwitchAsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x44000

.field private static final CMD_TO_STRING_COUNT:I = 0xe

.field private static final DBG:Z = true

.field static final EVENT_DATA_ATTACHED:I = 0x44007

.field static final EVENT_DATA_DETACHED:I = 0x44008

.field static final EVENT_DATA_RAT_CHANGE:I = 0x4400d

.field static final EVENT_DDS_SWITCH:I = 0x4400c

.field static final EVENT_EMERGENCY_CALL_ENDED:I = 0x4400a

.field static final EVENT_EMERGENCY_CALL_STARTED:I = 0x44009

.field static final EVENT_RESET:I = 0x4400b

.field private static final LOG_TAG:Ljava/lang/String; = "DcSwitchAsyncChannel"

.field static final REQ_CONNECT:I = 0x44000

.field static final REQ_DISCONNECT_ALL:I = 0x44002

.field static final REQ_IS_IDLE_OR_DETACHING_STATE:I = 0x44005

.field static final REQ_IS_IDLE_STATE:I = 0x44003

.field static final REQ_RETRY_CONNECT:I = 0x44001

.field static final RSP_IS_IDLE_OR_DETACHING_STATE:I = 0x44006

.field static final RSP_IS_IDLE_STATE:I = 0x44004

.field private static final VDBG:Z

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mDcSwitchState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

.field private tagId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "REQ_CONNECT"

    aput-object v2, v0, v1

    .line 58
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "REQ_RETRY_CONNECT"

    aput-object v2, v0, v1

    .line 59
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "REQ_DISCONNECT_ALL"

    aput-object v2, v0, v1

    .line 60
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "REQ_IS_IDLE_STATE"

    aput-object v2, v0, v1

    .line 61
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "RSP_IS_IDLE_STATE"

    aput-object v2, v0, v1

    .line 62
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "REQ_IS_IDLE_OR_DETACHING_STATE"

    aput-object v2, v0, v1

    .line 63
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "RSP_IS_IDLE_OR_DETACHING_STATE"

    aput-object v2, v0, v1

    .line 64
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "EVENT_DATA_ATTACHED"

    aput-object v2, v0, v1

    .line 65
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "EVENT_DATA_DETACHED"

    aput-object v2, v0, v1

    .line 66
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "EVENT_EMERGENCY_CALL_STARTED"

    aput-object v2, v0, v1

    .line 67
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "EVENT_EMERGENCY_CALL_ENDED"

    aput-object v2, v0, v1

    .line 68
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "EVENT_RESET"

    aput-object v2, v0, v1

    .line 69
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "EVENT_DDS_SWITCH"

    aput-object v2, v0, v1

    .line 70
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "EVENT_DATA_RAT_CHANGE"

    aput-object v2, v0, v1

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)V
    .locals 1
    .param p1, "dcSwitchState"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "id"    # I

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->tagId:I

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->mDcSwitchState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .line 122
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->tagId:I

    .line 123
    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # I

    .prologue
    const v1, 0x44000

    .line 112
    sub-int/2addr p0, v1

    .line 113
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 114
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    add-int v0, p0, v1

    invoke-static {v0}, Lcom/android/internal/util/AsyncChannel;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 219
    const-string v0, "DcSwitchAsyncChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DcSwitchAsyncChannel-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->tagId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method private rspIsIdle(Landroid/os/Message;)Z
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 177
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 178
    .local v0, "retVal":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspIsIdle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 179
    return v0

    .line 177
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connect(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)I
    .locals 2
    .param p1, "apnRequest"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 126
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;Landroid/os/Message;)V

    .line 127
    .local v0, "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    const v1, 0x44000

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 128
    const/4 v1, 0x1

    return v1
.end method

.method public connect(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;Landroid/os/Message;)I
    .locals 2
    .param p1, "apnRequest"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;Landroid/os/Message;)V

    .line 133
    .local v0, "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    const v1, 0x44000

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 134
    const/4 v1, 0x1

    return v1
.end method

.method public disconnectAll()I
    .locals 1

    .prologue
    .line 142
    const v0, 0x44002

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public isIdleOrDetachingSync()Z
    .locals 3

    .prologue
    .line 204
    const v1, 0x44005

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 205
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x44006

    if-ne v1, v2, :cond_0

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->rspIsIdleOrDetaching(Landroid/os/Message;)Z

    move-result v1

    .line 209
    :goto_0
    return v1

    .line 208
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspIsIdleOrDetaching error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIdleSync()Z
    .locals 3

    .prologue
    .line 183
    const v1, 0x44003

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x44004

    if-ne v1, v2, :cond_0

    .line 185
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->rspIsIdle(Landroid/os/Message;)Z

    move-result v1

    .line 188
    :goto_0
    return v1

    .line 187
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspIsIndle error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 188
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyDataAttached()V
    .locals 1

    .prologue
    .line 152
    const v0, 0x44007

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    .line 153
    return-void
.end method

.method public notifyDataDetached()V
    .locals 1

    .prologue
    .line 156
    const v0, 0x44008

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    .line 157
    return-void
.end method

.method public notifyDataRatChange(I)V
    .locals 1
    .param p1, "rat"    # I

    .prologue
    .line 160
    const v0, 0x4400d

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(II)V

    .line 161
    return-void
.end method

.method public notifyDdsSwitch()V
    .locals 1

    .prologue
    .line 147
    const-string v0, "Notify EVENT_DDS_SWITCH"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 148
    const v0, 0x4400c

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    .line 149
    return-void
.end method

.method public notifyEmergencyCallToggled(I)V
    .locals 1
    .param p1, "start"    # I

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    const v0, 0x44009

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    const v0, 0x4400a

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public reqIsIdleOrDetaching()V
    .locals 1

    .prologue
    .line 193
    const v0, 0x44005

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    .line 194
    const-string v0, "reqIsIdleOrDetaching"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 172
    const v0, 0x4400b

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    .line 173
    const-string v0, "EVENT_RESET"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public retryConnect()V
    .locals 1

    .prologue
    .line 138
    const v0, 0x44001

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->sendMessage(I)V

    .line 139
    return-void
.end method

.method public rspIsIdleOrDetaching(Landroid/os/Message;)Z
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 198
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 199
    .local v0, "retVal":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspIsIdleOrDetaching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->log(Ljava/lang/String;)V

    .line 200
    return v0

    .line 198
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->mDcSwitchState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method