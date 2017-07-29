.class Lcom/android/settings_ex/gP;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# instance fields
.field final synthetic yb:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/settings_ex/gP;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/settings_ex/gP;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->t(Lcom/android/settings_ex/RadioInfo;)V

    .line 562
    return-void
.end method
