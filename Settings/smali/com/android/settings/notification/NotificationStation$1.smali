.class Lcom/android/settings_ex/notification/NotificationStation$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ajQ:Lcom/android/settings_ex/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationStation;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationStation$1;->ajQ:Lcom/android/settings_ex/notification/NotificationStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation$1;->ajQ:Lcom/android/settings_ex/notification/NotificationStation;

    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationStation;->a(Lcom/android/settings_ex/notification/NotificationStation;)V

    .line 82
    return-void
.end method
