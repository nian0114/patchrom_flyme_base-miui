.class public Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;
.super Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;
.source "SetupChooseLockPattern.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/c;


# instance fields
.field private Ai:Lcom/android/setupwizardlib/view/NavigationBar;

.field private Aj:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 85
    const v0, 0x7f040142

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    .line 87
    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->qj()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->Ai:Lcom/android/setupwizardlib/view/NavigationBar;

    .line 88
    iget-object v1, p0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->Ai:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->a(Lcom/android/setupwizardlib/view/c;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->m(Ljava/lang/CharSequence;)V

    .line 90
    return-object v0
.end method

.method protected a(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->Aj:Landroid/widget/Button;

    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eL:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hZ()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 137
    :cond_0
    return-void
.end method

.method public ia()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->Aj:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f1302af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->Aj:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->Aj:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/hJ;->a(Landroid/app/Activity;)V

    .line 99
    return-void
.end method
