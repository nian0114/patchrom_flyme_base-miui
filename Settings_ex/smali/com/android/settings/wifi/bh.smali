.class Lcom/android/settings_ex/wifi/bh;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aFr:Lcom/android/settings_ex/wifi/bd;

.field final synthetic aFs:I

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/bd;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings_ex/wifi/bh;->aFr:Lcom/android/settings_ex/wifi/bd;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/bh;->val$view:Landroid/widget/TextView;

    iput p3, p0, Lcom/android/settings_ex/wifi/bh;->aFs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings_ex/wifi/bh;->val$view:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings_ex/wifi/bh;->aFs:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    return-void
.end method