.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteConnection$Arguments;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_MILLIS:I = 0x3e8

.field private static final MAX_ZYGOTE_ARGC:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final intArray2d:[[I


# instance fields
.field private final abiList:Ljava/lang/String;

.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final mSocketReader:Ljava/io/BufferedReader;

.field private final peer:Landroid/net/Credentials;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 55
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    return-void
.end method

.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 4
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 91
    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    .line 93
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 96
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    .line 99
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    throw v0
.end method

.method public static applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 2
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    .prologue
    .line 651
    const-string v0, "1"

    const-string v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 654
    :cond_0
    return-void
.end method

.method private static applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 3
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    .line 673
    .local v0, "peerUid":I
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 674
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "Peer is not permitted to specify an explicit invoke-with wrapper command"

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 677
    :cond_0
    return-void
.end method

.method public static applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 6
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    .prologue
    const/16 v5, 0x1f

    const/16 v4, 0x1e

    const/4 v3, 0x0

    .line 685
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "property":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 689
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_2

    .line 690
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 695
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 696
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 697
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 700
    .end local v0    # "property":Ljava/lang/String;
    :cond_1
    return-void

    .line 692
    .restart local v0    # "property":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 5
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3e8

    const/4 v2, 0x1

    .line 614
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 615
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "factoryTest":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 623
    .local v1, "uidRestricted":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-ge v3, v4, :cond_1

    .line 624
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "System UID may not launch process with UID < 1000"

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 621
    .end local v1    # "uidRestricted":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 631
    .end local v0    # "factoryTest":Ljava/lang/String;
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v3, :cond_2

    .line 632
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 633
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 635
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v3, :cond_3

    .line 636
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 637
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 639
    :cond_3
    return-void
.end method

.method private handleAbiListQuery()Z
    .locals 4

    .prologue
    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 263
    .local v0, "abiListBytes":[B
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 264
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    const/4 v2, 0x0

    .line 268
    .end local v0    # "abiListBytes":[B
    :goto_0
    return v2

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "Zygote"

    const-string v3, "Error writing to command socket"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    .locals 11
    .param p1, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p2, "descriptors"    # [Ljava/io/FileDescriptor;
    .param p3, "pipeFd"    # Ljava/io/FileDescriptor;
    .param p4, "newStderr"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 726
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 728
    if-eqz p2, :cond_1

    .line 730
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    sget v1, Landroid/system/OsConstants;->STDIN_FILENO:I

    invoke-static {v0, v1}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    .line 731
    const/4 v0, 0x1

    aget-object v0, p2, v0

    sget v1, Landroid/system/OsConstants;->STDOUT_FILENO:I

    invoke-static {v0, v1}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    .line 732
    const/4 v0, 0x2

    aget-object v0, p2, v0

    sget v1, Landroid/system/OsConstants;->STDERR_FILENO:I

    invoke-static {v0, v1}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    .line 734
    move-object v6, p2

    .local v6, "arr$":[Ljava/io/FileDescriptor;
    array-length v10, v6

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v8, v6, v9

    .line 735
    .local v8, "fd":Ljava/io/FileDescriptor;
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 734
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 737
    .end local v8    # "fd":Ljava/io/FileDescriptor;
    :cond_0
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    .end local v6    # "arr$":[Ljava/io/FileDescriptor;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 748
    :cond_2
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 749
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 750
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 758
    :goto_2
    return-void

    .line 738
    :catch_0
    move-exception v7

    .line 739
    .local v7, "ex":Landroid/system/ErrnoException;
    const-string v0, "Zygote"

    const-string v1, "Error reopening stdio"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 755
    .end local v7    # "ex":Landroid/system/ErrnoException;
    :cond_3
    iget v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_2
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    .locals 12
    .param p1, "pid"    # I
    .param p2, "descriptors"    # [Ljava/io/FileDescriptor;
    .param p3, "pipeFd"    # Ljava/io/FileDescriptor;
    .param p4, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    .prologue
    .line 775
    if-lez p1, :cond_0

    .line 776
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    .line 779
    :cond_0
    if-eqz p2, :cond_1

    .line 780
    move-object v0, p2

    .local v0, "arr$":[Ljava/io/FileDescriptor;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v2, v0, v3

    .line 781
    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 780
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 785
    .end local v0    # "arr$":[Ljava/io/FileDescriptor;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    const/4 v8, 0x0

    .line 786
    .local v8, "usingWrapper":Z
    if-eqz p3, :cond_3

    if-lez p1, :cond_3

    .line 787
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 788
    .local v5, "is":Ljava/io/DataInputStream;
    const/4 v4, -0x1

    .line 790
    .local v4, "innerPid":I
    :try_start_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 795
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 802
    :goto_1
    if-lez v4, :cond_3

    .line 803
    move v7, v4

    .line 804
    .local v7, "parentPid":I
    :goto_2
    if-lez v7, :cond_2

    if-eq v7, p1, :cond_2

    .line 805
    invoke-static {v7}, Landroid/os/Process;->getParentPid(I)I

    move-result v7

    goto :goto_2

    .line 791
    .end local v7    # "parentPid":I
    :catch_0
    move-exception v1

    .line 792
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v9, "Zygote"

    const-string v10, "Error reading pid from wrapped process, child may have died"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 795
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 796
    :catch_1
    move-exception v9

    goto :goto_1

    .line 794
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 795
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 797
    :goto_3
    throw v9

    .line 807
    .restart local v7    # "parentPid":I
    :cond_2
    if-lez v7, :cond_4

    .line 808
    const-string v9, "Zygote"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrapped process has pid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    move p1, v4

    .line 810
    const/4 v8, 0x1

    .line 820
    .end local v4    # "innerPid":I
    .end local v5    # "is":Ljava/io/DataInputStream;
    .end local v7    # "parentPid":I
    :cond_3
    :goto_4
    :try_start_5
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v9, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 821
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v9, v8}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 827
    const/4 v9, 0x0

    :goto_5
    return v9

    .line 812
    .restart local v4    # "innerPid":I
    .restart local v5    # "is":Ljava/io/DataInputStream;
    .restart local v7    # "parentPid":I
    :cond_4
    const-string v9, "Zygote"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " innerPid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 822
    .end local v4    # "innerPid":I
    .end local v5    # "is":Ljava/io/DataInputStream;
    .end local v7    # "parentPid":I
    :catch_2
    move-exception v1

    .line 823
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v9, "Zygote"

    const-string v10, "Error writing to command socket"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    const/4 v9, 0x1

    goto :goto_5

    .line 796
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "innerPid":I
    .restart local v5    # "is":Ljava/io/DataInputStream;
    :catch_3
    move-exception v9

    goto :goto_1

    :catch_4
    move-exception v10

    goto :goto_3
.end method

.method private static logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "newStderr"    # Ljava/io/PrintStream;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 854
    const-string v0, "Zygote"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    if-eqz p0, :cond_1

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2    # "ex":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 858
    :cond_1
    return-void
.end method

.method private readArgumentList()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, "s":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 577
    const/4 v3, 0x0

    .line 599
    :cond_0
    return-object v3

    .line 579
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 586
    .local v0, "argc":I
    const/16 v5, 0x400

    if-le v0, v5, :cond_2

    .line 587
    new-instance v5, Ljava/io/IOException;

    const-string v6, "max arg count exceeded"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 580
    .end local v0    # "argc":I
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 581
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string v5, "Zygote"

    const-string v6, "invalid Zygote wire format: non-int at argc"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v5, Ljava/io/IOException;

    const-string v6, "invalid wire format"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 590
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "argc":I
    .restart local v4    # "s":Ljava/lang/String;
    :cond_2
    new-array v3, v0, [Ljava/lang/String;

    .line 591
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 592
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 593
    aget-object v5, v3, v2

    if-nez v5, :cond_3

    .line 595
    new-instance v5, Ljava/io/IOException;

    const-string v6, "truncated request"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 591
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setChildPgid(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 833
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v1}, Landroid/net/Credentials;->getPid()I

    move-result v1

    invoke-static {v1}, Landroid/system/Os;->getpgid(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_0
    return-void

    .line 834
    :catch_0
    move-exception v0

    .line 839
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v1, "Zygote"

    const-string v2, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method closeSocket()V
    .locals 3

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getFileDesciptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method runOnce()Z
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 135
    const/16 v23, 0x0

    .line 139
    .local v23, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->readArgumentList()[Ljava/lang/String;

    move-result-object v17

    .line 140
    .local v17, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 147
    .local v19, "descriptors":[Ljava/io/FileDescriptor;
    if-nez v17, :cond_0

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 150
    const/4 v6, 0x1

    .line 256
    .end local v17    # "args":[Ljava/lang/String;
    .end local v19    # "descriptors":[Ljava/io/FileDescriptor;
    :goto_0
    return v6

    .line 141
    :catch_0
    move-exception v20

    .line 142
    .local v20, "ex":Ljava/io/IOException;
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException on command socket "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 144
    const/4 v6, 0x1

    goto :goto_0

    .line 154
    .end local v20    # "ex":Ljava/io/IOException;
    .restart local v17    # "args":[Ljava/lang/String;
    .restart local v19    # "descriptors":[Ljava/io/FileDescriptor;
    :cond_0
    const/16 v22, 0x0

    .line 156
    .local v22, "newStderr":Ljava/io/PrintStream;
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    array-length v6, v0

    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    .line 157
    new-instance v22, Ljava/io/PrintStream;

    .end local v22    # "newStderr":Ljava/io/PrintStream;
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x2

    aget-object v7, v19, v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 161
    .restart local v22    # "newStderr":Ljava/io/PrintStream;
    :cond_1
    const/16 v25, -0x1

    .line 162
    .local v25, "pid":I
    const/16 v18, 0x0

    .line 163
    .local v18, "childPipeFd":Ljava/io/FileDescriptor;
    const/16 v27, 0x0

    .line 166
    .local v27, "serverPipeFd":Ljava/io/FileDescriptor;
    :try_start_1
    new-instance v24, Lcom/android/internal/os/ZygoteConnection$Arguments;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_1 .. :try_end_1} :catch_3

    .line 168
    .end local v23    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v24, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_2
    move-object/from16 v0, v24

    iget-boolean v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    if-eqz v6, :cond_2

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handleAbiListQuery()Z

    move-result v6

    move-object/from16 v23, v24

    .end local v24    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v23    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_0

    .line 172
    .end local v23    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v24    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :cond_2
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 173
    :cond_3
    new-instance v6, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    iget-wide v8, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", effective=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    iget-wide v8, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_2 .. :try_end_2} :catch_4

    .line 229
    :catch_1
    move-exception v20

    move-object/from16 v23, v24

    .line 230
    .end local v24    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v20, "ex":Landroid/system/ErrnoException;
    .restart local v23    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :goto_1
    const-string v6, "Exception creating pipe"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    .end local v20    # "ex":Landroid/system/ErrnoException;
    :goto_2
    if-nez v25, :cond_9

    .line 241
    :try_start_3
    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 242
    const/16 v27, 0x0

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    const/4 v6, 0x1

    .line 255
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 256
    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto/16 :goto_0

    .line 178
    .end local v23    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v24    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Lcom/android/internal/os/ZygoteConnection;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 181
    invoke-static/range {v24 .. v24}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 182
    invoke-static/range {v24 .. v24}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 184
    const/4 v10, 0x0

    check-cast v10, [[I

    .line 186
    .local v10, "rlimits":[[I
    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 187
    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "rlimits":[[I
    check-cast v10, [[I

    .line 190
    .restart local v10    # "rlimits":[[I
    :cond_5
    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 191
    sget v6, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v6}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v26

    .line 192
    .local v26, "pipeFds":[Ljava/io/FileDescriptor;
    const/4 v6, 0x1

    aget-object v18, v26, v6

    .line 193
    const/4 v6, 0x0

    aget-object v27, v26, v6

    .line 194
    sget v6, Landroid/system/OsConstants;->F_SETFD:I

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    .line 209
    .end local v26    # "pipeFds":[Ljava/io/FileDescriptor;
    :cond_6
    const/4 v6, 0x2

    new-array v14, v6, [I

    fill-array-data v14, :array_0

    .line 211
    .local v14, "fdsToClose":[I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    .line 213
    .local v21, "fd":Ljava/io/FileDescriptor;
    if-eqz v21, :cond_7

    .line 214
    const/4 v6, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v7

    aput v7, v14, v6

    .line 217
    :cond_7
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getServerSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    .line 219
    if-eqz v21, :cond_8

    .line 220
    const/4 v6, 0x1

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v7

    aput v7, v14, v6

    .line 223
    :cond_8
    const/16 v21, 0x0

    .line 225
    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    move-object/from16 v0, v24

    iget v11, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    move-object/from16 v0, v24

    iget-object v12, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v13, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v6 .. v16}, Lcom/android/internal/os/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v25

    move-object/from16 v23, v24

    .line 236
    .end local v24    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v23    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto/16 :goto_2

    .line 231
    .end local v10    # "rlimits":[[I
    .end local v14    # "fdsToClose":[I
    .end local v21    # "fd":Ljava/io/FileDescriptor;
    :catch_2
    move-exception v20

    .line 232
    .local v20, "ex":Ljava/lang/IllegalArgumentException;
    :goto_3
    const-string v6, "Invalid zygote arguments"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 233
    .end local v20    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v20

    .line 234
    .local v20, "ex":Lcom/android/internal/os/ZygoteSecurityException;
    :goto_4
    const-string v6, "Zygote security policy prevents request: "

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 250
    .end local v20    # "ex":Lcom/android/internal/os/ZygoteSecurityException;
    :cond_9
    :try_start_5
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 251
    const/16 v18, 0x0

    .line 252
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v6

    .line 255
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 256
    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto/16 :goto_0

    .line 255
    :catchall_0
    move-exception v6

    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 256
    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v6

    .line 233
    .end local v23    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v24    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_4
    move-exception v20

    move-object/from16 v23, v24

    .end local v24    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v23    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_4

    .line 231
    .end local v23    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v24    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_5
    move-exception v20

    move-object/from16 v23, v24

    .end local v24    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v23    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_3

    .line 229
    :catch_6
    move-exception v20

    goto/16 :goto_1

    .line 209
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
