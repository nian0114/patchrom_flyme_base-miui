.class Lcom/android/settings_ex/print/e;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Lcom/android/settings_ex/widget/M;


# instance fields
.field final synthetic amt:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings_ex/print/e;->amt:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ex/widget/ToggleSwitch;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 370
    if-eqz p2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/settings_ex/print/e;->amt:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-static {v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->e(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/settings_ex/print/e;->amt:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-static {v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->g(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/widget/SwitchBar;->bw(Z)V

    .line 373
    iget-object v2, p0, Lcom/android/settings_ex/print/e;->amt:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_CHECKED"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 374
    iget-object v1, p0, Lcom/android/settings_ex/print/e;->amt:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-static {v1, v0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->c(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;I)V

    .line 381
    :goto_0
    return v0

    .line 377
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/print/e;->amt:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    iget-object v3, p0, Lcom/android/settings_ex/print/e;->amt:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-static {v3}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->f(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->a(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    .line 381
    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/print/e;->amt:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    iget-object v2, p0, Lcom/android/settings_ex/print/e;->amt:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-static {v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->f(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->a(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    goto :goto_1
.end method
