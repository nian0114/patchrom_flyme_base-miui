.class Lcom/android/settings_ex/cW;
.super Ljava/lang/Object;
.source "EncryptionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic mK:Lcom/android/settings_ex/EncryptionSettings;

.field final synthetic mL:Lcom/android/settings_ex/cV;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cV;Lcom/android/settings_ex/EncryptionSettings;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/settings_ex/cW;->mL:Lcom/android/settings_ex/cV;

    iput-object p2, p0, Lcom/android/settings_ex/cW;->mK:Lcom/android/settings_ex/EncryptionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 293
    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/cW;->mL:Lcom/android/settings_ex/cV;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/cV;->a(Lcom/android/settings_ex/cV;Z)Z

    .line 295
    monitor-exit p0

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
