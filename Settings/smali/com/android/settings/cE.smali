.class Lcom/android/settings/cE;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mg:Lcom/android/settings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings/cE;->mg:Lcom/android/settings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/cE;->mg:Lcom/android/settings/DreamSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/DreamSettings;->showDialog(I)V

    .line 168
    return-void
.end method