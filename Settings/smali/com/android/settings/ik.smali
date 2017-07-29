.class Lcom/android/settings/ik;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic By:Lcom/android/settings/ij;


# direct methods
.method constructor <init>(Lcom/android/settings/ij;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/settings/ik;->By:Lcom/android/settings/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 694
    new-instance v0, Lcom/android/settings/ip;

    iget-object v1, p0, Lcom/android/settings/ik;->By:Lcom/android/settings/ij;

    iget-object v1, v1, Lcom/android/settings/ij;->Bt:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v2, p0, Lcom/android/settings/ik;->By:Lcom/android/settings/ij;

    iget-object v2, v2, Lcom/android/settings/ij;->Bw:Lcom/android/settings/iq;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/ip;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/iq;Lcom/android/settings/if;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/ip;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 695
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 696
    iget-object v0, p0, Lcom/android/settings/ik;->By:Lcom/android/settings/ij;

    iget-object v0, v0, Lcom/android/settings/ij;->Bx:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 697
    return-void
.end method
