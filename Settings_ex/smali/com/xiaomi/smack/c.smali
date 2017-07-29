.class public Lcom/xiaomi/smack/c;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static bhG:Ljava/lang/String;

.field public static bhH:Ljava/lang/String;


# instance fields
.field private bhI:Ljava/lang/String;

.field private bhJ:Z

.field private bhK:Z

.field private bhL:Lcom/xiaomi/smack/f;

.field private bhz:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "wcc-ml-test10.bj"

    sput-object v0, Lcom/xiaomi/smack/c;->bhG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/smack/c;->bhH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/f;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget-boolean v0, Lcom/xiaomi/smack/a;->bho:Z

    iput-boolean v0, p0, Lcom/xiaomi/smack/c;->bhJ:Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/c;->bhK:Z

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/smack/c;->a(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/f;)V

    .line 120
    return-void
.end method

.method public static final JS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/xiaomi/smack/c;->bhH:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/xiaomi/smack/c;->bhH:Ljava/lang/String;

    .line 68
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/c/a;->Fu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "sandbox.xmpush.xiaomi.com"

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lcom/xiaomi/channel/commonutils/c/a;->Fv()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const-string v0, "10.237.14.141"

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "app.chat.xiaomi.net"

    goto :goto_0
.end method

.method private a(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/f;)V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/xiaomi/smack/c;->JS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/c;->host:Ljava/lang/String;

    .line 135
    iput p2, p0, Lcom/xiaomi/smack/c;->port:I

    .line 136
    iput-object p3, p0, Lcom/xiaomi/smack/c;->bhI:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/xiaomi/smack/c;->bhL:Lcom/xiaomi/smack/f;

    .line 138
    return-void
.end method


# virtual methods
.method public JH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/xiaomi/smack/c;->bhz:Ljava/lang/String;

    return-object v0
.end method

.method public JT()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/xiaomi/smack/c;->bhJ:Z

    return v0
.end method

.method public Jf()[B
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public cr(Z)V
    .locals 0

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/xiaomi/smack/c;->bhJ:Z

    .line 210
    return-void
.end method

.method public eq(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/xiaomi/smack/c;->bhz:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/xiaomi/smack/c;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/xiaomi/smack/c;->port:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/xiaomi/smack/c;->bhI:Ljava/lang/String;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/xiaomi/smack/c;->host:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/xiaomi/smack/c;->bhI:Ljava/lang/String;

    .line 147
    return-void
.end method
