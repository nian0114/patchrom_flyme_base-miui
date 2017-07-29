.class Lcom/android/settings_ex/ij;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

.field final synthetic Bw:Lcom/android/settings_ex/iq;

.field final synthetic Bx:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/iq;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/settings_ex/ij;->Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ex/ij;->Bw:Lcom/android/settings_ex/iq;

    iput-object p3, p0, Lcom/android/settings_ex/ij;->Bx:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 689
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/ij;->Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 690
    iget-object v1, p0, Lcom/android/settings_ex/ij;->Bw:Lcom/android/settings_ex/iq;

    invoke-static {v1}, Lcom/android/settings_ex/iq;->e(Lcom/android/settings_ex/iq;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ij;->Bw:Lcom/android/settings_ex/iq;

    invoke-static {v1, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->b(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/iq;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 691
    const v1, 0x1040013

    new-instance v2, Lcom/android/settings_ex/ik;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ik;-><init>(Lcom/android/settings_ex/ij;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 699
    const v1, 0x1040009

    new-instance v2, Lcom/android/settings_ex/il;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/il;-><init>(Lcom/android/settings_ex/ij;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 705
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 707
    return-void
.end method
