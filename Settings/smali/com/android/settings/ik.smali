.class Lcom/android/settings_ex/ik;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic By:Lcom/android/settings_ex/ij;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ij;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/settings_ex/ik;->By:Lcom/android/settings_ex/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 694
    new-instance v0, Lcom/android/settings_ex/ip;

    iget-object v1, p0, Lcom/android/settings_ex/ik;->By:Lcom/android/settings_ex/ij;

    iget-object v1, v1, Lcom/android/settings_ex/ij;->Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iget-object v2, p0, Lcom/android/settings_ex/ik;->By:Lcom/android/settings_ex/ij;

    iget-object v2, v2, Lcom/android/settings_ex/ij;->Bw:Lcom/android/settings_ex/iq;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/ip;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/iq;Lcom/android/settings_ex/if;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ip;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 695
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 696
    iget-object v0, p0, Lcom/android/settings_ex/ik;->By:Lcom/android/settings_ex/ij;

    iget-object v0, v0, Lcom/android/settings_ex/ij;->Bx:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 697
    return-void
.end method
