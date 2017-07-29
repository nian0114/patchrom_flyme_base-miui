.class Lcom/android/settings_ex/dF;
.super Ljava/lang/Object;
.source "KeyguardShortcutChooserSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic oH:Lcom/android/settings_ex/dD;

.field final synthetic oI:Lcom/android/settings_ex/dE;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dE;Lcom/android/settings_ex/dD;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings_ex/dF;->oI:Lcom/android/settings_ex/dE;

    iput-object p2, p0, Lcom/android/settings_ex/dF;->oH:Lcom/android/settings_ex/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/dF;->oI:Lcom/android/settings_ex/dE;

    iget-object v0, v0, Lcom/android/settings_ex/dE;->oG:Lcom/android/settings_ex/KeyguardShortcutChooserSettings;

    iget-object v1, p0, Lcom/android/settings_ex/dF;->oH:Lcom/android/settings_ex/dD;

    iget-object v1, v1, Lcom/android/settings_ex/dD;->oF:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings_ex/KeyguardShortcutChooserSettings;->a(Lcom/android/settings_ex/KeyguardShortcutChooserSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/dF;->oI:Lcom/android/settings_ex/dE;

    iget-object v0, v0, Lcom/android/settings_ex/dE;->oG:Lcom/android/settings_ex/KeyguardShortcutChooserSettings;

    invoke-static {v0}, Lcom/android/settings_ex/KeyguardShortcutChooserSettings;->b(Lcom/android/settings_ex/KeyguardShortcutChooserSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/dF;->oI:Lcom/android/settings_ex/dE;

    iget-object v0, v0, Lcom/android/settings_ex/dE;->oG:Lcom/android/settings_ex/KeyguardShortcutChooserSettings;

    invoke-static {v0}, Lcom/android/settings_ex/KeyguardShortcutChooserSettings;->c(Lcom/android/settings_ex/KeyguardShortcutChooserSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "keyguard_left_function_chooser"

    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/dF;->oI:Lcom/android/settings_ex/dE;

    iget-object v2, v2, Lcom/android/settings_ex/dE;->oG:Lcom/android/settings_ex/KeyguardShortcutChooserSettings;

    invoke-static {v2}, Lcom/android/settings_ex/KeyguardShortcutChooserSettings;->d(Lcom/android/settings_ex/KeyguardShortcutChooserSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/dF;->oI:Lcom/android/settings_ex/dE;

    iget-object v1, v0, Lcom/android/settings_ex/dE;->oG:Lcom/android/settings_ex/KeyguardShortcutChooserSettings;

    iget-object v0, p0, Lcom/android/settings_ex/dF;->oI:Lcom/android/settings_ex/dE;

    iget-object v0, v0, Lcom/android/settings_ex/dE;->oG:Lcom/android/settings_ex/KeyguardShortcutChooserSettings;

    invoke-static {v0}, Lcom/android/settings_ex/KeyguardShortcutChooserSettings;->c(Lcom/android/settings_ex/KeyguardShortcutChooserSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c11c2

    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ex/dF;->oH:Lcom/android/settings_ex/dD;

    iget-object v3, v3, Lcom/android/settings_ex/dD;->label:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/android/settings_ex/KeyguardShortcutChooserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/android/settings_ex/dF;->oI:Lcom/android/settings_ex/dE;

    iget-object v1, v1, Lcom/android/settings_ex/dE;->oG:Lcom/android/settings_ex/KeyguardShortcutChooserSettings;

    invoke-static {v1}, Lcom/android/settings_ex/KeyguardShortcutChooserSettings;->b(Lcom/android/settings_ex/KeyguardShortcutChooserSettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/dF;->oI:Lcom/android/settings_ex/dE;

    iget-object v0, v0, Lcom/android/settings_ex/dE;->oG:Lcom/android/settings_ex/KeyguardShortcutChooserSettings;

    invoke-static {v0}, Lcom/android/settings_ex/KeyguardShortcutChooserSettings;->e(Lcom/android/settings_ex/KeyguardShortcutChooserSettings;)Lcom/android/settings_ex/dE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/dE;->notifyDataSetChanged()V

    .line 128
    return-void

    .line 120
    :cond_0
    const-string v0, "keyguard_right_function_chooser"

    goto :goto_0

    .line 124
    :cond_1
    const v0, 0x7f0c11c3

    goto :goto_1
.end method
