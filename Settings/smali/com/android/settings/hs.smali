.class Lcom/android/settings/hs;
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
    .line 727
    iput-object p1, p0, Lcom/android/settings/hs;->zD:Lcom/android/settings/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/settings/hs;->zD:Lcom/android/settings/hp;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/hs;->zD:Lcom/android/settings/hp;

    invoke-virtual {v2}, Lcom/android/settings/hp;->hN()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/hp;->setResult(ILandroid/content/Intent;)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/hs;->zD:Lcom/android/settings/hp;

    invoke-virtual {v0}, Lcom/android/settings/hp;->finish()V

    .line 731
    return-void
.end method