.class Lcom/android/settings/fingerprint/F;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic acv:Lcom/android/settings/fingerprint/D;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/D;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/settings/fingerprint/F;->acv:Lcom/android/settings/fingerprint/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/settings/fingerprint/F;->acv:Lcom/android/settings/fingerprint/D;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/D;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/x;

    .line 650
    iget-object v1, p0, Lcom/android/settings/fingerprint/F;->acv:Lcom/android/settings/fingerprint/D;

    invoke-static {v1}, Lcom/android/settings/fingerprint/D;->a(Lcom/android/settings/fingerprint/D;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/x;->a(Lcom/android/settings/fingerprint/x;Landroid/hardware/fingerprint/Fingerprint;)V

    .line 651
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 652
    return-void
.end method
