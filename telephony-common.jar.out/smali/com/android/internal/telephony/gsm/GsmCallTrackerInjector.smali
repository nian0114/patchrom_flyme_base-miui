.class public Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;
.super Ljava/lang/Object;
.source "GsmCallTrackerInjector.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GsmCallTrackerInjector"

.field private static sIsHD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->sIsHD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSpecialNumber(Lcom/android/internal/telephony/Phone;)Z
    .locals 10
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 44
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    const-string v9, "10010"

    aput-object v9, v6, v7

    const-string v9, "114"

    aput-object v9, v6, v8

    .line 45
    .local v6, "specialNumArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 46
    .local v1, "currentCall":Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 47
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 56
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v8, :cond_3

    move v7, v8

    .line 72
    :cond_0
    :goto_1
    return v7

    .line 48
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 49
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 51
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 61
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "currentNumber":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v7, v8

    .line 64
    goto :goto_1

    .line 66
    :cond_4
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 67
    .local v5, "num":Ljava/lang/String;
    invoke-static {v5, v2, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    move v7, v8

    .line 68
    goto :goto_1

    .line 66
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static sendSpeechCodecIsHDBroadcast(Lcom/android/internal/telephony/Phone;Z)V
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "isHD"    # Z

    .prologue
    .line 26
    sget-boolean v1, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->isSpecialNumber(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 30
    :cond_2
    const/4 p1, 0x0

    .line 32
    :cond_3
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->sIsHD:Z

    if-eq v1, p1, :cond_0

    .line 33
    sput-boolean p1, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->sIsHD:Z

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SPEECH_CODEC_IS_HD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    const-string v1, "is_hd"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 38
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 39
    const-string v1, "GsmCallTrackerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSpeechCodecIsHDBroadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
