.class Lcom/android/settings_ex/fingerprint/j;
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
    .line 369
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/j;->abM:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/j;->abM:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->c(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    .line 373
    return-void
.end method
