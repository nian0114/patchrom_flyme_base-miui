.class Lcom/android/settings_ex/fm;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic sT:Lcom/android/settings_ex/fk;

.field final synthetic sU:Lcom/android/settings_ex/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;Lcom/android/settings_ex/fk;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/settings_ex/fm;->sU:Lcom/android/settings_ex/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    iput-object p2, p0, Lcom/android/settings_ex/fm;->sT:Lcom/android/settings_ex/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/fm;->sT:Lcom/android/settings_ex/fk;

    invoke-virtual {v0}, Lcom/android/settings_ex/fk;->getCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fm;->sU:Lcom/android/settings_ex/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    iget-object v1, p0, Lcom/android/settings_ex/fm;->sT:Lcom/android/settings_ex/fk;

    invoke-virtual {v1, p3}, Lcom/android/settings_ex/fk;->W(I)Lcom/android/settings_ex/fj;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->a(Lcom/android/settings_ex/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;Lcom/android/settings_ex/fj;)V

    goto :goto_0
.end method
