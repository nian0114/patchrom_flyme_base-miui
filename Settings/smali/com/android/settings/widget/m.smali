.class Lcom/android/settings_ex/widget/m;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScreenView.java"


# instance fields
.field final synthetic ayX:Lcom/android/settings_ex/widget/ScreenView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/ScreenView;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/settings_ex/widget/m;->ayX:Lcom/android/settings_ex/widget/ScreenView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/settings_ex/widget/m;->ayX:Lcom/android/settings_ex/widget/ScreenView;

    invoke-static {v0}, Lcom/android/settings_ex/widget/ScreenView;->b(Lcom/android/settings_ex/widget/ScreenView;)Lcom/android/settings_ex/widget/u;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/u;->setVisibility(I)V

    .line 585
    return-void
.end method
