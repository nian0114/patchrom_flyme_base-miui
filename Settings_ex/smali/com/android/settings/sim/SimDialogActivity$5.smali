.class Lcom/android/settings_ex/sim/SimDialogActivity$5;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic apC:Lcom/android/settings_ex/sim/SimDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/SimDialogActivity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimDialogActivity$5;->apC:Lcom/android/settings_ex/sim/SimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimDialogActivity$5;->apC:Lcom/android/settings_ex/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/sim/SimDialogActivity;->finish()V

    .line 268
    return-void
.end method