.class Lcom/android/settings/fp;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic sW:Landroid/content/DialogInterface;

.field final synthetic sX:Lcom/android/settings/fo;


# direct methods
.method constructor <init>(Lcom/android/settings/fo;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/settings/fp;->sX:Lcom/android/settings/fo;

    iput-object p2, p0, Lcom/android/settings/fp;->sW:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 486
    new-instance v0, Lcom/android/settings/fi;

    iget-object v1, p0, Lcom/android/settings/fp;->sX:Lcom/android/settings/fo;

    iget-object v1, v1, Lcom/android/settings/fo;->sV:Lcom/android/settings/fj;

    iget-object v2, p0, Lcom/android/settings/fp;->sX:Lcom/android/settings/fo;

    iget-object v2, v2, Lcom/android/settings/fo;->sU:Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    invoke-virtual {v2}, Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/fi;-><init>(Lcom/android/settings/fj;Landroid/app/Activity;Lcom/android/settings/fh;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/fi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 487
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 488
    iget-object v0, p0, Lcom/android/settings/fp;->sW:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 489
    return-void
.end method
