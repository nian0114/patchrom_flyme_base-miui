.class Lcom/android/settings_ex/hy;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic zR:Lcom/android/settings_ex/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsFragment;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings_ex/hy;->zR:Lcom/android/settings_ex/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/hy;->zR:Lcom/android/settings_ex/SettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/hy;->zR:Lcom/android/settings_ex/SettingsFragment;

    invoke-static {v1}, Lcom/android/settings_ex/SettingsFragment;->a(Lcom/android/settings_ex/SettingsFragment;)Lmiui/view/SearchActionMode$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 147
    return-void
.end method
