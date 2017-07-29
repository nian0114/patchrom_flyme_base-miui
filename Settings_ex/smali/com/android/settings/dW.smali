.class Lcom/android/settings_ex/dW;
.super Ljava/lang/Object;
.source "MiuiAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic pX:Lcom/android/settings_ex/dV;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dV;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/settings_ex/dW;->pX:Lcom/android/settings_ex/dV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ex/dW;->pX:Lcom/android/settings_ex/dV;

    invoke-static {v0}, Lcom/android/settings_ex/dV;->a(Lcom/android/settings_ex/dV;)V

    .line 23
    return-void
.end method
