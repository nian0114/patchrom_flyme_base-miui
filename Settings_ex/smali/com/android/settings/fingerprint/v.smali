.class Lcom/android/settings_ex/fingerprint/v;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic acl:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/v;->acl:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/v;->acl:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->c(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;)V

    .line 176
    return-void
.end method
