.class Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Oa:Landroid/content/ComponentName;

.field final synthetic Ob:Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment$1;->Ob:Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;

    iput-object p2, p0, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment$1;->Oa:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment$1;->Ob:Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->ly()Lcom/android/settings_ex/applications/RunningServiceDetails;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment$1;->Oa:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningServiceDetails;->c(Landroid/content/ComponentName;)Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    move-result-object v0

    .line 625
    if-eqz v0, :cond_0

    .line 626
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;->av(Z)V

    .line 628
    :cond_0
    return-void
.end method