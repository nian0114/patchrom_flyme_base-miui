.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TimeProvider;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;,
        Landroid/media/MediaPlayer$OnSubtitleDataListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_SELECTED_TRACK:I = 0x7

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final KEY_PARAMETER_AUDIO_ATTRIBUTES:I = 0x578

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_SYSTEM:I = -0x80000000

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_META_DATA:I = 0xca

.field public static final MEDIA_MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final MEDIA_MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PAUSED:I = 0x7

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_SKIPPED:I = 0x9

.field private static final MEDIA_STARTED:I = 0x6

.field private static final MEDIA_STOPPED:I = 0x8

.field private static final MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field public static final PLAYBACK_RATE_AUDIO_MODE_DEFAULT:I = 0x0

.field public static final PLAYBACK_RATE_AUDIO_MODE_RESAMPLE:I = 0x2

.field public static final PLAYBACK_RATE_AUDIO_MODE_STRETCH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mBypassInterruptionPolicy:Z

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mInbandTrackIndices:Ljava/util/BitSet;

.field private mIndexTrackPairs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListenerContext:I

.field private mNativeContext:J

.field private mNativeSurfaceTexture:J

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnWhilePlaying:Z

.field private mSelectedSubtitleTrackIndex:I

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSubtitleController:Landroid/media/SubtitleController;

.field private mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

.field private mUsage:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 598
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 599
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    .line 600
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object v4, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 617
    const/high16 v2, -0x80000000

    iput v2, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 618
    iput v3, p0, Landroid/media/MediaPlayer;->mUsage:I

    .line 2066
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    .line 2067
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    .line 2189
    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2192
    new-instance v2, Landroid/media/MediaPlayer$2;

    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 631
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 632
    new-instance v2, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 639
    :goto_0
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 640
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    .line 641
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 642
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 647
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 648
    return-void

    .line 633
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 634
    new-instance v2, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0

    .line 636
    :cond_1
    iput-object v4, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0
.end method

.method private native _getAudioStreamType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setAudioStreamType(I)V
.end method

.method private native _setAuxEffectSendLevel(F)V
.end method

.method private native _setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _setVolume(FF)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/MediaPlayer;Landroid/media/SubtitleController;)Landroid/media/SubtitleController;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # Landroid/media/SubtitleController;

    .prologue
    .line 562
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object p1
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-wide v0, p0, Landroid/media/MediaPlayer;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    return-void
.end method

.method static synthetic access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 562
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 2135
    const-string v0, "application/x-subrip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2136
    const/4 v0, 0x1

    .line 2138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 914
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 915
    .local v0, "s":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    .end local v0    # "s":I
    :goto_0
    invoke-static {p0, p1, v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1

    .restart local v0    # "s":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "audioSessionId"    # I

    .prologue
    const/4 v9, 0x0

    .line 932
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 933
    .local v7, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v7, :cond_0

    move-object v0, v9

    .line 956
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v0

    .line 935
    .restart local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 937
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz p2, :cond_1

    move-object v6, p2

    .line 939
    .local v6, "aa":Landroid/media/AudioAttributes;
    :goto_1
    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 940
    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 942
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 943
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 944
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 946
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .end local v6    # "aa":Landroid/media/AudioAttributes;
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v8

    .line 947
    .local v8, "ex":Ljava/io/IOException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v8    # "ex":Ljava/io/IOException;
    :goto_2
    move-object v0, v9

    .line 956
    goto :goto_0

    .line 937
    .restart local v0    # "mp":Landroid/media/MediaPlayer;
    .restart local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    goto :goto_1

    .line 949
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v8

    .line 950
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 952
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    .line 953
    .local v8, "ex":Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 831
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 851
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 852
    .local v0, "s":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    .end local v0    # "s":I
    :goto_0
    invoke-static {p0, p1, p2, v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1

    .restart local v0    # "s":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;
    .param p3, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p4, "audioSessionId"    # I

    .prologue
    .line 870
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 871
    .local v2, "mp":Landroid/media/MediaPlayer;
    if-eqz p3, :cond_1

    move-object v0, p3

    .line 873
    .local v0, "aa":Landroid/media/AudioAttributes;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 874
    invoke-virtual {v2, p4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 875
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 876
    if-eqz p2, :cond_0

    .line 877
    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 879
    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 892
    .end local v0    # "aa":Landroid/media/AudioAttributes;
    .end local v2    # "mp":Landroid/media/MediaPlayer;
    :goto_1
    return-object v2

    .line 871
    .restart local v2    # "mp":Landroid/media/MediaPlayer;
    :cond_1
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 881
    .end local v2    # "mp":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v1

    .line 882
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "MediaPlayer"

    const-string v4, "create failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 884
    :catch_1
    move-exception v1

    .line 885
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "MediaPlayer"

    const-string v4, "create failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 887
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 888
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v3, "MediaPlayer"

    const-string v4, "create failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getAudioStreamType()I
    .locals 2

    .prologue
    .line 1216
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1217
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_getAudioStreamType()I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 1219
    :cond_0
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    return v0
.end method

.method private getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2098
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2100
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2101
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2102
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2103
    sget-object v3, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2106
    .local v2, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2106
    .end local v2    # "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private isRestricted()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1201
    iget-boolean v4, p0, Landroid/media/MediaPlayer;->mBypassInterruptionPolicy:Z

    if-eqz v4, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return v3

    .line 1205
    :cond_1
    :try_start_0
    iget v4, p0, Landroid/media/MediaPlayer;->mUsage:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v2, p0, Landroid/media/MediaPlayer;->mUsage:I

    .line 1207
    .local v2, "usage":I
    :goto_1
    iget-object v4, p0, Landroid/media/MediaPlayer;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v5, 0x1c

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v2, v6, v7}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    .line 1209
    .local v1, "mode":I
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 1205
    .end local v1    # "mode":I
    .end local v2    # "usage":I
    :cond_2
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getAudioStreamType()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 3461
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setRetransmitEndpoint(Ljava/lang/String;I)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private populateInbandTracks()V
    .locals 7

    .prologue
    .line 2315
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v2

    .line 2316
    .local v2, "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4

    .line 2317
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 2318
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2317
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2321
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    .line 2325
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 2326
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v1

    .line 2328
    .local v1, "track":Landroid/media/SubtitleTrack;
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2333
    .end local v1    # "track":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2330
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2333
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2334
    return-void
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2986
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 2987
    .local v1, "mp":Landroid/media/MediaPlayer;
    if-nez v1, :cond_1

    .line 2999
    :cond_0
    :goto_0
    return-void

    .line 2991
    :cond_1
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 2993
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 2995
    :cond_2
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 2996
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2997
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private scanInternalSubtitleTracks()V
    .locals 2

    .prologue
    .line 2302
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_0

    .line 2303
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setSubtitleAnchor in MediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    .line 2307
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    .line 2309
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_1

    .line 2310
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    .line 2312
    :cond_1
    return-void
.end method

.method private selectOrDeselectInbandTrack(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2697
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2699
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2700
    if-eqz p2, :cond_0

    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2701
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2702
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2707
    return-void

    .line 2700
    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    .line 2704
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private selectOrDeselectTrack(IZ)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 2647
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    .line 2649
    const/4 v2, 0x0

    .line 2651
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/util/Pair;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2657
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/media/SubtitleTrack;

    .line 2658
    .local v4, "track":Landroid/media/SubtitleTrack;
    if-nez v4, :cond_1

    .line 2660
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6, p2}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    .line 2692
    .end local v4    # "track":Landroid/media/SubtitleTrack;
    :cond_0
    :goto_0
    return-void

    .line 2652
    :catch_0
    move-exception v1

    .line 2654
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0

    .line 2664
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "track":Landroid/media/SubtitleTrack;
    :cond_1
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v6, :cond_0

    .line 2668
    if-nez p2, :cond_3

    .line 2670
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v6}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v6

    if-ne v6, v4, :cond_2

    .line 2671
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    goto :goto_0

    .line 2673
    :cond_2
    const-string v6, "MediaPlayer"

    const-string/jumbo v7, "trying to deselect track that was not selected"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2679
    :cond_3
    invoke-virtual {v4}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v6

    if-ne v6, v7, :cond_5

    .line 2680
    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result v5

    .line 2681
    .local v5, "ttIndex":I
    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v7

    .line 2682
    if-ltz v5, :cond_4

    :try_start_1
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 2683
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2684
    .local v3, "p2":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_4

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v6, :cond_4

    .line 2686
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    .line 2689
    .end local v3    # "p2":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2691
    .end local v5    # "ttIndex":I
    :cond_5
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v6, v4}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    goto :goto_0

    .line 2689
    .restart local v5    # "ttIndex":I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method private setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1074
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1075
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 1076
    .local v3, "scheme":Ljava/lang/String;
    const-string v5, "file"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1077
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1088
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1090
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1091
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1092
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1093
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1097
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 1078
    :cond_1
    if-eqz v3, :cond_0

    .line 1080
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2, p3}, Landroid/media/MediaPlayer;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1095
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "setDataSource failed."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private native setParameter(ILandroid/os/Parcel;)Z
.end method

.method private declared-synchronized setSubtitleAnchor()V
    .locals 5

    .prologue
    .line 2158
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v3, :cond_0

    .line 2159
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SetSubtitleAnchorThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2160
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2161
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2162
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/media/MediaPlayer$1;

    invoke-direct {v3, p0, v2}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2181
    :try_start_1
    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2187
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "thread":Landroid/os/HandlerThread;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2182
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "thread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v0

    .line 2183
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 2184
    const-string v3, "MediaPlayer"

    const-string v4, "failed to join SetSubtitleAnchorThread"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2158
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private stayAwake(Z)V
    .locals 3
    .param p1, "awake"    # Z

    .prologue
    .line 1306
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1307
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1308
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1314
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Landroid/media/MediaPlayerInjector;->updateActiveProcessStatus(ZZII)V

    .line 1316
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1317
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1318
    return-void

    .line 1309
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 1321
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1324
    :cond_0
    return-void

    .line 1322
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2247
    move-object v1, p1

    .line 2248
    .local v1, "fIs":Ljava/io/InputStream;
    move-object v0, p2

    .line 2250
    .local v0, "fFormat":Landroid/media/MediaFormat;
    if-eqz p1, :cond_0

    .line 2253
    iget-object v5, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v5

    .line 2254
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2255
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2261
    :goto_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "SubtitleReadThread"

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2263
    .local v3, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 2264
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2265
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Landroid/media/MediaPlayer$3;

    invoke-direct {v4, p0, v1, v0, v3}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2299
    return-void

    .line 2255
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2257
    :cond_0
    const-string v4, "MediaPlayer"

    const-string v5, "addSubtitleSource called with null InputStream"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2388
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 2389
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2390
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    :cond_1
    :goto_0
    return-void

    .line 2394
    :cond_2
    const/4 v0, 0x0

    .line 2396
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2397
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "r"

    invoke-virtual {v1, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2398
    if-nez v0, :cond_3

    .line 2406
    if-eqz v0, :cond_1

    .line 2407
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2401
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2406
    if-eqz v0, :cond_1

    .line 2407
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2403
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v3

    .line 2406
    if-eqz v0, :cond_1

    .line 2407
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2404
    :catch_1
    move-exception v3

    .line 2406
    if-eqz v0, :cond_1

    .line 2407
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2406
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 2407
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4
    throw v3
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2454
    invoke-static/range {p6 .. p6}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2455
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Illegal mimeType for timed text source: "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2460
    :cond_0
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 2466
    .local v14, "fd2":Ljava/io/FileDescriptor;
    new-instance v13, Landroid/media/MediaFormat;

    invoke-direct {v13}, Landroid/media/MediaFormat;-><init>()V

    .line 2467
    .local v13, "fFormat":Landroid/media/MediaFormat;
    const-string/jumbo v3, "mime"

    move-object/from16 v0, p6

    invoke-virtual {v13, v3, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    const-string/jumbo v3, "is-timed-text"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v3, :cond_1

    .line 2472
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    .line 2475
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v13}, Landroid/media/SubtitleController;->hasRendererFor(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2477
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 2478
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/SRTRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v2, v0}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2480
    .end local v2    # "context":Landroid/content/Context;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v13}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v10

    .line 2481
    .local v10, "track":Landroid/media/SubtitleTrack;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4

    .line 2482
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2483
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2485
    move-object v5, v14

    .line 2486
    .local v5, "fd3":Ljava/io/FileDescriptor;
    move-wide/from16 v6, p2

    .line 2487
    .local v6, "offset2":J
    move-wide/from16 v8, p4

    .line 2488
    .local v8, "length2":J
    new-instance v11, Landroid/os/HandlerThread;

    const-string v3, "TimedTextReadThread"

    const/16 v4, 0x9

    invoke-direct {v11, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2491
    .local v11, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 2492
    new-instance v15, Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2493
    .local v15, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/media/MediaPlayer$4;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V

    invoke-virtual {v15, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2535
    return-void

    .line 2461
    .end local v5    # "fd3":Ljava/io/FileDescriptor;
    .end local v6    # "offset2":J
    .end local v8    # "length2":J
    .end local v10    # "track":Landroid/media/SubtitleTrack;
    .end local v11    # "thread":Landroid/os/HandlerThread;
    .end local v13    # "fFormat":Landroid/media/MediaFormat;
    .end local v14    # "fd2":Ljava/io/FileDescriptor;
    .end local v15    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v12

    .line 2462
    .local v12, "ex":Landroid/system/ErrnoException;
    const-string v3, "MediaPlayer"

    invoke-virtual {v12}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2463
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2483
    .end local v12    # "ex":Landroid/system/ErrnoException;
    .restart local v10    # "track":Landroid/media/SubtitleTrack;
    .restart local v13    # "fFormat":Landroid/media/MediaFormat;
    .restart local v14    # "fd2":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2431
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    .line 2432
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2354
    invoke-static {p2}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal mimeType for timed text source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2356
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2359
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2360
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2361
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2362
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 2363
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0, p2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 2364
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 2369
    return-void

    .line 2367
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public native attachAuxEffect(I)V
.end method

.method public deselectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2641
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2642
    return-void
.end method

.method public easyPlaybackParams(FI)Landroid/media/PlaybackParams;
    .locals 4
    .param p1, "rate"    # F
    .param p2, "audioMode"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1423
    new-instance v1, Landroid/media/PlaybackParams;

    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    .line 1424
    .local v1, "params":Landroid/media/PlaybackParams;
    invoke-virtual {v1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 1425
    packed-switch p2, :pswitch_data_0

    .line 1437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio playback mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1427
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 1440
    :goto_0
    return-object v1

    .line 1430
    :pswitch_1
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 1434
    :pswitch_2
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 1425
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 2765
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public native getAudioSessionId()I
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .locals 1

    .prologue
    .line 2790
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-nez v0, :cond_0

    .line 2791
    new-instance v0, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v0, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 2793
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 4
    .param p1, "update_only"    # Z
    .param p2, "apply_filter"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1561
    .local v1, "reply":Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    .line 1563
    .local v0, "data":Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1564
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1574
    .end local v0    # "data":Landroid/media/Metadata;
    :cond_0
    :goto_0
    return-object v0

    .line 1570
    .restart local v0    # "data":Landroid/media/Metadata;
    :cond_1
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1572
    goto :goto_0
.end method

.method public native getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public getSelectedTrack(I)I
    .locals 8
    .param p1, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2555
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    if-eq p1, v6, :cond_0

    const/4 v6, 0x3

    if-ne p1, v6, :cond_3

    .line 2558
    :cond_0
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v6}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v5

    .line 2559
    .local v5, "subtitleTrack":Landroid/media/SubtitleTrack;
    if-eqz v5, :cond_3

    .line 2560
    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v7

    .line 2561
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 2562
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2563
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v6, v5, :cond_1

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 2564
    monitor-exit v7

    .line 2590
    .end local v0    # "i":I
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :goto_1
    return v0

    .line 2561
    .restart local v0    # "i":I
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .restart local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2567
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2571
    .end local v0    # "i":I
    .end local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2572
    .local v4, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2574
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_1
    const-string v6, "android.media.IMediaPlayer"

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2575
    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2576
    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2577
    invoke-virtual {p0, v4, v3}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2578
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2579
    .local v1, "inbandTrackIndex":I
    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2580
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    :try_start_2
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 2581
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2582
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_4

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_4

    .line 2583
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2589
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2590
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 2567
    .end local v1    # "inbandTrackIndex":I
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v3    # "reply":Landroid/os/Parcel;
    .end local v4    # "request":Landroid/os/Parcel;
    .restart local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 2580
    .end local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    .restart local v1    # "inbandTrackIndex":I
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .restart local v3    # "reply":Landroid/os/Parcel;
    .restart local v4    # "request":Landroid/os/Parcel;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2586
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_5
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2587
    const/4 v0, -0x1

    .line 2589
    .end local v0    # "i":I
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2590
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 2586
    .restart local v0    # "i":I
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2589
    .end local v0    # "i":I
    .end local v1    # "inbandTrackIndex":I
    :catchall_2
    move-exception v6

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2590
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v6
.end method

.method public native getSyncParams()Landroid/media/SyncParams;
.end method

.method public getTimestamp()Landroid/media/MediaTimestamp;
    .locals 7

    .prologue
    .line 1518
    :try_start_0
    new-instance v1, Landroid/media/MediaTimestamp;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v6

    :goto_0
    invoke-direct/range {v1 .. v6}, Landroid/media/MediaTimestamp;-><init>(JJF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1523
    :goto_1
    return-object v1

    .line 1518
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1522
    :catch_0
    move-exception v0

    .line 1523
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2078
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v4

    .line 2080
    .local v4, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v6

    .line 2081
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v0, v5, [Landroid/media/MediaPlayer$TrackInfo;

    .line 2082
    .local v0, "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 2083
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2084
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 2086
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v4, v5

    aput-object v5, v0, v1

    .line 2082
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2088
    :cond_0
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/media/SubtitleTrack;

    .line 2089
    .local v3, "track":Landroid/media/SubtitleTrack;
    new-instance v5, Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v7

    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/media/MediaPlayer$TrackInfo;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v5, v0, v1

    goto :goto_1

    .line 2093
    .end local v0    # "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2092
    .restart local v0    # "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    .restart local v1    # "i":I
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 699
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 700
    .local v0, "retcode":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 701
    if-eqz v0, :cond_0

    .line 702
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 704
    :cond_0
    return-void
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 680
    .local v0, "parcel":Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 681
    return-object v0
.end method

.method public onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .locals 4
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    .prologue
    .line 2211
    iget v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz v2, :cond_0

    .line 2213
    :try_start_0
    iget v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2216
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2218
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    .line 2219
    if-nez p1, :cond_2

    .line 2241
    :cond_1
    :goto_1
    return-void

    .line 2223
    :cond_2
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3

    .line 2224
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2225
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v2, p1, :cond_3

    .line 2227
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2231
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2233
    iget v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz v2, :cond_1

    .line 2235
    :try_start_2
    iget v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2238
    :goto_2
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    invoke-virtual {p0, v2}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    goto :goto_1

    .line 2231
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2236
    .restart local v0    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 2214
    .end local v0    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1244
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1245
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    .line 1246
    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1158
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_prepare()V

    .line 1159
    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    .line 1160
    return-void
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1663
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1664
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1665
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1666
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1667
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1668
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1669
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1670
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1671
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1672
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 1673
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 1675
    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 1677
    :cond_0
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 1678
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 1679
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1689
    const/4 v2, -0x1

    iput v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 1690
    iget-object v3, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v3

    .line 1691
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1693
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1694
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1697
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :try_start_2
    iget-object v2, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1698
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1699
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v2, :cond_1

    .line 1700
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v2}, Landroid/media/SubtitleController;->reset()V

    .line 1702
    :cond_1
    iget-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v2, :cond_2

    .line 1703
    iget-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 1704
    iput-object v4, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 1707
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1708
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 1710
    iget-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_3

    .line 1711
    iget-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1714
    :cond_3
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3

    .line 1715
    :try_start_3
    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1716
    iget-object v2, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 1717
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1718
    return-void

    .line 1698
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 1717
    .restart local v0    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method

.method public native seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2623
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2624
    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1757
    if-nez p1, :cond_0

    .line 1758
    const-string v0, "Cannot set AudioAttributes to null"

    .line 1759
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot set AudioAttributes to null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1761
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    iput v2, p0, Landroid/media/MediaPlayer;->mUsage:I

    .line 1762
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mBypassInterruptionPolicy:Z

    .line 1764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1765
    .local v1, "pattributes":Landroid/os/Parcel;
    invoke-virtual {p1, v1, v3}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1766
    const/16 v2, 0x578

    invoke-direct {p0, v2, v1}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    .line 1767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1768
    return-void

    .line 1762
    .end local v1    # "pattributes":Landroid/os/Parcel;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public native setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "streamtype"    # I

    .prologue
    .line 1732
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAudioStreamType(I)V

    .line 1733
    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 1734
    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 1
    .param p1, "level"    # F

    .prologue
    .line 1874
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1878
    :goto_0
    return-void

    .line 1877
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 968
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 969
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 985
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 986
    .local v9, "scheme":Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 987
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    const-string v0, "content"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "settings"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 992
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    .line 994
    if-nez p2, :cond_2

    .line 995
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to resolve default ringtone"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_2
    const/4 v7, 0x0

    .line 1001
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1002
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1003
    if-nez v7, :cond_3

    .line 1018
    if-eqz v7, :cond_0

    .line 1019
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1009
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 1010
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    :goto_1
    if-eqz v7, :cond_0

    .line 1019
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1012
    :cond_4
    :try_start_2
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1015
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1016
    .local v6, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t open file on client side; trying server side: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1018
    if-eqz v7, :cond_5

    .line 1019
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1023
    :cond_5
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1018
    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 1019
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_6
    throw v0

    .line 1015
    :catch_1
    move-exception v0

    move-object v6, v0

    goto :goto_2
.end method

.method public setDataSource(Landroid/media/MediaDataSource;)V
    .locals 0
    .param p1, "dataSource"    # Landroid/media/MediaDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1142
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setDataSource(Landroid/media/MediaDataSource;)V

    .line 1143
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1113
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1114
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1128
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1129
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1041
    invoke-direct {p0, p1, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1055
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1056
    .local v3, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1058
    .local v4, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1059
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 1060
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 1062
    const/4 v1, 0x0

    .line 1063
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1064
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 1065
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 1066
    add-int/lit8 v1, v1, 0x1

    .line 1067
    goto :goto_0

    .line 1069
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 719
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 721
    if-eqz p1, :cond_0

    .line 722
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 726
    .local v0, "surface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 727
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 728
    return-void

    .line 724
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "surface":Landroid/view/Surface;
    goto :goto_0
.end method

.method public native setLooping(Z)V
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1602
    .local p1, "allow":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "block":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1608
    .local v2, "request":Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    add-int v0, v4, v5

    .line 1610
    .local v0, "capacity":I
    invoke-virtual {v2}, Landroid/os/Parcel;->dataCapacity()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 1611
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 1614
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1615
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1616
    .local v3, "t":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1618
    .end local v3    # "t":Ljava/lang/Integer;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1619
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1620
    .restart local v3    # "t":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1622
    .end local v3    # "t":Ljava/lang/Integer;
    :cond_2
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v4

    return v4
.end method

.method public native setNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 3084
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 3085
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 3050
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 3051
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 3320
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 3321
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 3452
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 3453
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 3023
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 3024
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 3111
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 3112
    return-void
.end method

.method public setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .prologue
    .line 3197
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 3198
    return-void
.end method

.method public setOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    .prologue
    .line 3237
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    .line 3238
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedTextListener;

    .prologue
    .line 3172
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 3173
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 3143
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 3144
    return-void
.end method

.method public native setPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method public setRetransmitEndpoint(Ljava/net/InetSocketAddress;)V
    .locals 6
    .param p1, "endpoint"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2748
    const/4 v0, 0x0

    .line 2749
    .local v0, "addrString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2751
    .local v1, "port":I
    if-eqz p1, :cond_0

    .line 2752
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 2753
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 2756
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->native_setRetransmitEndpoint(Ljava/lang/String;I)I

    move-result v2

    .line 2757
    .local v2, "ret":I
    if-eqz v2, :cond_1

    .line 2758
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal re-transmit endpoint; native ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2760
    :cond_1
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 1296
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 1297
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1298
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1301
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1303
    :cond_1
    return-void
.end method

.method public setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/SubtitleController;
    .param p2, "anchor"    # Landroid/media/SubtitleController$Anchor;

    .prologue
    .line 2148
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    .line 2149
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 2150
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 749
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 750
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 753
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 754
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 755
    return-void
.end method

.method public native setSyncParams(Landroid/media/SyncParams;)V
.end method

.method public setVideoScalingMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 798
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaling mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 802
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 803
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 805
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 806
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 813
    return-void

    .line 810
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .prologue
    .line 1815
    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1816
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 1802
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1806
    :goto_0
    return-void

    .line 1805
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    goto :goto_0
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 1268
    const/4 v1, 0x0

    .line 1269
    .local v1, "washeld":Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 1270
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1271
    const/4 v1, 0x1

    .line 1272
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1274
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1277
    :cond_1
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1278
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-class v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1279
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1280
    if-eqz v1, :cond_2

    .line 1281
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1283
    :cond_2
    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1186
    const/4 v0, 0x7

    iget v1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    invoke-static {v0, v1, v3, v3}, Lmiui/util/QuietUtils;->checkQuiet(IILjava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    :goto_0
    return-void

    .line 1191
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    invoke-direct {p0, v2, v2}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    .line 1194
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1195
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1232
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    .line 1233
    return-void
.end method
