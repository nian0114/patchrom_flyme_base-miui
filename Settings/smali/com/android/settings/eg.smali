.class Lcom/android/settings_ex/eg;
.super Ljava/lang/Object;
.source "MiuiConfirmCommonPassword.java"

# interfaces
.implements Lcom/android/settings_ex/dd;


# instance fields
.field final synthetic qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiConfirmCommonPassword;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public G(I)V
    .locals 2

    .prologue
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->h(Lcom/android/settings_ex/MiuiConfirmCommonPassword;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->R(I)V

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->f(Lcom/android/settings_ex/MiuiConfirmCommonPassword;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->g(Lcom/android/settings_ex/MiuiConfirmCommonPassword;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->setResult(I)V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-virtual {v0}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->finish()V

    goto :goto_0
.end method

.method public onFailed()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->b(Lcom/android/settings_ex/MiuiConfirmCommonPassword;)Lcom/android/settings_ex/cZ;

    move-result-object v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->c(Lcom/android/settings_ex/MiuiConfirmCommonPassword;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f13007b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c110e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->d(Lcom/android/settings_ex/MiuiConfirmCommonPassword;)I

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->e(Lcom/android/settings_ex/MiuiConfirmCommonPassword;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->f(Lcom/android/settings_ex/MiuiConfirmCommonPassword;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->g(Lcom/android/settings_ex/MiuiConfirmCommonPassword;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/eg;->qi:Lcom/android/settings_ex/MiuiConfirmCommonPassword;

    invoke-static {v0}, Lcom/android/settings_ex/MiuiConfirmCommonPassword;->a(Lcom/android/settings_ex/MiuiConfirmCommonPassword;)V

    goto :goto_0
.end method
