.class Lcom/android/settings/hF;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic zV:Lcom/android/settings/he;

.field final synthetic zW:Lcom/android/settings/hE;


# direct methods
.method constructor <init>(Lcom/android/settings/hE;Lcom/android/settings/he;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/settings/hF;->zW:Lcom/android/settings/hE;

    iput-object p2, p0, Lcom/android/settings/hF;->zV:Lcom/android/settings/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/settings/hF;->zW:Lcom/android/settings/hE;

    iget-object v0, v0, Lcom/android/settings/hE;->zR:Lcom/android/settings/SettingsFragment;

    iget-object v1, p0, Lcom/android/settings/hF;->zV:Lcom/android/settings/he;

    invoke-static {v0, p1, v1}, Lcom/android/settings/SettingsFragment;->a(Lcom/android/settings/SettingsFragment;Landroid/view/View;Lcom/android/settings/he;)V

    .line 571
    return-void
.end method
