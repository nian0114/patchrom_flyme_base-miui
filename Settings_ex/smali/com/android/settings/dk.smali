.class Lcom/android/settings_ex/dk;
.super Ljava/lang/Object;
.source "HeadsetCalibrateFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic nq:Lcom/android/settings_ex/HeadsetCalibrateFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/HeadsetCalibrateFragment;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings_ex/dk;->nq:Lcom/android/settings_ex/HeadsetCalibrateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 211
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/dk;->nq:Lcom/android/settings_ex/HeadsetCalibrateFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/HeadsetCalibrateFragment;->a(Lcom/android/settings_ex/HeadsetCalibrateFragment;Z)Z

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dk;->nq:Lcom/android/settings_ex/HeadsetCalibrateFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/HeadsetCalibrateFragment;->finish()V

    .line 216
    return-void
.end method
