.class Lcom/android/settings_ex/gz;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic yb:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/android/settings_ex/gz;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 1023
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1024
    iget-object v1, p0, Lcom/android/settings_ex/gz;->yb:Lcom/android/settings_ex/RadioInfo;

    const-class v2, Lcom/android/settings_ex/BandMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1025
    iget-object v1, p0, Lcom/android/settings_ex/gz;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 1026
    const/4 v0, 0x1

    return v0
.end method
