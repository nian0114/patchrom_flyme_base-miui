.class Lcom/android/settings/ht;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic zD:Lcom/android/settings/hp;


# direct methods
.method constructor <init>(Lcom/android/settings/hp;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/settings/ht;->zD:Lcom/android/settings/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/settings/ht;->zD:Lcom/android/settings/hp;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/ht;->zD:Lcom/android/settings/hp;

    invoke-virtual {v2}, Lcom/android/settings/hp;->hN()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/hp;->setResult(ILandroid/content/Intent;)V

    .line 737
    iget-object v0, p0, Lcom/android/settings/ht;->zD:Lcom/android/settings/hp;

    invoke-virtual {v0}, Lcom/android/settings/hp;->finish()V

    .line 738
    return-void
.end method