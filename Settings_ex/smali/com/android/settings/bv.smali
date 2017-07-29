.class Lcom/android/settings_ex/bv;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/widget/e;


# instance fields
.field final synthetic ih:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/android/settings_ex/bv;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bA()V
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/settings_ex/bv;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->A(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1552
    return-void
.end method

.method public bB()V
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/settings_ex/bv;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;->A(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1557
    return-void
.end method

.method public by()V
    .locals 4

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/settings_ex/bv;->ih:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/bv;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->n(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->wg()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->b(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 1541
    return-void
.end method

.method public bz()V
    .locals 4

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/settings_ex/bv;->ih:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/bv;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->n(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->wh()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->a(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 1546
    iget-object v0, p0, Lcom/android/settings_ex/bv;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->b(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1547
    return-void
.end method
