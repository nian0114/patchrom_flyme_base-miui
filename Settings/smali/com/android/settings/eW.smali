.class Lcom/android/settings/eW;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic sl:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/settings/eW;->sl:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 898
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/eW;->sl:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/eW;->sl:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 900
    new-instance v1, Lcom/android/settings/cZ;

    iget-object v0, p0, Lcom/android/settings/eW;->sl:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/settings/cZ;-><init>(Landroid/content/Context;)V

    .line 902
    iget-object v0, p0, Lcom/android/settings/eW;->sl:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 903
    invoke-static {v0, v1}, Lcom/android/settings/dB;->a(Ljava/lang/String;Lcom/android/settings/cZ;)V

    goto :goto_0

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/android/settings/eW;->sl:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 906
    iget-object v0, p0, Lcom/android/settings/eW;->sl:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->b(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    .line 910
    :goto_1
    return-void

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/android/settings/eW;->sl:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->f(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V

    goto :goto_1
.end method
