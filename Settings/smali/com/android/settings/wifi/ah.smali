.class Lcom/android/settings/wifi/ah;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aDi:Lcom/android/settings/wifi/ag;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/ag;)V
    .locals 0

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/android/settings/wifi/ah;->aDi:Lcom/android/settings/wifi/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/settings/wifi/ah;->aDi:Lcom/android/settings/wifi/ag;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ag;->xj()V

    .line 1508
    return-void
.end method