.class Lcom/android/settings_ex/bC;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ih:Lcom/android/settings_ex/DataUsageSummary;

.field final synthetic ii:Landroid/telephony/SubscriptionInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/android/settings_ex/bC;->ih:Lcom/android/settings_ex/DataUsageSummary;

    iput-object p2, p0, Lcom/android/settings_ex/bC;->ii:Landroid/telephony/SubscriptionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/settings_ex/bC;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->i(Lcom/android/settings_ex/DataUsageSummary;)Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/settings_ex/bC;->ii:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 1309
    iget-object v0, p0, Lcom/android/settings_ex/bC;->ih:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/bC;->ii:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->a(Lcom/android/settings_ex/DataUsageSummary;IZ)V

    .line 1310
    iget-object v0, p0, Lcom/android/settings_ex/bC;->ih:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/bC;->ii:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->a(Lcom/android/settings_ex/DataUsageSummary;Landroid/telephony/SubscriptionInfo;)V

    .line 1311
    iget-object v0, p0, Lcom/android/settings_ex/bC;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->b(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1312
    return-void
.end method
