.class Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_ex/widget/L;


# instance fields
.field final synthetic DI:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->DI:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ex/widget/K;Z)Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->DI:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;->me:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/widget/SwitchBar;->bw(Z)V

    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->DI:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->DI:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->DI:Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;->zY:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/settings_ex/accessibility/ToggleScreenMagnificationPreferenceFragment;->b(Ljava/lang/String;Z)V

    .line 57
    const/4 v0, 0x0

    return v0
.end method