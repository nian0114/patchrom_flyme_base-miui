.class public Lcom/xiaomi/push/service/n;
.super Ljava/lang/Object;
.source "MIPushAppInfo.java"


# static fields
.field private static bdn:Lcom/xiaomi/push/service/n;


# instance fields
.field private bdo:Landroid/content/Context;

.field private bdp:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/push/service/n;->bdn:Lcom/xiaomi/push/service/n;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/push/service/n;->bdp:Ljava/util/List;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/push/service/n;->bdo:Landroid/content/Context;

    .line 30
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bdo:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 31
    iput-object p1, p0, Lcom/xiaomi/push/service/n;->bdo:Landroid/content/Context;

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bdo:Landroid/content/Context;

    const-string v2, "mipush_app_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 35
    const-string v2, "unregistered_pkg_names"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 37
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    iget-object v4, p0, Lcom/xiaomi/push/service/n;->bdp:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public static dV(Landroid/content/Context;)Lcom/xiaomi/push/service/n;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/xiaomi/push/service/n;->bdn:Lcom/xiaomi/push/service/n;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/xiaomi/push/service/n;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/n;->bdn:Lcom/xiaomi/push/service/n;

    .line 24
    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/n;->bdn:Lcom/xiaomi/push/service/n;

    return-object v0
.end method


# virtual methods
.method public ea(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bdp:Ljava/util/List;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bdp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public eb(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 51
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bdp:Ljava/util/List;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bdp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bdp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bdp:Ljava/util/List;

    const-string v2, ","

    invoke-static {v0, v2}, Lcom/xiaomi/channel/commonutils/g/d;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/xiaomi/push/service/n;->bdo:Landroid/content/Context;

    const-string v3, "mipush_app_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 57
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "unregistered_pkg_names"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    :cond_0
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ec(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 63
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->bdp:Ljava/util/List;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bdp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bdp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/xiaomi/push/service/n;->bdp:Ljava/util/List;

    const-string v2, ","

    invoke-static {v0, v2}, Lcom/xiaomi/channel/commonutils/g/d;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/xiaomi/push/service/n;->bdo:Landroid/content/Context;

    const-string v3, "mipush_app_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 69
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "unregistered_pkg_names"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    :cond_0
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method