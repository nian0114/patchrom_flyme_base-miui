.class Lcom/android/settings_ex/applications/InstalledAppDetails$5;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic IS:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 937
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$5;->IS:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Loader;Lcom/android/settings_ex/d/a;)V
    .locals 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$5;->IS:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-static {v0, p2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->a(Lcom/android/settings_ex/applications/InstalledAppDetails;Lcom/android/settings_ex/d/a;)Lcom/android/settings_ex/d/a;

    .line 947
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$5;->IS:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->e(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$5;->IS:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-static {v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->d(Lcom/android/settings_ex/applications/InstalledAppDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 948
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3

    .prologue
    .line 941
    new-instance v0, Lcom/android/settings_ex/d/b;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$5;->IS:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$5;->IS:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->c(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_ex/d/b;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 937
    check-cast p2, Lcom/android/settings_ex/d/a;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/applications/InstalledAppDetails$5;->a(Landroid/content/Loader;Lcom/android/settings_ex/d/a;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    .prologue
    .line 953
    return-void
.end method
