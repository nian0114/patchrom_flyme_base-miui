.class public Lcom/android/settings_ex/display/k;
.super Lcom/android/settings_ex/ag;
.source "FontStatusController.java"


# instance fields
.field private Yo:Lcom/android/settings_ex/display/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ag;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ex/display/k;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/settings_ex/display/k;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ex/display/k;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/settings_ex/display/k;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ex/display/k;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/settings_ex/display/k;->cw:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ex/display/k;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/settings_ex/display/k;->cw:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ex/display/k;)Lcom/android/settings_ex/ah;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/settings_ex/display/k;->cx:Lcom/android/settings_ex/ah;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings_ex/display/k;)Lcom/android/settings_ex/ah;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/settings_ex/display/k;->cx:Lcom/android/settings_ex/ah;

    return-object v0
.end method


# virtual methods
.method public af()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ex/display/k;->cw:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/display/k;->cx:Lcom/android/settings_ex/ah;

    if-nez v0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/display/k;->Yo:Lcom/android/settings_ex/display/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/display/k;->Yo:Lcom/android/settings_ex/display/m;

    invoke-virtual {v0}, Lcom/android/settings_ex/display/m;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/display/k;->Yo:Lcom/android/settings_ex/display/m;

    invoke-virtual {v0}, Lcom/android/settings_ex/display/m;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 28
    :cond_2
    new-instance v0, Lcom/android/settings_ex/display/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/display/m;-><init>(Lcom/android/settings_ex/display/k;Lcom/android/settings_ex/display/l;)V

    iput-object v0, p0, Lcom/android/settings_ex/display/k;->Yo:Lcom/android/settings_ex/display/m;

    .line 29
    iget-object v0, p0, Lcom/android/settings_ex/display/k;->Yo:Lcom/android/settings_ex/display/m;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/display/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
