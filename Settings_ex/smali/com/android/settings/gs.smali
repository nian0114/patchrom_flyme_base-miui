.class Lcom/android/settings_ex/gs;
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
    .line 259
    iput-object p1, p0, Lcom/android/settings_ex/gs;->ws:Lcom/android/settings_ex/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings_ex/gs;->ws:Lcom/android/settings_ex/ProxySelector;

    invoke-virtual {v0}, Lcom/android/settings_ex/ProxySelector;->gC()V

    .line 263
    return-void
.end method
