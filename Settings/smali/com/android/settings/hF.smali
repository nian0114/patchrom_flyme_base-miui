.class Lcom/android/settings_ex/hF;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic zV:Lcom/android/settings_ex/he;

.field final synthetic zW:Lcom/android/settings_ex/hE;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/hE;Lcom/android/settings_ex/he;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/settings_ex/hF;->zW:Lcom/android/settings_ex/hE;

    iput-object p2, p0, Lcom/android/settings_ex/hF;->zV:Lcom/android/settings_ex/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/settings_ex/hF;->zW:Lcom/android/settings_ex/hE;

    iget-object v0, v0, Lcom/android/settings_ex/hE;->zR:Lcom/android/settings_ex/SettingsFragment;

    iget-object v1, p0, Lcom/android/settings_ex/hF;->zV:Lcom/android/settings_ex/he;

    invoke-static {v0, p1, v1}, Lcom/android/settings_ex/SettingsFragment;->a(Lcom/android/settings_ex/SettingsFragment;Landroid/view/View;Lcom/android/settings_ex/he;)V

    .line 571
    return-void
.end method
