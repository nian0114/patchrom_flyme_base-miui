.class Lcom/android/settings_ex/gY;
.super Ljava/lang/Object;
.source "ResetNetwork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic yl:Lcom/android/settings_ex/ResetNetwork;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ResetNetwork;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings_ex/gY;->yl:Lcom/android/settings_ex/ResetNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/gY;->yl:Lcom/android/settings_ex/ResetNetwork;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings_ex/ResetNetwork;->a(Lcom/android/settings_ex/ResetNetwork;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/gY;->yl:Lcom/android/settings_ex/ResetNetwork;

    invoke-static {v0}, Lcom/android/settings_ex/ResetNetwork;->a(Lcom/android/settings_ex/ResetNetwork;)V

    .line 126
    :cond_0
    return-void
.end method