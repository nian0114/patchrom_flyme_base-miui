.class Lcom/android/settings_ex/ip;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# instance fields
.field private final BE:Lcom/android/settings_ex/iq;

.field final synthetic Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/iq;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/settings_ex/ip;->Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 750
    iput-object p2, p0, Lcom/android/settings_ex/ip;->BE:Lcom/android/settings_ex/iq;

    .line 751
    invoke-static {p1, p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->a(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/ip;)Lcom/android/settings_ex/ip;

    .line 752
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/iq;Lcom/android/settings_ex/if;)V
    .locals 0

    .prologue
    .line 746
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ip;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/iq;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/ip;->Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->d(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ip;->BE:Lcom/android/settings_ex/iq;

    iget v1, v1, Lcom/android/settings_ex/iq;->mProfileId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/KeyChain$KeyChainConnection;

    .line 759
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0

    .line 760
    iget-object v1, p0, Lcom/android/settings_ex/ip;->BE:Lcom/android/settings_ex/iq;

    invoke-static {v1}, Lcom/android/settings_ex/iq;->d(Lcom/android/settings_ex/iq;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/settings_ex/ip;->BE:Lcom/android/settings_ex/iq;

    invoke-static {v1}, Lcom/android/settings_ex/iq;->j(Lcom/android/settings_ex/iq;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 762
    invoke-interface {v0, v1}, Landroid/security/IKeyChainService;->installCaCertificate([B)V

    .line 763
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 771
    :goto_0
    return-object v0

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ip;->BE:Lcom/android/settings_ex/iq;

    invoke-static {v1}, Lcom/android/settings_ex/iq;->i(Lcom/android/settings_ex/iq;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 769
    :goto_1
    const-string v1, "TrustedCredentialsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while toggling alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/ip;->BE:Lcom/android/settings_ex/iq;

    invoke-static {v3}, Lcom/android/settings_ex/iq;->i(Lcom/android/settings_ex/iq;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 767
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 746
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/ip;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/settings_ex/ip;->BE:Lcom/android/settings_ex/iq;

    invoke-static {v0}, Lcom/android/settings_ex/iq;->e(Lcom/android/settings_ex/iq;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/ip;->BE:Lcom/android/settings_ex/iq;

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->a(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;ZLcom/android/settings_ex/iq;)V

    .line 778
    iget-object v0, p0, Lcom/android/settings_ex/ip;->Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->a(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/ip;)Lcom/android/settings_ex/ip;

    .line 779
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 746
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/ip;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
