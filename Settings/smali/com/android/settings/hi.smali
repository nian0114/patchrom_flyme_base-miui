.class Lcom/android/settings_ex/hi;
.super Landroid/os/AsyncTask;
.source "SearchUpdator.java"


# instance fields
.field final synthetic yI:Lcom/android/settings_ex/hf;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/hf;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings_ex/hi;->yI:Lcom/android/settings_ex/hf;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/hf;Lcom/android/settings_ex/hg;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/hi;-><init>(Lcom/android/settings_ex/hf;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 89
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 90
    iget-object v1, p0, Lcom/android/settings_ex/hi;->yI:Lcom/android/settings_ex/hf;

    invoke-static {v1}, Lcom/android/settings_ex/hf;->b(Lcom/android/settings_ex/hf;)I

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/settings_ex/hi;->yI:Lcom/android/settings_ex/hf;

    iget-object v2, p0, Lcom/android/settings_ex/hi;->yI:Lcom/android/settings_ex/hf;

    const-string v3, "00"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings_ex/hf;->b(Lcom/android/settings_ex/hf;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/hf;->a(Lcom/android/settings_ex/hf;I)I

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/hi;->yI:Lcom/android/settings_ex/hf;

    iget-object v2, p0, Lcom/android/settings_ex/hi;->yI:Lcom/android/settings_ex/hf;

    invoke-static {v2}, Lcom/android/settings_ex/hf;->a(Lcom/android/settings_ex/hf;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/settings_ex/hf;->a(Lcom/android/settings_ex/hf;Landroid/content/Context;Landroid/content/Intent;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/hi;->a([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
