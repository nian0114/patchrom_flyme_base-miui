.class Lcom/android/settings/in;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# instance fields
.field private final BA:Landroid/util/SparseArray;

.field private final BB:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field private final BC:Lcom/android/settings/is;

.field final synthetic Bt:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/is;)V
    .locals 1

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/settings/in;->Bt:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/in;->BA:Landroid/util/SparseArray;

    .line 408
    iput-object p3, p0, Lcom/android/settings/in;->BC:Lcom/android/settings/is;

    .line 409
    iput-object p2, p0, Lcom/android/settings/in;->BB:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/is;Lcom/android/settings/if;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/in;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/is;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/in;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings/in;->BA:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/in;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings/in;->BB:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/in;)Lcom/android/settings/is;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings/in;->BC:Lcom/android/settings/is;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/android/settings/iq;)V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/settings/in;->BA:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/settings/in;->BA:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/settings/iq;->mProfileId:I

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
