.class Lcom/android/settings_ex/p;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# instance fields
.field final synthetic O:Lcom/android/settings_ex/n;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/n;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings_ex/p;->O:Lcom/android/settings_ex/n;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/p;->O:Lcom/android/settings_ex/n;

    invoke-static {v0}, Lcom/android/settings_ex/n;->a(Lcom/android/settings_ex/n;)V

    .line 62
    return-void
.end method
