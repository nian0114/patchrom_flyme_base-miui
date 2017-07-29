.class Lcom/android/settings_ex/fingerprint/g;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic abM:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/g;->abM:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/g;->abM:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/g;->abM:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->abr:[B

    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->a(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;[B)V

    .line 348
    return-void
.end method
