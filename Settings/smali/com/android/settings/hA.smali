.class Lcom/android/settings/hA;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic zS:Lcom/android/settings/hz;


# direct methods
.method constructor <init>(Lcom/android/settings/hz;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings/hA;->zS:Lcom/android/settings/hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/hA;->zS:Lcom/android/settings/hz;

    iget-object v0, v0, Lcom/android/settings/hz;->zR:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->i(Lcom/android/settings/SettingsFragment;)V

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method