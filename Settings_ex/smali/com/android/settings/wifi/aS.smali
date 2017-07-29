.class Lcom/android/settings_ex/wifi/aS;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aEM:Lcom/android/settings_ex/wifi/aR;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/aR;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings_ex/wifi/aS;->aEM:Lcom/android/settings_ex/wifi/aR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/wifi/aS;->aEM:Lcom/android/settings_ex/wifi/aR;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/aR;->aEL:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->b(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 204
    return-void
.end method
