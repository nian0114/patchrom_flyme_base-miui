.class Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "StorageWizardMoveProgress.java"


# instance fields
.field final synthetic XL:Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress$1;->XL:Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(IIJ)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress$1;->XL:Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;

    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;->a(Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const-string v0, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/16 v0, -0x64

    if-eq p2, v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress$1;->XL:Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress$1;->XL:Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;

    invoke-static {v1, p2}, Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;->a(Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress$1;->XL:Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;->finishAffinity()V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress$1;->XL:Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/deviceinfo/StorageWizardMoveProgress;->by(I)V

    goto :goto_0
.end method
