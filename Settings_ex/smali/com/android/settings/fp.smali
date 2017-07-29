.class Lcom/android/settings_ex/fp;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic sW:Landroid/content/DialogInterface;

.field final synthetic sX:Lcom/android/settings_ex/fo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fo;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/settings_ex/fp;->sX:Lcom/android/settings_ex/fo;

    iput-object p2, p0, Lcom/android/settings_ex/fp;->sW:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 486
    new-instance v0, Lcom/android/settings_ex/fi;

    iget-object v1, p0, Lcom/android/settings_ex/fp;->sX:Lcom/android/settings_ex/fo;

    iget-object v1, v1, Lcom/android/settings_ex/fo;->sV:Lcom/android/settings_ex/fj;

    iget-object v2, p0, Lcom/android/settings_ex/fp;->sX:Lcom/android/settings_ex/fo;

    iget-object v2, v2, Lcom/android/settings_ex/fo;->sU:Lcom/android/settings_ex/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/fi;-><init>(Lcom/android/settings_ex/fj;Landroid/app/Activity;Lcom/android/settings_ex/fh;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 487
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 488
    iget-object v0, p0, Lcom/android/settings_ex/fp;->sW:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 489
    return-void
.end method
