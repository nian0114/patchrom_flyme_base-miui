.class Lcom/android/settings_ex/gr;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ws:Lcom/android/settings_ex/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ProxySelector;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/settings_ex/gr;->ws:Lcom/android/settings_ex/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/gr;->ws:Lcom/android/settings_ex/ProxySelector;

    iget-object v0, v0, Lcom/android/settings_ex/ProxySelector;->wi:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/gr;->ws:Lcom/android/settings_ex/ProxySelector;

    iget-object v0, v0, Lcom/android/settings_ex/ProxySelector;->wj:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/gr;->ws:Lcom/android/settings_ex/ProxySelector;

    iget-object v0, v0, Lcom/android/settings_ex/ProxySelector;->wk:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method
