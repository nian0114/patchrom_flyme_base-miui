.class public Lcom/android/settings_ex/SetFullBackupPassword;
.super Landroid/app/Activity;
.source "SetFullBackupPassword.java"


# instance fields
.field jc:Landroid/app/backup/IBackupManager;

.field yZ:Landroid/widget/TextView;

.field za:Landroid/widget/TextView;

.field zb:Landroid/widget/TextView;

.field zc:Landroid/widget/Button;

.field zd:Landroid/widget/Button;

.field ze:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lcom/android/settings_ex/hn;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/hn;-><init>(Lcom/android/settings_ex/SetFullBackupPassword;)V

    iput-object v0, p0, Lcom/android/settings_ex/SetFullBackupPassword;->ze:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ex/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/SetFullBackupPassword;->jc:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 103
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v0, "SetFullBackupPassword"

    const-string v1, "Unable to communicate with backup manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SetFullBackupPassword;->jc:Landroid/app/backup/IBackupManager;

    .line 85
    const v0, 0x7f040139

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SetFullBackupPassword;->setContentView(I)V

    .line 87
    const v0, 0x7f13029f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SetFullBackupPassword;->yZ:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f1302a1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SetFullBackupPassword;->za:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f1302a3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/SetFullBackupPassword;->zb:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f1302a4

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/SetFullBackupPassword;->zc:Landroid/widget/Button;

    .line 92
    const v0, 0x7f1302a5

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/SetFullBackupPassword;->zd:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/SetFullBackupPassword;->zc:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->ze:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/SetFullBackupPassword;->zd:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->ze:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method
