.class Lcom/android/settings_ex/gA;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic yb:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/settings_ex/gA;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1032
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/gA;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->D(Lcom/android/settings_ex/RadioInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManagerEx;->getDataStateForSlot(I)I

    move-result v0

    .line 1033
    packed-switch v0, :pswitch_data_0

    .line 1044
    :goto_0
    :pswitch_0
    return v2

    .line 1035
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/gA;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->o(Lcom/android/settings_ex/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_0

    .line 1038
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/gA;->yb:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->o(Lcom/android/settings_ex/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_0

    .line 1033
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
