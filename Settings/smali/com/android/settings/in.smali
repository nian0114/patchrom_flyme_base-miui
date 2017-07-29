.class Lcom/android/settings_ex/in;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# instance fields
.field private final BA:Landroid/util/SparseArray;

.field private final BB:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

.field private final BC:Lcom/android/settings_ex/is;

.field final synthetic Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/is;)V
    .locals 1

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/settings_ex/in;->Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/in;->BA:Landroid/util/SparseArray;

    .line 408
    iput-object p3, p0, Lcom/android/settings_ex/in;->BC:Lcom/android/settings_ex/is;

    .line 409
    iput-object p2, p0, Lcom/android/settings_ex/in;->BB:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/is;Lcom/android/settings_ex/if;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/in;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/is;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ex/in;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/in;->BA:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ex/in;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/in;->BB:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ex/in;)Lcom/android/settings_ex/is;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/in;->BC:Lcom/android/settings_ex/is;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/android/settings_ex/iq;)V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/settings_ex/in;->BA:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/settings_ex/in;->BA:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/settings_ex/iq;->mProfileId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 513
    if-eqz v0, :cond_0

    .line 514
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 517
    :cond_0
    return-void
.end method
