.class Lcom/android/settings_ex/gB;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic yb:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/settings_ex/gB;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/settings_ex/gB;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->o(Lcom/android/settings_ex/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/gB;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->E(Lcom/android/settings_ex/RadioInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1052
    return-void

    .line 1051
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
